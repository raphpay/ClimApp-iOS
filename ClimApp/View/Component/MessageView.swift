//
//  MessageView.swift
//  ClimApp
//
//  Created by Raphaël Payet on 26/10/2023.
//

import SwiftUI

struct MessageView: View {
    var message: String
    let messageCornerRadius: CGFloat = 20
    
    var body: some View {
        HStack {
            Text(message)
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 250)
                .padding()
                .background(messageBackground)
            
            Spacer()
        }
        .padding(.horizontal)
    }
    
    var messageBackground: some View {
        UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: messageCornerRadius,
                                                                 bottomTrailing: messageCornerRadius,
                                                                 topTrailing: messageCornerRadius)
        )
        .foregroundStyle(.white)
        .shadow(radius: 10)
    }
}

#Preview {
    MessageView(message: "Okay. This is a message that could appear in the bubble")
}
