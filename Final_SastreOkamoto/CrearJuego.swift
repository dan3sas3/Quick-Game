//
//  CrearJuego.swift
//  Final_SastreOkamoto
//
//  Created by alumno on 02/05/22.
//

import SwiftUI

import SwiftUI
//prueba
struct CrearJuego: View {
  @State private var direccion = ""
  @State private var hora = ""
  @State private var fecha = Date()
  @State private var jugadoresMin = 2
  @State private var jugadoresMax = 30

  private let oldPasswordToConfirmAgainst = "12345"
  @State private var oldPassword = ""
  @State private var newPassword = ""
  @State private var confirmedPassword = ""

  @State private var keyboardOffset: CGFloat = 0

  var body: some View {
      VStack {
        Form {
          Section(header: Text("Detalles del Juego")) {
            TextField("Direccion", text: $direccion)
            DatePicker("Fecha",selection: $fecha)
            Stepper(value: $jugadoresMin, in: 18...100, label: {
              Text("Jugadores Mínimos: \(self.jugadoresMin)")
            })
            Stepper(value: $jugadoresMax, in: 18...100, label: {
              Text("Jugadores Mínimos: \(self.jugadoresMax)")
            })
          }.navigationBarTitle(Text("Crea un nuevo juego"))
          Button(action: {}){
            NavigationLink(destination: MenuPrincipal()){
              Text("Seleccionar punto en mapa".uppercased())
                  .modifier(CustomTextM(fontName: "OpenSans-Bold", fontSize: 14, fontColor: Color.black))
                  .modifier(ButtonStyle(buttonHeight: 60, buttonColor: Color.white, buttonRadius: 10))
            }
          }
      }.background(Color(UIColor.systemGray6))

  }

  }
}

struct CrearJuego_Previews: PreviewProvider {
    static var previews: some View {
        CrearJuego()
    }
}

