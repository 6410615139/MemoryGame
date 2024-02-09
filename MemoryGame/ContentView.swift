//
//  ContentView.swift
//  MemoryGame
//
//  Created by Supakrit Nithikethkul on 2/2/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = EmojiViewModel()
    
    let spacing = 4 as CGFloat
    let aspectRatio = 2/3 as CGFloat
    var body: some View {
            VStack {
                AspectVGrid(items: viewModel.cards, aspectRatio:  aspectRatio) { card in
                        CardView(card)
                        .padding(spacing)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
//                        .animation(.default, value: viewModel.cards)
                }
                .foregroundColor(.pink)
                Spacer()
                Button("Shuffle") {
                    withAnimation {
                        viewModel.shuffle()
                    }
                }
            } //end VStack
            .padding()
    } // end body
} // end ContentView

struct CardView: View {
    var card: MemoryGameModel<String>.Card
    init (_ card: MemoryGameModel<String>.Card) {
        self.card = card
    }
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            
            Group {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(card.content)
                    .font(.system(size: 1000))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
                    .rotationEffect(
                        .degrees(card.isMatch ? 360 : 0))
                    .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: card.isMatch)
            }
            .opacity(card.isFaceUp ? 1 : 0)
            
            base.opacity(card.isFaceUp ? 0 : 1)
        } // end ZStack
        .opacity(!card.isFaceUp && card.isMatch ? 0: 1)
        .rotation3DEffect(.degrees(card.isFaceUp ? 0 : 180),
                                  axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .animation(.easeIn(duration: 0.5), value: card)
    } // end body
} // end CardView
#Preview {
    ContentView()
}
