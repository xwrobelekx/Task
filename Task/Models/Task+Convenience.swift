//
//  Task+Convenience.swift
//  Task
//
//  Created by Kamil Wrobel on 8/29/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import Foundation
import CoreData


extension Task {
    
    convenience init(name: String, notes: String?, due: Date?, isComplete: Bool = false, context: NSManagedObjectContext = CoreDataStack.context){
        self.init(context: context)
        
        self.name = name
        self.isComplete = isComplete
    }
}


