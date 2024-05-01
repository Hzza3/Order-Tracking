//
//  Colors.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import Foundation
import SwiftUI

extension Color {
    
    init(wordName: String) {
        switch wordName {
        case "gray":
            self = .gray.opacity(0.5)
        case "red": 
            self = .red
        case "green":
            self = .green
        case "blue":
            self = .blue
        case "orange":
            self = .orange
        default:
            self = .clear
        }
    }
}
