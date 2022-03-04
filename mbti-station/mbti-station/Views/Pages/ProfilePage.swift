//
//  ProfilePage.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .imageScale(.large)
                            .frame(width: 50)
                            .font(.largeTitle)
                        VStack(alignment: .leading) {
                            Text("INFP")
                                .bold()
                                .font(.title3)
                            Text("익명")
                                .font(.body)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .font(.title3)
                    }
                    .padding(.horizontal, 10)
                    
                    CustomDivider(height: 10)
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "pencil")
                                .imageScale(.medium)
                                .font(.title3)
                                .padding(.trailing, 10)
                                .frame(width: 50)
                                .foregroundColor(.blue)
                            Text("내가 쓴 글")
                                .foregroundColor(.black)
                                .font(.title3)
                        }
                    }
                    .padding(.horizontal, 10)
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "heart.fill")
                                .imageScale(.medium)
                                .font(.title3)
                                .padding(.trailing, 10)
                                .frame(width: 50)
                                .foregroundColor(.red)
                            Text("공감 누른 글")
                                .foregroundColor(.black)
                                .font(.title3)
                        }
                    }
                    .padding(.horizontal, 10)
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "bubble.left.fill")
                                .imageScale(.medium)
                                .font(.title3)
                                .padding(.trailing, 10)
                                .frame(width: 50)
                                .foregroundColor(.green)
                            Text("댓글 단 글")
                                .foregroundColor(.black)
                                .font(.title3)
                        }
                    }
                    .padding(.horizontal, 10)
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "star.fill")
                                .imageScale(.medium)
                                .font(.title3)
                                .padding(.trailing, 10)
                                .frame(width: 50)
                                .foregroundColor(.yellow)
                            Text("관심 누른 글")
                                .font(.title3)
                                .foregroundColor(.black)
                        }
                    }
                    
                    .padding(.horizontal, 10)
                }
                
            }
            .navigationTitle("내정보")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
