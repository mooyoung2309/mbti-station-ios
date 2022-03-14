//
//  PostingView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/07.
//

import SwiftUI

struct PostingView: View {
    @State var selection: String = "✏️ 질문"
    var options: [String] = [
        "✏️ 질문",
        "📦 투표",
        "🕹 밸런스 게임"
    ]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    ForEach(options, id: \.self) {
                        option in PostingViewOption(selection: $selection, option: option)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 20)
                if selection == "✏️ 질문" {
                    QuestionPostingView()
                } else if (selection == "📦 투표") {
                    VotePostingView()
                }
                else if (selection == "🕹 밸런스 게임") {
                    BalancePosting()
                }
            }
        }
    }
}

private struct PostingViewOption: View {
    @Binding var selection: String
    var option: String
    
    var body: some View {
        Button(action: {
            selection = option
        }) {
            if option == selection {
                Text(option)
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.systemBlue))
                    .padding(10)
                    .background(Color.init(UIColor.systemGray6))
                    .cornerRadius(20)
            } else {
                Text(option)
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.black))
                    .padding(10)
                    .background(Color.init(UIColor.systemGray6))
                    .cornerRadius(20)
            }
        }
    }
}

struct PostingView_Previews: PreviewProvider {
    static var previews: some View {
        PostingView()
    }
}
