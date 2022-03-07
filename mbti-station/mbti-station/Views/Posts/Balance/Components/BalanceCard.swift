//
//  BalanceCard.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/05.
//

import SwiftUI

struct BalanceCard: View {
    @State var selection: Int = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack {
                Text("밸런스 게임")
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .padding(5)
                    .background(Color.init(UIColor.systemGray6))
                    .cornerRadius(5)
            }
            .padding(.horizontal, 10)
            
            Text("713 참여")
                .foregroundColor(Color.init(UIColor.darkGray))
                .font(.caption2)
                .padding(.top, 5)
            
            Text("둘 중 골라야 한다면 ?")
                .foregroundColor(.black)
                .bold()
                .lineLimit(2)
                .font(.body)
                .padding(5)
            HStack {
                VStack {
                    if selection == 1 {
                        Text("여자친구 아빠랑 목욕탕가기")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .frame(width: 110, height: 100)
                            .padding(5)
                            .background(
                                Rectangle()
                                    .fill(Color.init(UIColor.systemGray6))
                                    .cornerRadius(10)
                                    .shadow(color: Color.init(UIColor.systemGray5), radius: 10, x: 0, y: 10))
                    } else {
                        Text("여자친구 아빠랑 목욕탕가기")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .frame(width: 110, height: 100)
                            .padding(5)
                            .background(
                                Rectangle()
                                    .fill(Color.init(UIColor.white))
                                    .cornerRadius(10)
                                    .shadow(color: Color.init(UIColor.systemGray5), radius: 10, x: 0, y: 10))
                    }
                }
                .onTapGesture {
                    if selection == 1 {
                        selection = 0
                    } else {
                        selection = 1
                    }
                }
               
                Text("VS")
                    .font(.subheadline)
                VStack {
                    if selection == 2 {
                        Text("여자친구 엄마랑 필라테스 수업듣기")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.init(UIColor.black))
                            .font(.subheadline)
                            .frame(width: 110, height: 100)
                            .padding(5)
                            .background(
                                Rectangle()
                                    .fill(Color.init(UIColor.systemGray6))
                                    .cornerRadius(10)
                                    .shadow(color: Color.init(UIColor.systemGray5), radius: 10, x: 0, y: 10))
                    } else {
                        Text("여자친구 엄마랑 필라테스 수업듣기")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.init(UIColor.black))
                            .font(.subheadline)
                            .frame(width: 110, height: 100)
                            .padding(5)
                            .background(
                                Rectangle()
                                    .fill(Color.init(UIColor.white))
                                    .cornerRadius(10)
                                    .shadow(color: Color.init(UIColor.systemGray5), radius: 10, x: 0, y: 10))
                    }
                    
                }
                .onTapGesture {
                    if selection == 2 {
                        selection = 0
                    } else {
                        selection = 2
                    }
                }
            }
            .padding(10)
        }
        .frame(width: 300, height: 230, alignment: .center)
        .background(
            Rectangle()
                .fill(Color.init(UIColor.white))
                .cornerRadius(20)
                .shadow(color: Color.init(UIColor.systemGray5), radius: 10, x: 0, y: 10)
        )
    }
}

struct BalanceCard_Previews: PreviewProvider {
    static var previews: some View {
        BalanceCard()
    }
}
