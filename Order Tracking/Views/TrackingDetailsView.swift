//
//  TrackingDetailsView.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import SwiftUI

struct TrackingDetailsView: View {
    let type: String
    
    var body: some View {
        
        switch type {
        case "v":
            buildVerticalStatusView()
        default:
            buildHorizontalStatusView()
                
        }
    }
}

extension TrackingDetailsView {
    @ViewBuilder
    func buildVerticalStatusView() -> some View {
        VStack(spacing: 0) {
            
            HStack(alignment: .top, spacing: 30) {
                StatusTrackView(type: type, isLast: false, icon: "clock", iconColor: .blue, trackColor: .blue)
                StatusDetailsView(status: "Order Recieved", date: "09:10 AM, 9 May 2018", showDate: true)
            }
            
            HStack(alignment: .top, spacing: 30) {
                StatusTrackView(type: type, isLast: false, icon: "map", iconColor: .blue, trackColor: .blue)
                StatusDetailsView(status: "On the way", date: "09:15 AM, 9 May 2018", showDate: true)
            }
            
            HStack(alignment: .top, spacing: 30) {
                StatusTrackView(type: type, isLast: true, icon: "shippingbox", iconColor: .blue, trackColor: .blue)
                StatusDetailsView(status: "Delivered", date: "Finish time in 3 min    ", showDate: true)
            }
        }
    }
    
    @ViewBuilder
    func buildHorizontalStatusView() -> some View {
            
            VStack(alignment: .center, spacing: 5) {
                DeliveryInfoView(address: "Flat no: 35093, A - Wing Hianadani Gardens Near I.I.T Powai, Powai Area Mumbaim Maharashtra", progress: 0.6, estimatedDeliveryTime: 3)
                HStack(spacing: 0) {
                    StatusTrackView(type: type, isLast: false, icon: "checkmark.circle.fill", iconColor: .red, trackColor: .gray.opacity(0.5))
                    StatusTrackView(type: type, isLast: false, icon: "circle", iconColor: .gray.opacity(0.5), trackColor: .gray.opacity(0.5))
                    StatusTrackView(type: type, isLast: true, icon: "circle", iconColor: .gray.opacity(0.5), trackColor: .gray.opacity(0.5))
                }
                StatusDetailsView(status: "Delivered", date: "Finish time in 3 min    ", showDate: false)
            }
            .border(.gray.opacity(0.4))
            .padding(.horizontal, 40)
        
    }
 
    
}

#Preview {
    TrackingDetailsView(type: "v")
}
