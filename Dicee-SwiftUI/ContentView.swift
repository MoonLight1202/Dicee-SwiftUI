//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by MoonLight on 30/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ExtractedView(dice: "dice1", dice2: "dice2")
        }
    }
}

struct ExtractedView: View {
    @State var dice: String
    @State var dice2: String
    let diceArray = ["dice1", "dice2","dice3", "dice4","dice5", "dice6"]
    var body: some View {
        VStack{
            Image("diceeLogo")
            Spacer()
            HStack(){
                Image(dice)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding()
                Image(dice2)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding()
            }
            Spacer()
            Button(action: {
                dice = diceArray.randomElement()!
                dice2 = diceArray.randomElement()!
            }) {
                Text("Roll")
                    .font(.system(size: 40))
            }
            .padding(.horizontal)
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(2)
        }
    }
}
