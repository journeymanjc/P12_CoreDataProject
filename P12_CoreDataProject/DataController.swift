//
//  DataController.swift
//  P12_CoreDataProject
//
//  Created by Jae Cho on 6/2/22.
//

import Foundation
import CoreData

class DataController: ObservableObject {
	let container = NSPersistentContainer(name:"CoreDataProject")
	init() {
		container.loadPersistentStores { description, error in
			if let error = error {
				print("Core data failed to load :\(error.localizedDescription)")
				return
			}
			
			self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
		}
	}
}
