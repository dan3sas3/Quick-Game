//
//  ProxJuegosDetalle.swift
//  Final_SastreOkamoto
//
//  Created by alumno on 02/05/22.
//

import SwiftUI

struct ProxJuegosDetalle: View {
    var body: some View {
      VStack  {
        Text("Detalles del Platillo")
          .font(Font.system(size: 16, weight: .bold))
        Text("Estadio Azteca")
          .padding()
        Text("Dirección")
          .padding()
      }.padding()// fin VStack

      VStack{
        AsyncImage(url:URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Estadio_Azteca_cancha_vista_norte.jpg/1200px-Estadio_Azteca_cancha_vista_norte.jpg")){image in
          image
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
        }placeholder: {
          ProgressView()
        }
      }
    }
}

struct ProxJuegosDetalle_Previews: PreviewProvider {
    static var previews: some View {
        ProxJuegosDetalle()
    }
}
