//
//  RemindersApp.swift
//  Reminders
//
//  Created by Juan Ticante Vicente on 22/09/22.
//

import SwiftUI

@main
struct RemindersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
