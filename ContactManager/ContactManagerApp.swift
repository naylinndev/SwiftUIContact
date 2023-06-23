//
//  ContactManagerApp.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 23/06/2023.
//

import SwiftUI

@main
struct ContactManagerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
