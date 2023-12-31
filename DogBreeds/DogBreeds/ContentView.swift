//
//  ContentView.swift
//  DogBreeds
//
//  Created by Joel Sereno on 10/21/23.
//

import SwiftUI


struct ContentView: View {
    
    enum Tab {
        case Home, DogBreeds, RandomDog
    }
    
    @State private var tabSelection = Tab.Home
    
    var body: some View {
        
        TabView(selection: $tabSelection){
            HomeScreenView()
                .tabItem { Label("Home", systemImage: "house") }
                .tag(Tab.Home)
            DogBreedsView()
                .tabItem { Label("Dog Breeds", systemImage: "dog") }
                .tag(Tab.DogBreeds)
        }
    }
}

#Preview {
    ContentView()
}


