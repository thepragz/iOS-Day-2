//
//  ToDoItem.swift
//  ToDoApp
//
//  Created by Cyberjaya 10 iTrain on 14/11/2017.
//  Copyright © 2017 pragaash. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    
    var itemName: String
    var itemDescription: String?
    var itemPlace: String?
    
    init(name: String, desc:String?, place:String?) {
        self.itemName = name
        self.itemDescription = desc
        self.itemPlace = place
    }

}
