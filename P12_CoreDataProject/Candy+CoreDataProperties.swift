//
//  Candy+CoreDataProperties.swift
//  P12_CoreDataProject
//
//  Created by Jae Cho on 6/4/22.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?
	
	public var wrappedName: String {
		name ?? "Unknown Candy"
	}

}

extension Candy : Identifiable {

}
