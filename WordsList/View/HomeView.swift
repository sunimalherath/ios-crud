//
//  HomeVies.swift
//  WordsList
//
//  Created by Sunimal Herath on 9/4/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var wordListVM = WordListViewModel()
    
    var body: some View {
        VStack {
            TextField("Enter a word here", text: $wordListVM.title)
                .textFieldStyle(.roundedBorder)
            Button("Save") {
                wordListVM.save()
                // clear the TextField
            }
        }
        .padding()
    }
}

struct HomeVies_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
