//
//  RoundedButton.swift
//  ClimApp
//
//  Created by Raphaël Payet on 30/10/2023.
//

import SwiftUI

struct RoundedButton: View {
    
    var title: String
    var backgroundColor: Color = .green
    var action: (() -> Void)?
    
    var body: some View {
        Button(action: {
            action?()
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(backgroundColor)
                Text(title)
                    .font(.system(size: 18, weight: .regular))
                    .foregroundStyle(.white)
            }
        }
        .frame(height: 55)
        .padding(.horizontal, 16)
    }
}

#Preview {
    RoundedButton(title: "Sign Up")
}
