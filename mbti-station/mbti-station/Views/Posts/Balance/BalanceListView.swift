//
//  BalanceListView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/07.
//

import SwiftUI

struct BalanceListView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<10) {
                i in VStack {
//                    BalanceRow()
                    CustomDivider(height: 10)
                }
            }
        }
    }
}

struct BalanceListView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceListView()
    }
}
