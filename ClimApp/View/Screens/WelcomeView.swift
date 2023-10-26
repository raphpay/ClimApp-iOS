//
//  WelcomeView.swift
//  ClimApp
//
//  Created by Raphaël Payet on 25/10/2023.
//

import SwiftUI

struct WelcomeView: View {
    
    @StateObject var viewModel = WelcomeViewModel()
    
    var body: some View {
        ZStack {
            BackgroundImage()
            
            VStack(alignment: .center) {
                Spacer()
                
                titleGroup
                
                Text(viewModel.subtitle)
                    .font(.system(size: 25, weight: .bold))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Button(action: {
                    viewModel.showMainScreen = true
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.green)
                        Text("Sign Up")
                            .font(.system(size: 18, weight: .regular))
                            .foregroundStyle(.white)
                    }
                }
                .frame(height: 55)
                .padding(.horizontal, 16)
            }
            .padding(.horizontal, 16)
        }
        .navigationDestination(isPresented: $viewModel.showMainScreen) {
            MainView()
        }
    }
    
    var titleGroup: some View {
        Group {
            Text(viewModel.title)
                .font(.system(size: 50, weight: .bold)).foregroundStyle(.white) +
            Text(viewModel.now)
                .font(.system(size: 50, weight: .bold))
                .foregroundStyle(.green) +
            Text(viewModel.dot)
                .font(.system(size: 50, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    WelcomeView()
}
