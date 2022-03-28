//
//  TaskCell.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-28.
//

import SwiftUI

struct TaskCell: View {
    
    var task: Task
    
    var body: some View {
        HStack{
            
            Image(systemName: task.completed ? "checkmark.circle fill" : "circle")
                .onTapGesture {
                    task.completed.toggle()
                }
            
            Text(task.description)
           
        }
    }
}

//struct TaskCell_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskCell(task: [])
//    }
//}
