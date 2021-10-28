//
//  note.swift
//  journal
//
//  Created by Subhodh  on 25/10/2021.
//

import CoreData
class note: NSManagedObject
{
    @NSManaged var id: NSNumber!
    @NSManaged var title: String!
    @NSManaged var desc: String!
    @NSManaged var deletedDate: Date?
}
