//
//  ContentView.swift
//  Memorize
//
//  Created by Vinicius Modesto on 22/08/23.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["⚽️", "🏀", "🏐", "🏈", "🎱", "🪀" , "🥎","🏓","🏒","🛼","🏋️","🏏","🥊","🥋","🎮","🎯","🚴🏾‍♀️","🛹","⛸️","🤸🏼‍♂️","🏄‍♀️","🏹"]
    @State var emojiCount = 1
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self)
                {
                    emoji in CardView(content: emoji)
                }
            }
            Spacer()
            HStack {
                add
                Spacer()
                remove
            }
            .font(.largeTitle)
            .padding(.horizontal)
       
        }
        .padding(.horizontal)
        .foregroundColor(.blue)
    }
    
    var add : some View {
        Button (action:{ emojiCount += 1 }, label: {
            Image(systemName: "plus.circle")
                .foregroundColor(.blue)
        })
    }
        var remove : some View {
            Button (action:{emojiCount -= 1}, label: {
               Image(systemName: "minus.circle")
                    .foregroundColor(.blue)
            })
        }
    }

struct CardView : View {
    var content : String
    @State var isFacedUp : Bool = true
    
    var body: some View {
        ZStack {
           let shape = RoundedRectangle(cornerRadius:20)
            if isFacedUp {
                shape
                .fill()
                .foregroundColor(.white)
                shape
                .stroke(lineWidth:3)
                Text(content)
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

