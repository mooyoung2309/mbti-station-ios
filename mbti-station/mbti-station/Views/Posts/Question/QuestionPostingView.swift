//
//  QuestionPostingView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/07.
//

import SwiftUI

struct QuestionPostingView: View {
    @State private var titleText: String = ""
    @State private var contextText: String = ""
    @State private var optionTexts: [String] = [
        "",
        "",
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                TitlePosting(titleText: $titleText)
                
                Divider()
                
                ContextPosting(contextText: $contextText)
                
                CreatePostRule()
            }
        }
        .navigationTitle(Text("글 쓰기"))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button("완료") {
                print("Help tapped!")
            }
        }
    }
}

private struct ContextPosting: View {
    @Binding var contextText: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if contextText.isEmpty {
                VStack {
                    Text("본문을 입력하세요.")
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                    Spacer()
                }
            }
            TextEditor(text: $contextText)
                .font(.body)
                .foregroundColor(.black)
                .frame(width: .infinity, height: 300)
                .padding(.horizontal, 10)
                .opacity(contextText.isEmpty ? 0.25 : 1)
        }
    }
}

struct QuestionPostingView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionPostingView()
    }
}
