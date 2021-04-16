//
//  ContentView.swift
//  Slots App
//
//  Created by Kishore Jr on 16/04/21.
//

import SwiftUI

struct ContentView: View {
    private var symbols = ["apple","cherry","star"]
    @State private var numbers = [0,0,0]
    @State private var point:Int = 0
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red:200/255,green:143/255,blue:32/255))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Rectangle()
                .foregroundColor(Color(red:228/255,green:195/255,blue:76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                //Title
                HStack {
                    Image(systemName: "star.fill")

                    Text("Slotty Slots")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .padding()
                    
                    Image(systemName: "star.fill")
                }
                HStack{
                    Text("Points: \(point)")
                        .foregroundColor(.black)
                        .font(.title)
                        .bold()
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                }
                Spacer()
                HStack {
                    //Images
                    Image(symbols[numbers[0]])
                        .resizable()
                        .scaledToFit()
                        .background(Color.white.opacity(0.6))
                        .cornerRadius(20)
                    
                    Image(symbols[numbers[1]])
                        .resizable()
                        .scaledToFit()
                        .background(Color.white.opacity(0.6))
                        .cornerRadius(20)
                    
                    Image(symbols[numbers[2]])
                        .resizable()
                        .scaledToFit()
                        .background(Color.white.opacity(0.6))
                        .cornerRadius(20)
                }.padding()
                Spacer()
                Button(action:{
                    //change images
                    self.numbers[0] = Int.random(in: 0...self.symbols.count-1)
                    self.numbers[1] = Int.random(in: 0...self.symbols.count-1)
                    self.numbers[2] = Int.random(in: 0...self.symbols.count-1)
                    //winnings
                    if self.numbers[0] == self.numbers[1] {
                        if self.numbers[1] == self.numbers[2]{
                            self.point+=1
                        }
                    }
                }){
                    Text("Spin")
                        .foregroundColor(.black)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .background(Color.white.opacity(0.9))
                        .scaledToFit()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
