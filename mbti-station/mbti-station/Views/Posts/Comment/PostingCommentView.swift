//
//  PostingCommentView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/12.
//

import SwiftUI

struct PostingCommentView: View {
    var body: some View {
        ScrollView {
            CommentList()
        }
    }
}

struct PostingCommentView_Previews: PreviewProvider {
    static var previews: some View {
        PostingCommentView()
    }
}
