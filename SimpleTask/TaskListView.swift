//
//  TaskListView.swift
//  SimpleTask
//
//  Created by Arturo  Villalobos on 11/23/23.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) {task in
            HStack{
                Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                Text(task.title)
            }
            
        }}
}

#Preview {
    TaskListView(title: "all", tasks: Task.examples())
}
