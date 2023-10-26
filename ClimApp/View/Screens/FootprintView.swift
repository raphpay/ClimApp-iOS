//
//  FootprintView.swift
//  ClimApp
//
//  Created by Raphaël Payet on 26/10/2023.
//

import SwiftUI

struct FootprintView: View {
    
    @Environment(\.dismiss) var dismiss
    @State var showSecondMessage = false
    @State var number = 0.0
    let targetNumber = 19.50
    
    var body: some View {
        ZStack {
            BackgroundImage()
            
            VStack {
                HStack {
                    Button(action: { dismiss() }, label: {
                        Image(systemName: "chevron.left")
                            .imageScale(.large)
                            .bold()
                            .foregroundStyle(.white)
                    })
                    
                    Spacer()
                    
                    VStack {
                        Text(String(format: "%.2f", number))
                            .font(.system(size: 50, weight: .bold))
                        
                        Text("Tons CO2 e")
                            .font(.system(size: 20))
                    }
                    .foregroundStyle(.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Spacer()
                
                MessageView(message: Mock.messages[0].value)
                
                if showSecondMessage {
                    MessageView(message: Mock.messages[1].value)
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrow.right")
                        .imageScale(.large)
                        .bold()
                })
                .frame(width: 150, height: 55)
                .background(Color.green)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation() {
                    showSecondMessage = true
                    number = targetNumber
                }
            }
        }
    }
}

#Preview {
    FootprintView()
}
