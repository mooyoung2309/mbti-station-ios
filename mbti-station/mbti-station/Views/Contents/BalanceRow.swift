//
//  BalanceRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/04.
//

import SwiftUI

struct BalanceRow: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack {
                Text("밸런스 게임")
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .padding(5)
                    .background(Color.init(UIColor.systemGray5))
                    .cornerRadius(5)
            }
            .padding(.horizontal, 10)
            
            Text("713 참여")
                .foregroundColor(Color.init(UIColor.darkGray))
                .font(.caption2)
                .padding(.top, 10)
            
            Text("둘 중 골라야 한다면 ?")
                .foregroundColor(.black)
                .lineLimit(2)
                .font(.title3)
                .padding(10)
            HStack {
                VStack {
                    Text("여자친구 아빠랑 목욕탕가기")
                        .multilineTextAlignment(.center)
                        .frame(width: 160)
                }
                Text("VS")
                VStack {
                    Text("여자친구 엄마랑 필라테스 수업듣기")
                        .multilineTextAlignment(.center)
                        .frame(width: 160)
                }
            }
            .padding(10)
            HStack(alignment: .center, spacing: 5) {
                Text("INFP" + " " + "익명")
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.caption)
                Spacer()
                Text("5분전")
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.caption)
            }
            .padding(10)
            Divider()
            HStack {
                HStack(spacing: 2) {
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                        .imageScale(.medium)
                    Text("공감 " + String(13))
                        .foregroundColor(.black)
                        .font(.body)
                }
                HStack(spacing: 2) {
                    Image(systemName: "bubble.left")
                        .foregroundColor(.black)
                        .imageScale(.medium)
                    Text("댓글 " + String(15))
                        .foregroundColor(.black)
                        .font(.body)
                }
                Spacer()
            }
            .padding(10)
        }
        .frame(width: 300, height: 250, alignment: .center)
        .background(
            Rectangle()
                .fill(Color.white)
                .cornerRadius(20)
        )
    }
}

struct BalanceRow_Previews: PreviewProvider {
    static var previews: some View {
        BalanceRow()
    }
}
