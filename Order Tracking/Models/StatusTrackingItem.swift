//
//  StatusTrackingItem.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import Foundation

struct StatusTrackingItem: Codable, Hashable {
    let status: String
    let icon: String
    let iconColor: String
    let trackColor: String
    let date: String
    let isCurrent: Bool
}
