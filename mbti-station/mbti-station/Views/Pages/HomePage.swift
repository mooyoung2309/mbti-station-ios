//
//  HomePage.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack() {
                    HStack () {
                        Text("밸런스 게임")
                            .bold()
                            .font(.title)
                        Spacer()
                    }
                    .padding(10)
                    
                    HStack(alignment: .center, spacing: 30) {
                        BalanceRow()
                        BalanceRow()
                        BalanceRow()
                    }.modifier(ScrollingHStackModifier(items: 3, itemWidth: 300, itemSpacing: 10))
                        .frame(width: 100)
                }
                
                VStack() {
                    HStack () {
                        Text("밸런스 게임")
                            .bold()
                            .font(.title)
                        Spacer()
                    }
                    .padding(10)
                    
                    HStack(alignment: .center, spacing: 30) {
                        BalanceRow()
                        BalanceRow()
                        BalanceRow()
                    }.modifier(ScrollingHStackModifier(items: 3, itemWidth: 300, itemSpacing: 10))
                        .frame(width: 100)
                }
            }
            .background(Color.init(UIColor.systemGray6))
            .navigationTitle("홈")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
