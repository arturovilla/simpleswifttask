//
//  SidebarView.swift
//  SimpleTask
//
//  Created by Arturo  Villalobos on 11/23/23.
//

import SwiftUI

struct SidebarView: View {
    
    let userCreatedGroups: [TaskGroup]
    
    var body: some View {
        List{
            ForEach(TaskSection.allCases){ selection in
                Label(selection.displayName,systemImage: selection.iconName)
            }
            ForEach(userCreatedGroups){ group in
                Label(group.title, systemImage: "folder")
            }
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: TaskGroup.examples())
        .listStyle(.sidebar)
}
