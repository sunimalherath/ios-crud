//
//  CoreDataManager.swift
//  WordsList
//
//  Created by Sunimal Herath on 9/4/2023.
//

import Foundation
import CoreData

// This class is to initialize CoreData
class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "WordListModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("unable to initialize CoreData stack, \(error)")
            }
        }
    }
    
    func getAllWords() -> [Word] {
        let request: NSFetchRequest<Word> = Word.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(request)
        } catch {
            return []
        }
    }
    
    func save() {
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("Error saving word to CoreData, \(error.localizedDescription)")
        }
    }
}
