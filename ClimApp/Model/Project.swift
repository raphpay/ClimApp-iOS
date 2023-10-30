//
//  Project.swift
//  ClimApp
//
//  Created by Raphaël Payet on 26/10/2023.
//

import Foundation

class Project: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let image: String
    
    init(title: String, subtitle: String, image: String) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
}
