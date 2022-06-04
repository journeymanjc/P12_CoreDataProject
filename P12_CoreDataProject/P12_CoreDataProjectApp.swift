//
//  P12_CoreDataProjectApp.swift
//  P12_CoreDataProject
//
//  Created by Jae Cho on 6/2/22.
//

import SwiftUI

@main
struct P12_CoreDataProjectApp: App {
	@StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
				  .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
