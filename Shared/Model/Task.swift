//
//  Task.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-28.
//

import Foundation

class Task: Identifiable, ObservableObject {
    
    var id = UUID()
    var description: String
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, completed: Bool) {
        self.id = id
        self.description = description
        self.completed = completed
    }
    
}
