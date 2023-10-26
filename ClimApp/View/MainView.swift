//
//  MainView.swift
//  ClimApp
//
//  Created by Raphaël Payet on 25/10/2023.
//

import SwiftUI

struct MainView: View {
    
    let projects = Mock.projects
    let text = """
    Let's neutralise your 
    carbon footprint
    """
    let midScreenHeight = UIScreen.main.bounds.size.height / 2
    
    @State var showAllProjects = false
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Image(Assets.forest)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .frame(height: midScreenHeight)
                        .clipped()
                    VStack {
                        HStack {
                            Image(Assets.smallLogo)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .scaledToFill()
                            Text("climApp")
                                .font(.body)
                                .bold()
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            HStack {
                                Text("👋")
                                    .font(.largeTitle)
                                Text("Hi,")
                                    .font(.system(size: 30, weight: .bold))
                                    .foregroundStyle(.white)
                            }
                            Text(text)
                                .font(.system(size: 25, weight: .regular))
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                        }
                        
                        Spacer()
                    }
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Our projects")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundStyle(.black)
                        Spacer()
                        Button(action: {
                            showAllProjects = true
                        }) {
                            Text("See all")
                                .font(.headline)
                                .foregroundStyle(.blue)
                                .padding(10)
                                .background(RoundedRectangle(cornerRadius: 20).shadow(radius: 5))
                        }
                    }
                    Text("Meet our climate projects")
                        .font(.headline)
                        .foregroundStyle(.gray)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(projects) { project in
                                ZStack(alignment: .bottom) {
                                    Image(project.image)
                                        .resizable()
//                                        .scaledToFill()
                                        .frame(width: 250, height: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        Text(project.title)
                                            .font(.system(size: 20, weight: .bold))
                                        Text(project.subtitle)
                                            .font(.system(size: 16, weight: .regular))
                                    }
                                    .padding()
                                }
                                .frame(width: 250, height: 150)
                            }
                        }
                    }
                    .scrollTargetBehavior(.paging)
                    
                    Spacer()
                }
                .offset(y: 37.5)
                .padding(.horizontal)
                .frame(height : midScreenHeight)
            }
            
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                    Label("Calculate your carbon footprint", systemImage: "leaf.fill")
                        .foregroundStyle(.white)
                }
            }
            .frame(height: 55)
            .padding(.horizontal, 16)
        }
        .ignoresSafeArea()
        .foregroundStyle(Color.background)
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $showAllProjects) {
            ProjectsView()
        }
    }
}


#Preview {
    MainView()
}
