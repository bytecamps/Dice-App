//
//  ContentView.swift
//  Shared
//
//  Created by Bytecamps on 7/13/21.
//

import SwiftUI

struct ContentView: View {
    @State var image = "dice2"
    var body: some View {
        VStack {
            Spacer()
            
            Text("Welcome to Dice App")
                .font(Font.custom("AlNile-Bold", size: 35))
            
            Spacer()
            
            Text("Click on the button to roll the dice")
                .font(Font.custom("AlNile-Bold", size: 20))
            
            Spacer()
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 50.0)
            
            Spacer()
            
            Button(action: {
                rollDice()
            }) {
                Text("Roll the dice")
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color.red)
            .cornerRadius(20)
            
            Spacer()
        }
    }
    func rollDice() {
        var randomNumber = Int.random(in: 1...6)
        print(randomNumber)
        
        if randomNumber == 1 {
            image = "dice1"
        }
        if randomNumber == 2 {
            image = "dice2"
        }
        if randomNumber == 3 {
            image = "dice3"
        }
        if randomNumber == 4 {
            image = "dice4"
        }
        if randomNumber == 5 {
            image = "dice5"
        }
        if randomNumber == 6 {
            image = "dice5"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
