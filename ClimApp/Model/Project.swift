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

class Mock {
    static let panama = Project(title: "Panama Reforestation project", subtitle: "Gold Standard", image: Assets.panama)
    static let windTurbine = Project(title: "Wind Turbine global project", subtitle: "Premium", image: Assets.windTurbine)
    static let solarPanels = Project(title: "Sahara Solar Panel project", subtitle: "Everyone", image: Assets.solarPanels)
    
    static let projects: [Project] = [panama, windTurbine, solarPanels]
    
    static let startMessage = Message(value: "Okay, let's find out what your personal carbon footprint looks like!")
    static let frenchMessage = Message(value: "On the thop, you see the average annual 🇫🇷 footprint")
    
    static let messages: [Message] = [startMessage, frenchMessage]
}
