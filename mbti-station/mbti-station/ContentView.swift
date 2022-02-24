//
//  ContentView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PostList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
