//
//  WorkItem.swift
//  test
//
//  Created by Евгений Отроков on 12.11.2019.
//  Copyright © 2019 Евгений Отроков. All rights reserved.
//

import Foundation


struct WorkItem: Hashable, Codable {
    var id: Int
    var name: String
    var first_name: String?
    
    init(id: Int,
         name: String,
         first_name: String? = nil) {
        
        self.id = id
        self.name = name
        self.first_name = first_name
    }
    init(_ dictionary: [String: Any]) {
      self.id = dictionary["age"] as? Int ?? 0
      self.name = dictionary["last_name"] as? String ?? ""
      self.first_name = dictionary["first_name"] as? String ?? ""
    }
}
