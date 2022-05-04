//
//  CrearJuego.swift
//  Final_SastreOkamoto
//
//  Created by alumno on 02/05/22.
//

import SwiftUI
//prueba
struct RegistroUser: View {
  @State private var firstname = ""
  @State private var lastname = ""
  @State private var age = 20

  private let oldPasswordToConfirmAgainst = "12345"
  @State private var oldPassword = ""
  @State private var newPassword = ""
  @State private var confirmedPassword = ""

  @State private var keyboardOffset: CGFloat = 0

  var body: some View {
      VStack {
        Form {
          Section(header: Text("User Details")) {
            TextField("Firstname", text: $firstname)
            TextField("Lastname",text: $lastname)

            Stepper(value: $age, in: 18...100, label: {
              Text("Current age: \(self.age)")
            })

            if self.isUserInformationValid() {
              Button(action: {
                print("Updated profile")
              }, label: {
                Text("Update Profile")
              })
            }
          }

      }.navigationBarTitle(Text("Crea tu perfil"))

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
  }

  private func isUserInformationValid() -> Bool {
    if firstname.isEmpty {
        return false
    }

    if lastname.isEmpty {
        return false
    }

    return true
  }

  private func isPasswordValid() -> Bool {
    if oldPassword != oldPasswordToConfirmAgainst {
        return false
    }

    if !newPassword.isEmpty && newPassword == confirmedPassword {
        return true
    }

    return false
  }
}

struct RegistroUser_Previews: PreviewProvider {
    static var previews: some View {
        RegistroUser()
    }
}
