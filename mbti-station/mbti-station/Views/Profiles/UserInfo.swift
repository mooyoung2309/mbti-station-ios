//
//  UserInfo.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct UserInfo: View {
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.fill").imageScale(.large).font(.largeTitle)
            VStack(alignment:.leading) {
                Text("INFP").font(.title3)
                Text("익명")
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.body)
            }
            Spacer()
        }
    }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
    }
}
