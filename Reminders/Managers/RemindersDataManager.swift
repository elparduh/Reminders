//
//  RemindersDataManager.swift
//  Reminders
//
//  Created by Juan Ticante Vicente on 22/09/22.
//

import Foundation
import CoreData

class RemindersDataManager {
  var persistenceContainer: NSPersistentContainer
  static let shared = RemindersDataManager()

  var viewContext: NSManagedObjectContext {
    return persistenceContainer.viewContext
  }

  private init() {
    persistenceContainer = NSPersistentContainer(name: "Reminders")
    persistenceContainer.loadPersistentStores { description, error in
      if let error = error {
        fatalError("Unable to initializable core data stack \(error)")
      }
    }
  }

  func saveTask() {
    do {
      try viewContext.save()
    } catch {
      viewContext.rollback()
      print(error.localizedDescription)
    }
  }

  func getAllTasks() -> [Task] {
    let request: NSFetchRequest<Task> = Task.fetchRequest()
    do {
      return try viewContext.fetch(request)
    } catch {
      return []
    }
  }
}
