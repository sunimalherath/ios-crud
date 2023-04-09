//
//  WordListViewModel.swift
//  WordsList
//
//  Created by Sunimal Herath on 9/4/2023.
//

import Foundation
import CoreData

class WordListViewModel : ObservableObject {
    var title: String = ""
    @Published var words: [WordModel] = []
    
    func getAllWords() {
        words = CoreDataManager.shared.getAllWords().map(WordModel.init)
    }
    
    func save() {
        // save title to CoreData
        let word = Word(context: CoreDataManager.shared.persistentContainer.viewContext)
        word.title = title
        CoreDataManager.shared.save()
    }
}

struct WordModel {
    let word: Word
    
    var id: NSManagedObjectID {
        return word.objectID
    }
    
    var title: String {
        return word.title ?? ""
    }
}
