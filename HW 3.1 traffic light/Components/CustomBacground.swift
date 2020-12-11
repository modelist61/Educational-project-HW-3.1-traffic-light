//
//  Bacground.swift
//  HW 3.1 traffic light
//
//  Created by Dmitry Tokarev on 11.12.2020.
//

import SwiftUI

struct CustomBacground: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .bottom, endPoint: .top)
            .ignoresSafeArea()
    }
}

struct Bacground_Previews: PreviewProvider {
    static var previews: some View {
        CustomBacground()
    }
}
