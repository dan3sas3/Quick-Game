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

  //private let oldPasswordToConfirmAgainst = "12345"
  @State private var fecha = Date()
  @State private var jugadoresMin = 0
  @State private var jugadoresMax = 0

  @State private var keyboardOffset: CGFloat = 0

  var body: some View {
      VStack {
        Form {
          Section(header: Text("Información de juego")) {
            DatePicker(
              "Fecha",
              selection: $fecha
            )
            Stepper(value: $jugadoresMin, in: 3...25, label: {
              Text("Jugadores Mínimos: \(self.jugadoresMin)")
            })
            Stepper(value: $jugadoresMin, in: 3...25, label: {
              Text("Jugadores Mínimos: \(self.jugadoresMin)")
            })


      }.navigationBarTitle(Text("Crea un juego"))

      .offset(y: -self.keyboardOffset)
      .onAppear {
        NotificationCenter.default.addObserver(
          forName: UIResponder.keyboardDidShowNotification,
          object: nil,
          queue: .main) { (notification) in
            NotificationCenter.default.addObserver(
              forName: UIResponder.keyboardDidShowNotification,
              object: nil,
              queue: .main) { (notification) in
                guard let userInfo = notification.userInfo,
                let keyboardRect = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }

                self.keyboardOffset = keyboardRect.height
              }

              NotificationCenter.default.addObserver(
                forName: UIResponder.keyboardDidHideNotification,
                object: nil,
                queue: .main) { (notification) in
                  self.keyboardOffset = 0
                }
          }
        }
      }.background(Color(UIColor.systemGray6))
      Button(action: {}){
        NavigationLink(destination: MenuPrincipal()){
          Text("CREAR".uppercased())
              .modifier(CustomTextM(fontName: "OpenSans-Bold", fontSize: 14, fontColor: Color.black))
              .modifier(ButtonStyle(buttonHeight: 60, buttonColor: Color.white.opacity(0.15), buttonRadius: 10))
        }
      }
    }
  }
}

struct CrearJuego_Previews: PreviewProvider {
    static var previews: some View {
      CrearJuego()
    }
}
