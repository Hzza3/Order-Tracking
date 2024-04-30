//
//  StatusDetailsView.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import SwiftUI

struct StatusDetailsView: View {
    
    let status: String
    let date: String
    
    var body: some View {
        VStack(alignment: .leading,spacing: 3) {
            Text(status)
                .font(.title3)
                .fontWeight(.light)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            HStack {
                Image(systemName: "clock")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 16, height: 16)
                Text(date)
                    .font(.caption)
                    .fontWeight(.thin)
            }
        }
    }
}

#Preview {
    StatusDetailsView(status: "Order Recived", date: "9:10 Am, 9 May 2018")
}
