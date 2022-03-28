//
//  Task.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-28.
//

import Foundation

struct Task: Identifiable {
    
    var id = UUID()
    var description: String
    var completed: Bool
}
