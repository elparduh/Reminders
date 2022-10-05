//
//  HelperFormatter.swift
//  Reminders
//
//  Created by Juan Ticante Vicente on 22/09/22.
//

import Foundation

struct HelperFormatter {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}
