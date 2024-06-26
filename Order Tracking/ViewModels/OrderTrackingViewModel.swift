//
//  OrderTraackingViewModel.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import Foundation

@Observable
final class OrderTrackingViewModel {
    
    var trackingInformation: TrackingInformation? {
        didSet {
            currentStatus = trackingInformation?.tracking?.timeLine?.first {$0.isCurrent == true}
        }
    }
    
    var currentStatus: StatusTrackingItem?
    
    var isVerticalView: Bool = true {
        didSet {
            getTrackingInfo(isVertical: isVerticalView)
        }
    }
    
    func getTrackingInfo(isVertical: Bool) {
        let horizontal = "HorizontalDesignConfigurations"
        let vertical = "VerticalDesignConfigurations"
        trackingInformation = NetworkManager.shared.getTrackingData(forName: isVertical ? vertical : horizontal)
    }
    
}	

