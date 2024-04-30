//
//  ContentView.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import SwiftUI

struct OrderTrackingScreen: View {
    var body: some View {
        NavigationStack {
            VStack() {
                Image("fries")
                    .resizable()
                    .frame(width: 150, height: 200)
                TrackingDetailsView(type: "h")
                Spacer()
            }
            .navigationTitle("Track your order")
            
        }
    }
}

#Preview {
    OrderTrackingScreen()
}
