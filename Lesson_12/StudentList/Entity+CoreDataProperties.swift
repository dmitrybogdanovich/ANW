//
//  Entity+CoreDataProperties.swift
//  StudentList
//
//  Created by Дмитрий Богданович on 13.12.21.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var student: String?
    @NSManaged public var gender: Int16

}

extension Entity : Identifiable {

}
