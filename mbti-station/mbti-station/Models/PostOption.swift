//
//  PostOption.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import Foundation
import SwiftUI

struct PostOption: Hashable, Identifiable {
    var id: Int
    var name: String
    
    var imageName: String
    var image: Image {
        Image(systemName: imageName)
    }
}
