//
//  TaskGroup.swift
//  SimpleTask
//
//  Created by Arturo  Villalobos on 11/23/23.
//

import Foundation

struct TaskGroup: Identifiable, Hashable{
    let id = UUID()
    let creationDate: Date
    
    var title: String
    var tasks: [Task]
    
    init(title: String, tasks: [Task] = []){
        self.title = title
        self.creationDate = Date()
        self.tasks = tasks
    }
    
    static func example() -> TaskGroup{
        let task1 = Task(title: "Chilling")
        let task2 = Task(title: "Relaxing")
        let task3 = Task(title: "Munching")
        var group = TaskGroup(title: "testing Vibes group")
        
        group.tasks = [task1,task2,task3]
        
        return group
        
    }
    
    static func examples() -> [TaskGroup]{
        let group1 = TaskGroup.example()
        let group2 = TaskGroup(title: "New List")
        return [group1,group2]
    }
}

