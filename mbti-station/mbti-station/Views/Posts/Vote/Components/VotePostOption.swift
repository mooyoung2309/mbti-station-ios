//
//  VotePostOption.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/03.
//

import SwiftUI

struct VotePostOption: View {
    var options: [VoteOption]
    
    var body: some View {
        VStack {
            ForEach(votePost.options, id: \.self) {
                option in Button(action: {
                    
                }) {
                    HStack {
                        Text(option.name)
                            .font(.title3)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(5)
                    .border(.gray)
                }
            }
            VoteResultChart(voteResults: votePost.options[0].results)
        }
    }
}

struct VotePostOption_Previews: PreviewProvider {
    static var previews: some View {
        VotePostOption()
    }
}
