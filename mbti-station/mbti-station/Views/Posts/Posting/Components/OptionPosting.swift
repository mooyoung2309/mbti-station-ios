//
//  OptionPosting.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/07.
//

import SwiftUI

struct OptionPosting: View {
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

struct OptionPosting_Previews: PreviewProvider {
    static var index = 1
    @State static var optionText: String = ""
    static var previews: some View {
        OptionPosting(index: index, optionText: $optionText)
    }
}
