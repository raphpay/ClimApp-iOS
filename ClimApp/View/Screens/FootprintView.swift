//
//  FootprintView.swift
//  ClimApp
//
//  Created by Raphaël Payet on 26/10/2023.
//

import SwiftUI

struct FootprintView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            BackgroundImage()
            
            VStack {
                backButton
                
                Spacer()
                
                MessageView(message: Mock.messages[0].value)
            }
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden()
    }
    
    var backButton: some View {
        HStack {
            Button(action: { dismiss() }, label: {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .bold()
                    .foregroundStyle(.white)
            })
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    FootprintView()
}
