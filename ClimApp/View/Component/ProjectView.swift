//
//  ProjectView.swift
//  ClimApp
//
//  Created by Raphaël Payet on 26/10/2023.
//

import SwiftUI

struct ProjectView: View {
    
    var project: Project
    var width: CGFloat = .infinity
    var height: CGFloat = .infinity
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(project.image)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))

            HStack {
                VStack(alignment: .leading) {
                    Text(project.title)
                        .font(.system(size: 20, weight: .bold))
                    Text(project.subtitle)
                        .font(.system(size: 16, weight: .regular))
                }
                Spacer()
            }
            .foregroundStyle(.white)
            .padding()
        }
        .frame(width: width, height: height)
        .padding()
    }
}

#Preview {
    ProjectView(project: Mock.panama)
}
