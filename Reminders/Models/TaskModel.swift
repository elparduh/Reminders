//
//  TaskModel.swift
//  Reminders
//
//  Created by Juan Ticante Vicente on 22/09/22.
//

import Foundation
import CoreData

struct TaskModel {
  let task: Task

  var taskID: NSManagedObjectID {
    return task.objectID
  }

  var taskName: String {
    return task.taskName ?? ""
  }

  var taskDescription: String {
    return task.taskDescription ?? ""
  }

  var taskDate: Date {
    return task.taskDate ?? Date()
  }
}
