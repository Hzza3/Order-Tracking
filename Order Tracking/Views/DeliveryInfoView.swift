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
    let estimatedDeliveryTime: Int
    
    var body: some View {
        HStack {
            Text(address)
                .font(.caption)
                .fontWeight(.semibold)
            Spacer(minLength: 30)
            CircularProgressView(progress: progress, eta: estimatedDeliveryTime)
                .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    DeliveryInfoView(address: "Flat no: 35093, A - Wing Hianadani Gardens Near I.I.T Powai, Powai Area Mumbaim Maharashtra", progress: 0.4, estimatedDeliveryTime: 15)
}
