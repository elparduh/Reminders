//
//  AddTasklView.swift
//  Reminders
//
//  Created by Juan Ticante Vicente on 22/09/22.
//

import SwiftUI

struct AddGoalView: View {
  @Environment(\.presentationMode) var presentationMode
  @StateObject private var taskVM = TaskViewModel()
  @State private var dateTask: Date? = nil

  var body: some View {
    VStack(spacing: 24) {
      VStack(alignment: .leading ,spacing: 8) {
        Text("Tarea")
          .fontWeight(.semibold)
          .font(.subheadline)
        TextField("Nombre de la tarea", text: $taskVM.taskName)
          .textFieldStyle(RoundedBorderTextFieldStyle())
      }

      VStack(alignment: .leading ,spacing: 8) {
        Text("Fecha")
          .fontWeight(.semibold)
          .font(.subheadline)

        DatePickerTextField(placeholder: "Fecha de realización", date: $dateTask).frame(height: 20)
      }

      VStack(alignment: .leading ,spacing: 8) {
        Text("Descripción")
          .fontWeight(.semibold)
          .font(.subheadline)

        TextField("Escribe detalles de la tarea", text: $taskVM.taskDescription)
          .textFieldStyle(RoundedBorderTextFieldStyle())

      }

      Spacer()

      HStack {
        Spacer()
        Button("Guardar") {
          taskVM.taskDate = dateTask ?? Date()
          taskVM.saveTask()
          self.presentationMode.wrappedValue.dismiss()
        }
        .foregroundColor(.white)
        .padding()
        Spacer()
      }
      .background(Color.accentColor)
      .cornerRadius(8)
      .padding()

    }
    .padding()
    .navigationTitle("Nuevo")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct AddGoalView_Previews: PreviewProvider {
  static var previews: some View {
    AddGoalView()
  }
}
