//
//  ContentView.swift
//  Memorize
//
//  Created by Vinicius Modesto on 22/08/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack {
            CardView(isFacedUp: true)
            CardView(isFacedUp: false)
            CardView(isFacedUp: false)
            CardView(isFacedUp: true)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView : View {
    @State var isFacedUp : Bool
    
    var body: some View {
        ZStack {
           let shape = RoundedRectangle(cornerRadius:20)
            if isFacedUp {
                shape
                .fill()
                .foregroundColor(.white)
                shape
                .stroke(lineWidth:3)
                Text("☺️")
                    .font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius:20)
                    .fill()
            }
             
        }
        .onTapGesture{
            isFacedUp = !isFacedUp;
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
 
}

