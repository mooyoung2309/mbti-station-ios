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
    var firstOption: VoteOption
    var secondOption: VoteOption
}
