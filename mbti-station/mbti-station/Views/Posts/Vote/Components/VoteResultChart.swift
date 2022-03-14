//
//  VoteResultChart.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct VoteResultChart: View {
    var voteResults: [VoteResult]
    var mbtiCountData: [String : Int] = [
        "I": 0,
        "E": 0,
        "N": 0,
        "S": 0,
        "F": 0,
        "T": 0,
        "P": 0,
        "J": 0,
    ]
    var mbtiPercentData: [String : CGFloat] = [
        "I,E": 0.0,
        "N,S": 0.0,
        "F,T": 0.0,
        "P,J": 0.0,

    ]
    
    var body: some View {
        VStack(spacing: 5) {
            Text("ESFP 유형")
                .font(.title2)
                .bold()
            ResultChart(lm: "I", lp: 0.2, rm: "E", rp: 0.8)
            ResultChart(lm: "N", lp: 0.4, rm: "S", rp: 0.6)
            ResultChart(lm: "F", lp: 0.6, rm: "T", rp: 0.4)
            ResultChart(lm: "P", lp: 0.9, rm: "J", rp: 0.1)
        }
    }
    
    mutating func ddd() {
        for voteResult in self.voteResults {
            for (mbti, count) in self.mbtiCountData {
                if (voteResult.mbti.contains(mbti)) {
                    self.mbtiCountData[mbti]! += 1
                }
            }
        }
    }
}

struct ResultChart: View {
    var lm: String
    var lp: CGFloat
    var rm: String
    var rp: CGFloat
    
    var cw: CGFloat = 100
    
    var body: some View {
        var lw: CGFloat = lp * cw
        var rw: CGFloat = rp * cw
        
        HStack(spacing: 5) {
            Text(lm)
                .frame(width:20)
                .font(.title2)
            HStack(spacing: 0) {
                Rectangle()
                    .frame(width: cw - lw, height: 15)
                    .foregroundColor(Color.init(UIColor.systemGray6))
                if (lw >= rw) {
                    Rectangle()
                        .frame(width: lw, height: 15)
                        .foregroundColor(.blue)
                } else {
                    Rectangle()
                        .frame(width: lw, height: 15)
                        .foregroundColor(.yellow)
                }
                
            }
            .frame(width: cw, alignment: .trailing)
            
            HStack(spacing: 0) {
                if (lw <= rw) {
                    Rectangle()
                        .frame(width: rw, height: 15)
                        .foregroundColor(.blue)
                } else {
                    Rectangle()
                        .frame(width: rw, height: 15)
                        .foregroundColor(.yellow)
                }
                
                Rectangle()
                    .frame(width: cw - rw, height: 15)
                    .foregroundColor(Color.init(UIColor.systemGray6))
            }
            .frame(width: cw, alignment: .leading)
            Text(rm)
                .frame(width:20)
                .font(.title2)
        }
    }
}

struct VoteResultChart_Previews: PreviewProvider {
    static var voteResults = ModelData().votes[0].options[0].results
    static var previews: some View {
        VoteResultChart(voteResults: voteResults)
    }
}
