//
//  BalancePostingView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/07.
//

import SwiftUI

struct BalancePostingView: View {
    @State private var contextPlaceholderText = "본문을 입력해주세요."
    @State private var titleText: String = ""
    @State private var contexText: String = "본문을 입력해주세요."
    @State private var isFocused: Bool = false
    @State private var optionTexts: [String] = [
        "",
        "",
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                TitlePosting(titleText: $titleText)
                
                Divider()
                
                Text("두개의 선택지를 입력하세요.")
                    .font(.subheadline)
                    .padding(.horizontal, 10)
                OptionPosting(index: 1, optionText: $optionTexts[0])
                
                OptionPosting(index: 2, optionText: $optionTexts[1])
                
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

private struct TitlePosting: View {
    @Binding var titleText: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if titleText.isEmpty {
                Text("제목을 입력하세요.")
                    .font(.title2.bold())
                    .foregroundColor(.black)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
            }
            TextEditor(text: $titleText)
                .font(.title2.bold())
                .foregroundColor(.black)
                .frame(width: .infinity)
                .padding(.horizontal, 10)
                .opacity(titleText.isEmpty ? 0.25 : 1)
        }
    }
}

private struct OptionPosting: View {
    var index: Int
    @Binding var optionText: String
    
    var body: some View {
        HStack {
            Text(String(index))
                .font(.subheadline)
                .foregroundColor(Color.init(UIColor.black))
                .padding(10)
                .background(Color.init(UIColor.systemGray6))
                .cornerRadius(5)
            TextEditor(text: $optionText)
                .colorMultiply(Color.init(UIColor.systemGray6))
                .cornerRadius(5)
                .font(.body)
                .foregroundColor(.black)
                .frame(width: .infinity)
        }
        .padding(.horizontal, 10)
    }
}

struct BalancePostingView_Previews: PreviewProvider {
    static var previews: some View {
        BalancePostingView()
    }
}
