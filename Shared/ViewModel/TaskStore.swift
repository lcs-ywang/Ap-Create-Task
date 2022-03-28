//
//  TaskStore.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-28.
//

import Foundation

class TaskStore: ObservableObject{
    @Published var tasks: [Task]
    
    init(tasks: [Task] = []){
        self.tasks = tasks
    }
}
