//
//  LogicAction.swift
//  HW 3.1 traffic light
//
//  Created by Dmitry Tokarev on 11.12.2020.
//

import SwiftUI

class LogicAction: ObservableObject {
    
    @Published private var red = 0.1
    @Published private var yellow = 0.1
    @Published private var green = 0.1
    
    init(red: Double, yellow: Double, green: Double) {
        self.red = red
        self.yellow = yellow
        self.green = green
    }
}
