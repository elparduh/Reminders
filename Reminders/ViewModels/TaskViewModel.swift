//
//  TaskViewModel.swift
//  Reminders
//
//  Created by Juan Ticante Vicente on 22/09/22.
//

import Foundation

class TaskViewModel: ObservableObject {
  var taskName: String = String()
  var taskDescription: String = String()
  var taskDate: Date = Date()

  @Published var tasks: [TaskModel] = []

  func getAllTask() {
    tasks = RemindersDataManager.shared.getAllTasks().map(TaskModel.init)
  }

  func saveTask() {
    let task = Task(context: RemindersDataManager.shared.viewContext)
    task.taskName = taskName
    task.taskDescription = taskDescription
    task.taskDate = taskDate
    RemindersDataManager.shared.saveTask()
  }
}
