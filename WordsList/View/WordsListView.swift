//
//  WordsListView.swift
//  WordsList
//
//  Created by Sunimal Herath on 9/4/2023.
//

import SwiftUI

struct WordsListView: View {
    @StateObject private var wordListVM = WordListViewModel()
    
    var body: some View {
        List(wordListVM.words, id: \.id) { word in
            Text(word.title)
        }
        .onAppear {
            wordListVM.getAllWords()
        }
    }
}

struct WordsListView_Previews: PreviewProvider {
    static var previews: some View {
        WordsListView()
    }
}
