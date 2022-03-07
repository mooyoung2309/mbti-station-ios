//
//  TitlePosting.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/07.
//

import SwiftUI

struct TitlePosting: View {
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

struct TitlePosting_Previews: PreviewProvider {
    @State static var titleText: String = ""
    static var previews: some View {
        TitlePosting(titleText: $titleText)
    }
}
