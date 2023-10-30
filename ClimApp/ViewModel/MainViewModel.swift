//
//  MainViewModel.swift
//  ClimApp
//
//  Created by Raphaël Payet on 30/10/2023.
//

import SwiftUI

final class MainViewModel: ObservableObject {
    let projects = Mock.projects
    let text = """
    Let's neutralise your
    carbon footprint
    """
    
    let midScreenHeight = UIScreen.main.bounds.size.height / 2
    
    @Published var showAllProjects = false
    @Published var showCarbonFootprintView = false
}
