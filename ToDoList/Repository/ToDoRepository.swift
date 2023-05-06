//
//  ToDoRepository.swift
//  ToDoList
//
//  Created by user198727 on 5/6/23.
//

import Foundation

class ToDoRepository {
    
    private static func readJSON() -> Data? {
        do {
            guard let path = Bundle.main.path(forResource: "todos", ofType: "json") else {return nil}
            let jsonData = try String(contentsOfFile: path).data(using: .utf8)
            return jsonData
        } catch {
            print("Something went wrong")
        }
        return nil
    }
    
    private static func parseJson(data: Data?) -> [TodoEntity]? {
        guard let jsonData = data else { return nil}
        do {
            let todos = try JSONDecoder().decode([TodoEntity].self, from: jsonData)
            return todos
        } catch {
            print("Something went wrong")
        }
        
        return nil
    }
    
    static func getTodos() -> [TodoEntity] {
        let data = readJSON()
        let todos = parseJson(data: data)
        
        if (todos != nil) {
            return todos!
        }
        return []
    }
    
}
