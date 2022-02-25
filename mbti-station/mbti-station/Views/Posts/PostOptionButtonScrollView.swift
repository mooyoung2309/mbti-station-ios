//
//  PostOptionButtonScrollView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct PostOptionButtonScrollView: View {
    var postOptions : [PostOption]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<postOptions.count) {
                    i in _postOptionButton(postOption: postOptions[i])
                }
            }
        }
    }
}

struct _postOptionButton: View {
    var postOption : PostOption
    
    var body: some View {
        Button(action:{print("Button2")}){
            VStack(spacing: 3) {
                postOption.image
                    .imageScale(.large)
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
                Text(postOption.name)
                    .foregroundColor(.black)
                    .font(.body)
            }
            
        }
    }
}

struct PostOptionButtonScrollView_Previews: PreviewProvider {
    static var postOptions = ModelData().postOptions
    static var previews: some View {
        PostOptionButtonScrollView(postOptions: postOptions)
    }
}
