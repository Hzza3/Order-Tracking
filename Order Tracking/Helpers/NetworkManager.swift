//
//  NetworkManager.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()

    func getTrackingData<T: Codable>(forName name: String) -> T? {
        guard let url = Bundle.main.url(forResource: name, withExtension: "json") else { return nil }
        do {
            let data = try Data(contentsOf: url)
            let decodedObject = try JSONDecoder().decode(T.self, from: data)
            return decodedObject
            
        } catch {
            print(error)
            return nil
        }
        
    }
    
}
