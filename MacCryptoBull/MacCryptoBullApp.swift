//
//  MacCryptoBullApp.swift
//  MacCryptoBull
//
//  Created by MacBook Pro on 04/06/23.
//

import SwiftUI

@main
struct MacCryptoBullApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
