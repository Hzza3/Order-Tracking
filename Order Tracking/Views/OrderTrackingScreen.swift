//
//  ContentView.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import SwiftUI

struct OrderTrackingScreen: View {
    
    @State private var viewModel = OrderTrackingViewModel()
    
    var body: some View {
        NavigationStack {
            if let trackingInfo = viewModel.trackingInformation {
                VStack() {
                    if let icon = trackingInfo.icon {
                        Image(icon)
                            .resizable()
                            .frame(width: 150, height: 200)
                    }
                    if let tracking = trackingInfo.tracking {
                        TrackingDetailsView(statusesInformation: tracking)
                    }
                    
                    Spacer()
                }
                .navigationTitle("Track your order")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar{
                    ToolbarItem(placement: .primaryAction) {
                        Toggle("Vertical", isOn: $viewModel.isVerticalView)
                            .toggleStyle(SwitchToggleStyle(tint: .blue))
                    }
                }
               
            } else {
                Text("No Tracking Information")
                    .navigationTitle("Track your order")
            }
        }
        .onAppear {
            viewModel.getTrackingInfo(isVertical: viewModel.isVerticalView)
        }
    }
}

#Preview {
    OrderTrackingScreen()
}
