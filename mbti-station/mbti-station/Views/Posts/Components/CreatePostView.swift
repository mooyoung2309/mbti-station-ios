//
//  CreatePostView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/02.
//

import SwiftUI

struct CreatePostView: View {
    @State private var contextPlaceholderText = "본문을 입력해주세요."
    @State private var titleText: String = ""
    @State private var contexText: String = ""
    @State private var isFocused: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .leading) {
                    if self.titleText.isEmpty {
                        Text("제목을 입력해주세요.")
                            .font(.title3)
                            .bold()
                            .padding(20)
                    }
                    TextEditorView(string: $titleText, textEditorHeight: 30, font: Font.title3.weight(.bold), canSpace: false)
                        .opacity(self.titleText.isEmpty ? 0.25 : 1)
                }
                Divider()
                VStack(alignment: .leading) {
                    ZStack(alignment: .leading) {
                        if self.contexText.isEmpty {
                            Text("본문을 입력해주세요.")
                                .font(.body)
                                .padding(20)
                        }
                        TextEditorView(string: $contexText, textEditorHeight: 20, font: Font.body, canSpace: true)
                            .opacity(self.contexText.isEmpty ? 0.25 : 1)
                    }
                    Spacer()
                    
                }
                .frame(minHeight: 100)
                CreatePostRule()
            }
        }
        .navigationTitle("글 쓰기")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button("완료") {
                print("Help tapped!")
            }
        }
    }
}

struct CreatePostView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostView()
    }
}
