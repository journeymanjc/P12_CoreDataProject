//
//  Movie+CoreDataProperties.swift
//  P12_CoreDataProject
//
//  Created by Jae Cho on 6/3/22.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var year: Int16

	public var wrappedTitle: String{
		title ?? "Unknown Title"
	}
}

extension Movie : Identifiable {

}
