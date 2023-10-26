//
//  WelcomeViewModel.swift
//  ClimApp
//
//  Created by Raphaël Payet on 26/10/2023.
//

import Foundation

final class WelcomeViewModel: ObservableObject {
    let title = """
    The time to
    act is 
    """
    let now = "now"
    let dot = "."
    let subtitle = """
    We're excited that
    you're here
    """
    
    @Published var showMainScreen = false
}
