//
//  PostSelection.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/15.
//

import SwiftUI

struct PostTypeBtns: View {
    @Binding var selection: String
    var name: String
    
    var body: some View {
        Button(action: {
            selection = name
        }) {
            if name == selection {
                Text(name)
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.systemBlue))
                    .padding(10)
                    .background(Color.init(UIColor.systemGray6))
                    .cornerRadius(20)
            } else {
                Text(name)
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.black))
                    .padding(10)
                    .background(Color.init(UIColor.systemGray6))
                    .cornerRadius(20)
            }
        }
    }
}

struct PostTypeBtns_Previews: PreviewProvider {
    @State static var selection: String = ""
    static var name: String = "어쩌구"
    
    static var previews: some View {
        PostTypeBtns(selection: $selection, name: name)
    }
}
