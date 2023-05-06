//
//  Todo.swift
//  ToDoList
//
//  Created by user198727 on 5/6/23.
//

import Foundation

class TodoEntity: Codable {
    
    var title: String
    var status: String
    var description: String
    var date: String
    var time: String
    var priority: String
      
    init(title: String, status: String, description: String, date: String, time: String, priority: String) {
        self.title = title
        self.status = status
        self.description = description
        self.date = date
        self.time = time
        self.priority = priority
    }
}
