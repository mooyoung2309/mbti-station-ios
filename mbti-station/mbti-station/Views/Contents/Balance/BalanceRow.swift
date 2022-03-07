//
//  BalanceRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/04.
//

import SwiftUI

struct BalanceRow: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("밸런스 게임")
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .padding(5)
                    .background(Color.init(UIColor.systemGray5))
                    .cornerRadius(5)
            }
            .padding(.horizontal, 10)
            
            Text("둘 중 골라야 한다면 ?")
                .foregroundColor(.black)
                .lineLimit(2)
                .font(.title3)
                .padding(.horizontal, 10)
            
            HStack {
                Text("A")
                    .font(.body)
                    .foregroundColor(Color.init(UIColor.black))
                    .padding(5)
                    .background(Color.init(UIColor.systemGray6))
                    .cornerRadius(5)
                Text("여자친구 아빠랑 목욕탕가기")
                    .font(.body)
                    .foregroundColor(Color.init(UIColor.black))
                    .padding(5)
                    .background(Color.init(UIColor.systemGray6))
                    .cornerRadius(5)
            }
            .padding(.horizontal, 10)
            
            HStack {
                Text("B")
                    .font(.body)
                    .foregroundColor(Color.init(UIColor.black))
                    .padding(5)
                    .background(Color.init(UIColor.systemGray6))
                    .cornerRadius(5)
                Text("여자친구 엄마랑 필라테스 수업듣기")
                    .font(.body)
                    .foregroundColor(Color.init(UIColor.black))
                    .lineLimit(1)
                    .padding(5)
                    .background(Color.init(UIColor.systemGray6))
                    .cornerRadius(5)
            }
            .padding(.horizontal, 10)
            
            HStack(alignment: .center, spacing: 5) {
                Text("INFP" + " " + "익명")
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.caption)
                Spacer()
                Text("5분전")
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.caption)
            }
            .padding(.horizontal, 10)
            
            Divider()
                .frame(height: 1)
            
            HStack {
                HStack(spacing: 2) {
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                        .imageScale(.medium)
                    Text("공감 " + String(14))
                        .foregroundColor(.black)
                        .font(.body)
                }
                HStack(spacing: 2) {
                    Image(systemName: "bubble.left")
                        .foregroundColor(.black)
                        .imageScale(.medium)
                    Text("댓글 " + String(16))
                        .foregroundColor(.black)
                        .font(.body)
                }
            }
            .padding(.horizontal, 10)
        }
    }
}

struct BalanceRow_Previews: PreviewProvider {
    static var previews: some View {
        BalanceRow()
    }
}
