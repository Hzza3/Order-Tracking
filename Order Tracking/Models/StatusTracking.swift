//
//  StatusTracking.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import Foundation

struct StatusTracking: Codable {
    let type: String
    let timeLine: [StatusTrackingItem]?
    let delivery: DeliveryInformation?

    enum CodingKeys: String, CodingKey {
        case type
        case timeLine = "time_line"
        case delivery
    }
}
