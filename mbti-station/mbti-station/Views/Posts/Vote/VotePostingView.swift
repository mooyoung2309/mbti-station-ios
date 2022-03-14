//
//  VotePostingView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/07.
//

import SwiftUI

struct VotePostingView: View {
    @State private var titleText: String = ""
    @State private var optionCount: Int = 2
    
    @State private var optionTexts: [String] = [
        "",
        "",
        "",
        "",
        "",
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                TitlePosting(titleText: $titleText)
                
                Divider()
                
                Text("여러개의 선택지를 입력하세요.")
                    .font(.subheadline)
                    .padding(.horizontal, 10)
                
                ForEach(0..<optionCount, id: \.self) {
                    i in OptionPosting(index: i + 1, optionText: $optionTexts[i])
                }
                
                
                HStack {
                    if optionCount < 5 {
                        Button(action: {
                            if optionCount < optionTexts.count {
                                optionCount += 1
                            }
                            print("추가됨 인덱스: \(optionCount)")
                        }) {
                            Image(systemName: "plus.circle")
                                .foregroundColor(Color.init(UIColor.systemBlue))
                                .font(.title2)
                        }
                    }
                    
                    if optionCount > 2 {
                        Button(action: {
                            if optionCount > 2 {
                                optionCount -= 1
                            }
                        }) {
                            Image(systemName: "minus.circle")
                                .foregroundColor(Color.init(UIColor.systemRed))
                                .font(.title2)
                        }
                    }
                }
                
                .padding(10)
                
                CreatePostRule()
            }
        }
        .navigationTitle(Text("글 쓰기"))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            EditButton()
        }
    }
    
    func removeOptiontexts(at offsets: IndexSet) {
        optionTexts.remove(atOffsets: offsets)
    }
}

struct VotePostingView_Previews: PreviewProvider {
    static var previews: some View {
        VotePostingView()
    }
}
