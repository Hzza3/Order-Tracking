//
//  TrackingInformation.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import Foundation

struct TrackingInformation: Codable {
    let title: String
    let icon: String?
    let tracking: StatusTracking?
}
