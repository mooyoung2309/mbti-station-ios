//
//  CommentList.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct CommentList: View {
    var body: some View {
        VStack(spacing: 0) {
            CommentRow()
            CommentRow()
            CommentRow()

            CommentRow()
        }
        
    }
}

struct CommentList_Previews: PreviewProvider {
    static var previews: some View {
        CommentList()
    }
}
