//
//  Task.swift
//  SimpleTask
//
//  Created by Arturo  Villalobos on 11/23/23.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var tags: Array<String>
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), tags: Array<String> = []){
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.tags = tags
    }
    
    static func example() -> Task{
        Task(title: "Upgrade Vibes", dueDate: Calendar.current.date(byAdding: .day, value: 3, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(title: "Upgrade Vibes", dueDate: Calendar.current.date(byAdding: .day, value: 3, to: Date())!),
            Task(title: "Downgrade Vibes", isCompleted: true),
            Task(title: "Boss up", dueDate: Calendar.current.date(byAdding: .day, value: 5, to: Date())!),
            Task(title: "Gyat for the rizzler"),
            Task(title: "Your so skibitti", dueDate: Calendar.current.date(byAdding: .day, value: 10, to: Date())!)
        ]
    }
}
