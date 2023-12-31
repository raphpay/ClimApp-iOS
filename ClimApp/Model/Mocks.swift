//
//  Mocks.swift
//  ClimApp
//
//  Created by Raphaël Payet on 30/10/2023.
//

import Foundation

class Mock {
    static let panama = Project(title: "Panama Reforestation project", subtitle: "Gold Standard", image: Assets.panama)
    static let windTurbine = Project(title: "Wind Turbine global project", subtitle: "Premium", image: Assets.windTurbine)
    static let solarPanels = Project(title: "Sahara Solar Panel project", subtitle: "Everyone", image: Assets.solarPanels)
    
    static let projects: [Project] = [panama, windTurbine, solarPanels]
    
    static let startMessage = Message(value: "Okay, let's find out what your personal carbon footprint looks like!")
    static let frenchMessage = Message(value: "On the top, you see the average annual 🇫🇷 footprint")
    
    static let messages: [Message] = [startMessage, frenchMessage]
}
