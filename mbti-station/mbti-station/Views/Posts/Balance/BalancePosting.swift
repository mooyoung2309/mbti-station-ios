//
//  BalancePostingView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/07.
//

import SwiftUI

struct BalancePosting: View {
    @State private var titleText: String = ""
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

struct BalancePosting_Previews: PreviewProvider {
    static var previews: some View {
        BalancePosting()
    }
}
