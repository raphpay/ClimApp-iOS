//
//  BackgroundImage.swift
//  ClimApp
//
//  Created by Raphaël Payet on 26/10/2023.
//

import SwiftUI

struct BackgroundImage: View {
    var body: some View {
        Image(Assets.forest)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackgroundImage()
}
