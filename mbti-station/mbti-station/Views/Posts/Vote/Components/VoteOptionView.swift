//
//  VoteOptionView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/03.
//

import SwiftUI

struct VoteOptionView: View {
    var options: [VoteOption]
    
    var body: some View {
        VStack {
            ForEach(options, id: \.self) {
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
        }
        .padding(.horizontal, 10)
    }
}

struct VoteOptionView_Previews: PreviewProvider {
    static var options = ModelData().votes[0].options
    static var previews: some View {
        VoteOptionView(options: options)
    }
}
