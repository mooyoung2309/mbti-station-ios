//
//  BalanceRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/04.
//

import SwiftUI

struct BalanceRow: View {
    var balance: Balance
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            PostRowHeader(post: balance.post)
            VStack(alignment: .leading, spacing: 5) {
                PostRowOption(id: 1, name: balance.firstOption.name)
                PostRowOption(id: 2, name: balance.secondOption.name)
            }
            PostRowBottom(post: balance.post)
        }
    }
}

struct BalanceRow_Previews: PreviewProvider {
    static var balance = ModelData().balances[0]
    static var previews: some View {
        BalanceRow(balance: balance)
    }
}
