//
//  Balance.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/14.
//

import Foundation

struct Balance: Hashable, Codable, Identifiable {
    var id: Int
    var post: Post
    var firstOption: BalanceOption
    var secondOption: BalanceOption
}

struct BalanceOption: Hashable, Codable {
    var id: Int
    var name: String
    var results: [BalanceResult]
}

struct BalanceResult: Hashable, Codable {
    var mbti: String
    var count: Int
}
