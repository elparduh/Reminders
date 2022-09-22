//
//  ContentView.swift
//  Reminders
//
//  Created by Juan Ticante Vicente on 22/09/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
  @StateObject private var taskVM = TaskViewModel()
  
    var body: some View {
        NavigationView {
          VStack {
              ScrollView {
                ForEach(taskVM.tasks, id: \.taskID) { task in
                  TaskCellView(taskName: task.taskName, taskDescription: task.taskDescription, taskDate: task.taskDate)
                  }
              }
          }
          .navigationTitle("Recordatorios")
          .navigationBarTitleDisplayMode(.large)
          .navigationViewStyle(.stack)
          .padding(.horizontal, 16)
          .onAppear(perform: {
            taskVM.getAllTask()
          })
          .navigationBarItems(
              trailing:
                  NavigationLink(
                      destination: AddGoalView(),
                      label: {
                          Image(systemName: "plus.app")
                      }
                  )
          )
          Spacer()
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
