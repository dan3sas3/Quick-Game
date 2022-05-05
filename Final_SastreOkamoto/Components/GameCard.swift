//
//  GameCard.swift
//  Final_SastreOkamoto
//
//  Created by alumno on 04/05/22.
//

import SwiftUI

struct GameCard: View {
  var juego: Juego
  var body: some View {
    ZStack(alignment: .bottom){
      AsyncImage(url:URL(string: juego.image)){image in
          image
              .resizable()
              .scaledToFill()
      } placeholder: {
          ProgressView()
      }
    }
  }
}

struct GameCard_Previews: PreviewProvider {
    static var previews: some View {
        GameCard(juego: juegosList[0])
    }
}
