//
//  DateHelpers.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import Foundation

func getReadableDate(from isoDateString: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:SSxxxxx"
    let isoDate = dateFormatter.date(from: isoDateString)
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .short
    return dateFormatter.string(from: isoDate ?? Date())
}


extension Date {
    static func - (recent: Date, previous: Date) -> (month: Int?, day: Int?, hour: Int?, minute: Int?, second: Int?) {
           let day = Calendar.current.dateComponents([.day], from: previous, to: recent).day
           let month = Calendar.current.dateComponents([.month], from: previous, to: recent).month
           let hour = Calendar.current.dateComponents([.hour], from: previous, to: recent).hour
           let minute = Calendar.current.dateComponents([.minute], from: previous, to: recent).minute
           let second = Calendar.current.dateComponents([.second], from: previous, to: recent).second

           return (month: month, day: day, hour: hour, minute: minute, second: second)
       }
}
