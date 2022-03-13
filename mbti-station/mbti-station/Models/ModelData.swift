//
//  ModelData.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import Foundation
import Combine
import SwiftUI

final class ModelData: ObservableObject {
    @Published var posts: [Post] = load("PostData.json")
//    @Published var editorPosts: [Post] = load("EditorPostData.json")
    @Published var balances: [Balance] = load("BalanceData.json")
    @Published var questionPosts: [QuestionPost] = load("QuestionPostData.json")
    @Published var votePosts: [VotePost] = load("VotePostData.json")
    @Published var postOptions: [PostOption] = [
        PostOption(id: 0, name: "전체", imageName: "a.circle.fill"),
        PostOption(id: 1, name: "질문", imageName: "q.circle.fill"),
        PostOption(id: 2, name: "투표", imageName: "archivebox.circle.fill"),
    ]
    @Published var postTypeData: [String: Image] = [
        "전체": Image(systemName: "a.circle.fill"),
        "질문": Image(systemName: "q.circle.fill"),
        "투표": Image(systemName: "archivebox.circle.fill"),
    ]
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in  main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load\(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
