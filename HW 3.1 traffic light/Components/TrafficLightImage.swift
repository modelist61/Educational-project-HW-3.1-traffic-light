//
//  TrafficLightImage.swift
//  HW 3.1 traffic light
//
//  Created by Dmitry Tokarev on 11.12.2020.
//

import SwiftUI

struct TrafficLightImage: View {
    var body: some View {
        Image("road-signs")
            .resizable()
            .frame(width: 1034 / 5, height: 1654 / 5)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 15, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

struct TrafficLightImage_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightImage()
    }
}
