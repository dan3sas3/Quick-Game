//
//  UserDataModel.swift
//  Final_SastreOkamoto
//
//  Created by alumno on 11/05/22.
//

import Foundation
struct UserDataModel: Decodable {
    let error: Bool
    let message: String
    let data: [Usuario]
}

// MARK: - Platillo
struct  Usuario: Decodable {
    let id: Int
    let nombres, apellidos, email, posicion_favorita, password: String
}
