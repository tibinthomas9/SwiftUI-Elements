//
//  SwiftUI_ElementsApp.swift
//  SwiftUI Elements
//
//  Created by Tibin Thomas on 2024-04-15.
//

import SwiftUI
import SwiftData

@main
struct SwiftUI_ElementsApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .modelContainer(sharedModelContainer)
    }
}
