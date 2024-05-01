//
//  TrackingDetailsView.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import SwiftUI

struct TrackingDetailsView: View {
    let statusesInformation: StatusTracking
    @State var remainingTime: String?
    
    var body: some View {
        
        switch statusesInformation.type {
        case "vertical":
            buildVerticalStatusView()
        default:
            buildHorizontalStatusView()
                .onAppear {
                    remainingTime = getRemainingDeliveryTime() ?? ""
                }
        }
    }
}

extension TrackingDetailsView {
    
    @ViewBuilder
    func buildVerticalStatusView() -> some View {
        
        VStack(spacing: 0) {
            if let timeline = statusesInformation.timeLine {
                ForEach(timeline, id: \.self) { status in
                    HStack(alignment: .top, spacing: 30) {
                        StatusTrackView(
                            type: statusesInformation.type,
                            isLast: status == timeline.last,
                            icon: status.icon,
                            iconColor: Color(wordName: status.iconColor),
                            trackColor: Color(wordName: status.trackColor)
                        )
                        StatusDetailsView(
                            status: status.status,
                            date: status.date,
                            showDate: true
                        )
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    func buildHorizontalStatusView() -> some View {
        
        VStack(alignment: .center, spacing: 5) {
            if let deliveryInfo = statusesInformation.delivery {
                DeliveryInfoView(
                    address: deliveryInfo.addrress,
                    progress: 0.6,
                    remainingDeliveryTime: remainingTime
                )
            }
            
            if let timeline = statusesInformation.timeLine {
                HStack(spacing: 0) {
                    
                    ForEach(timeline, id: \.self) { status in
                        StatusTrackView(
                            type: statusesInformation.type,
                            isLast: status == timeline.last,
                            icon: status.icon,
                            iconColor: Color(wordName: status.iconColor),
                            trackColor: Color(wordName: status.trackColor)
                        )
                    }
                    
                }
              
                StatusDetailsView(status: timeline.first{$0.isCurrent == true}?.status ?? "",
                                  date: "",
                                  showDate: false
                )
               
            }
        }
        .border(.gray.opacity(0.4))
        .padding(.horizontal, 40)
    }
    
    func getRemainingDeliveryTime() -> String? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:SSxxxxx"
        guard let deliveryDateString = statusesInformation.delivery?.date else { return nil }
        guard let isoDeliveryDate = formatter.date(from: deliveryDateString) else { return nil }
        let remainingTime = isoDeliveryDate - Date()
        var remainigTimeString = ""
        if let month = remainingTime.month, month > 0 {
            remainigTimeString += "\(month) Months, "
        }
        if let days = remainingTime.day, days > 0 {
            remainigTimeString += "\(days) Days, "
        }
        if let hours = remainingTime.hour, hours > 0 {
            remainigTimeString += "\(hours) Hours, "
        }
        if let mins = remainingTime.minute, mins > 0 {
            remainigTimeString += "\(mins) Mins"
        }
        return remainigTimeString
    }
    
    
}

//#Preview {
//    TrackingDetailsView(type: "v")
//}
