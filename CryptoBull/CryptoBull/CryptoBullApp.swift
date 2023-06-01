//
//  CryptoBullApp.swift
//  CryptoBull
//
//  Created by MacBook Pro on 23/05/23.
//

import SwiftUI

@main
struct CryptoBullApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
