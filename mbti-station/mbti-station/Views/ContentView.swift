//
//  ContentView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomePage()
            .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                  }
            PostPage()
            .tabItem {
                    Image(systemName: "doc.plaintext.fill")
                    Text("게시판")
                  }
            HomePage()
            .tabItem {
                    Image(systemName: "moon.stars.fill")
                    Text("관심")
                  }
            ProfilePage()
            .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("내정보")
                  }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
