//
//  ContentView.swift
//  HW 3.1 traffic light
//
//  Created by Dmitry Tokarev on 10.12.2020.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State private var red = 0.1
    @State private var yellow = 0.1
    @State private var green = 0.1
    
    @State private var opticalSwitch = 1
    
    private let on = 1.0
    private let off = 0.1
    
    var body: some View {
        ZStack {
            CustomBacground()
            VStack {
                ZStack {
                    TrafficLightImage()
                    CircleView(red: red, yellow: yellow, green: green)
                }
                Spacer()
//              ButtonView(action: changeColor(), longPressAction: turnOff())
                
                ZStack {
                    Image("43098")
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    Button(action: changeColor ){
                        Circle()
                            .colorMultiply(.primary)
                            .frame(width: 65, height: 65)
                            .opacity(0.5)
                            .offset(x: 0, y: -2)
                            .onTapGesture(perform: {changeColor()})
                            .onLongPressGesture(minimumDuration: 0.1, maximumDistance: 10) {turnOff()}
                    }
                }
                Text("HOLD to turn off")
            }.padding()
        }
    }
    
    private func turnOff() {
        AudioServicesPlaySystemSound(1152)
        red = off
        yellow = off
        green = off
        opticalSwitch = 1
    }
    
    private func changeColor() {
        AudioServicesPlaySystemSound(1013)
        switch opticalSwitch {
        case 1:
            red = on
            green = off
            opticalSwitch = 2
        case 2:
            red = off
            yellow = on
            opticalSwitch = 3
        case 3:
            yellow = off
            green = on
            opticalSwitch = 1
        default:
            return
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

