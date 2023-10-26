//
//  ProjectsView.swift
//  ClimApp
//
//  Created by Raphaël Payet on 26/10/2023.
//

import SwiftUI

struct ProjectsView: View {
    
    let projects = Mock.projects
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(projects) { project in
                    ProjectView(project: project, height: 300)
                }
            }
        }
        .navigationTitle("Our projects")
        .navigationBarTitleDisplayMode(.large)
    }
}



#Preview {
    ProjectsView()
}
