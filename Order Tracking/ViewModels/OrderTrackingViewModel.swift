//
//  OrderTraackingViewModel.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import Foundation

final class OrderTrackingViewModel: ObservableObject {
    
    @Published var trackingInformation: TrackingInformation? {
        didSet {
            currentStatus = trackingInformation?.tracking?.timeLine?.first {$0.isCurrent == true}
        }
    }
    
    @Published var currentStatus: StatusTrackingItem?
    
    func getTrackingInfo() {
        trackingInformation = NetworkManager.shared.getTrackingData(forName: "HorizontalDesignConfigurations")
    }
   

    
}	

