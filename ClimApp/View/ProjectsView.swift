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
                    ZStack(alignment: .bottom) {
                        Image(project.image)
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 10))

                        VStack(alignment: .leading) {
                            Spacer()
                            Text(project.title)
                                .font(.system(size: 20, weight: .bold))
                            Text(project.subtitle)
                                .font(.system(size: 16, weight: .regular))
                        }
                        .foregroundStyle(.white)
                        .padding()
                    }
                    .frame(height: 300)
                    .padding()
                }
            }
        }
    }
}


#Preview {
    ProjectsView()
}
