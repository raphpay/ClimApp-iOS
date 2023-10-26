//
//  ProjectsView.swift
//  ClimApp
//
//  Created by Raphaël Payet on 26/10/2023.
//

import SwiftUI

struct ProjectsView: View {
    
    let projects = Mock.projects
    let width = UIScreen.main.bounds.width - 32
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(projects) { project in
                    ProjectView(project: project, width: width, height: 300)
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
