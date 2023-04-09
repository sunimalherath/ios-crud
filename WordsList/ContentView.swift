//
//  ContentView.swift
//  WordsList
//
//  Created by Sunimal Herath on 9/4/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    
                }
            WordsListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Words")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
