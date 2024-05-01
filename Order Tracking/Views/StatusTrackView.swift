//
//  StatusTrackView.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import SwiftUI

struct StatusTrackView: View {
    
    let type: String
    let isLast: Bool
    let icon: String
    let iconColor: Color
    let trackColor: Color
    
    var body: some View {
        if type == "vertical" {
            buildVerticalStatusTrack()
        } else {
            buildHorizontalStatusTrack()
        }
    }
}

extension StatusTrackView {
    @ViewBuilder
    func buildVerticalStatusTrack() -> some View {
        VStack(spacing: 0.0) {
            Image(systemName: icon)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.blue)
            VStack(spacing: 3.0) {
                ForEach((1...7), id: \.self) {_ in
                    Rectangle()
                        .foregroundColor(trackColor)
                        .frame(width: 3, height: 10)
                }
            }.opacity(isLast ? 0.0 : 1.0)
        }
    }
    
    @ViewBuilder
    func buildHorizontalStatusTrack() -> some View {
        HStack(spacing: 0.0) {
            
            Image(systemName: icon)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(iconColor)
            if !isLast {
                Rectangle()
                    .frame(width: 75, height: 3)
                    .foregroundColor(trackColor)
            }
        }
    }
}



#Preview {
    StatusTrackView(type: "vertical", isLast: false, icon: "clock.fill", iconColor: .red, trackColor: .blue)
}


