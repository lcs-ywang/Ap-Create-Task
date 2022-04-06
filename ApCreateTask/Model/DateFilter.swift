//
//  DateFilter.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-04-05.
//

import Foundation

enum DateFilter:  String, CaseIterable, Identifiable{
    case withDateFilte
    case withoutDateFilter
    var id: String { self.rawValue }
}
