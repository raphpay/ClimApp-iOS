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
    
    static let projects = [panama, windTurbine, solarPanels]
}
