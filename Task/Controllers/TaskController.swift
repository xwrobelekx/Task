//
//  TaskController.swift
//  Task
//
//  Created by Kamil Wrobel on 8/29/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import Foundation


class TaskController {
    
    //MARK: - Singelton
    static let shared = TaskController()
    
    
    //MARK: - Properties
    var mockData : [Task] = {
        let study = Task(name: "Study", notes: nil, due: nil)
        let hike = Task(name: "Hike", notes: "somewhere", due: Date(), isComplete: true)
        let sleep = Task(name: "Sleep", notes: "before i turn into zombie", due: nil)
        
        return [study, hike, sleep]
    }()
    
    //MARK: Source Of Truth
    var tasks : [Task] = []
    

    
    //MARK: - CRUD
    
    func add(taskWithName name: String, notes: String?, due: Date?){
        
    }
    
    
    
    func update(task: Task, name: String, notes: String?, due: Date?){
        
    }
    
    
    func remove(task: Task){
        
    }
    
    //MARK: - Save to PersistentStore
    
    func saveToPersistentStore(){
        
    }
    
    
    func fetchTasks() -> [Task] {
        
        self.tasks = self.mockData
        return tasks
    }
    
    
    
    
}
