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
                        Text("인기 밸런스 게임")
                            .bold()
                            .font(.title)
                        
                        Spacer()
                        Text("모두 보기")
                            .foregroundColor(.blue)
                    }
                    .padding(.horizontal, 20)
                    
                    HStack(alignment: .center, spacing: 30) {
                        BalanceCard()
                        BalanceCard()
                        BalanceCard()
                    }.modifier(ScrollingHStackModifier(items: 3, itemWidth: 300, itemSpacing: 10))
                        .frame(width: 100)
                }
                
            }
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
