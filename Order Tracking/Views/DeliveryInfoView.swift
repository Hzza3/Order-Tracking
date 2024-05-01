//
//  DeliveryInfoView.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import SwiftUI

struct DeliveryInfoView: View {
    let address: String
    let progress: Double
    let remainingDeliveryTime: String?
    
    var body: some View {
        HStack {
            Text(address)
                .font(.caption)
                .fontWeight(.semibold)
                .lineLimit(nil)
            Spacer()
            CircularProgressView(progress: progress, eta: remainingDeliveryTime)
                .frame(width: 50, height: 50)
        }
        .padding(.all, 20)
    }
}

#Preview {
    DeliveryInfoView(address: "Flat no: 35093, A - Wing Hianadani Gardens Near I.I.T Powai, Powai Area Mumbaim Maharashtra", progress: 0.4, remainingDeliveryTime: "")
}
