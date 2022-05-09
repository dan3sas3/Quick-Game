//
//  MenuPrincipal.swift
//  Final_SastreOkamoto
//
//  Created by alumno on 03/05/22.
//

import SwiftUI

struct MenuPrincipal: View {
  @EnvironmentObject private var vm: LocationsViewModel
  let location: Location

  var body: some View {
    NavigationView{
      List{
        NavigationLink(destination: ProxJuegos()) {
          Text("Próximos juegos")
        }

        NavigationLink(destination: CrearJuego()) {
          Text("Crear juego")
        }

        NavigationLink(destination: BuscarJuego()) {
          Text("Buscar juego")
        }

        NavigationLink(destination: Amigos()) {
          Text("Añadir amigos")
        }
      }.navigationTitle("¡Bienvenido!")
    }.navigationBarHidden(true)
    .navigationBarBackButtonHidden(true)

    Button {
        vm.sheetLocation = location
    } label: {
        Text("Learn more")
            .font(.headline)
            .frame(width: 125, height: 35)
    }
    .buttonStyle(.borderedProminent)
  }
}

//struct MenuPrincipal_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuPrincipal()
//    }
//}
