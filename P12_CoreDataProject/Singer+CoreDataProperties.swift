//
//  Singer+CoreDataProperties.swift
//  P12_CoreDataProject
//
//  Created by Jae Cho on 6/5/22.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
	
	var wrappedFirstName: String {
		firstName ?? "Unknown"
	}
	var wrappedLastName: String {
		lastName ?? "Unknown"
	}

}

extension Singer : Identifiable {

}
