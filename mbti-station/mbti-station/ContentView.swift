//
//  ContentView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                Section(header: HStack {
                    Text("인기 게시글")
                        .bold()
                        .foregroundColor(.black)
                        .font(.title2)
                    Spacer()
                    
                    Text("더보기")
                        .bold()
                        .foregroundColor(.blue)
                })
                        {
                    Text("안녕하세요")
                    Text("안녕안녕")
                    Text("안녕안녕안녕")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
