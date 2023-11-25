//
//  SidebarView.swift
//  SimpleTask
//
//  Created by Arturo  Villalobos on 11/23/23.
//

import SwiftUI

struct SidebarView: View {
    
    @Binding var userCreatedGroups: [TaskGroup]
    @Binding var selection: TaskSection?
    var body: some View {
        List(selection: $selection ){
            Section("Favorites"){
                ForEach(TaskSection.allCases){ selection in
                    Label(selection.displayName,systemImage: selection.iconName).tag(selection)
                }
            }
            Section("Your Groups"){
                ForEach(userCreatedGroups){ group in
                    Label(group.title, systemImage: "folder").tag(TaskSection.list(group))
                }
            }
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: .constant(TaskGroup.examples()),
                selection: .constant(.all))
        .listStyle(.sidebar)
}
