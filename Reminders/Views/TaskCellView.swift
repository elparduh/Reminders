//
//  TaskCellView.swift
//  Reminders
//
//  Created by Juan Ticante Vicente on 22/09/22.
//

import SwiftUI

struct TaskCellView: View {

    let taskName: String
    let taskDescription: String
    let taskDate: Date

    var body: some View {
        ZStack {
            VStack (alignment: .leading) {
                Text(taskName)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 16)
                    .padding(.leading)

                Text(taskDescription)
                    .font(.subheadline).bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 2)
                    .lineLimit(2)

                HStack {
                    Spacer()
                    Text(taskDate, style: .date)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                }

            }
        }
        .background(Color.red)
        .cornerRadius(12)
    }
}
