//
//  TaskSection.swift
//  SimpleTask
//
//  Created by Arturo  Villalobos on 11/23/23.
//

import Foundation

enum TaskSection: Identifiable{
    case all
    case done
    case upcoming
    case list(TaskGroup)
    
    var id: String{
        switch self{
            case .all:
                "all"
            case .done:
                "done"
            case .upcoming:
                "upcoming"
            case .list(let taskGroup):
                taskGroup.id.uuidString
        }
    }
    
    var displayName: String{
        switch self{
            case .all:
                "All"
            case .done:
                "Done"
            case .upcoming:
                "Upcoming"
            case .list(let taskGroup):
                taskGroup.id.uuidString
        }
    }
}
