//
//  Juegos.swift
//  Final_SastreOkamoto
//
//  Created by alumno on 04/05/22.
//

import Foundation

struct Juego: Identifiable {
  var id = UUID()
  var direccion: String
  var image: String
  var fecha: Date
  var jugadoresMin: Int
  var jugadoresMax: Int
}

var juegosList = [Juego(direccion: "Estadio Azteca", image:    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Estadio_Azteca_cancha_vista_norte.jpg/1200px-Estadio_Azteca_cancha_vista_norte.jpg", fecha: Date(), jugadoresMin: 10, jugadoresMax: 25),
                  Juego(direccion: "Universidad Anáhuac México Norte", image:    "https://www.anahuac.mx/mexico/EscuelasyFacultades/cienciasdeldeporte/sites/default/files/gbb-uploads/instalaciones-at5j90.jpg", fecha: Date(), jugadoresMin: 8, jugadoresMax: 15),
                   Juego(direccion: "El Polvorin", image:    "https://images.adsttc.com/media/images/591f/17c6/e58e/ce9f/9e00/01b0/medium_jpg/El_Polvor%C3%ADn_Nadia_Valenzuela_Archdaily-4.jpg?1495209912", fecha: Date(), jugadoresMin: 10, jugadoresMax: 25),
                   Juego(direccion: "Ciudad Universitaria", image:    "https://upload.wikimedia.org/wikipedia/commons/5/56/Estadio_olimpico_universitario_unam.jpg", fecha: Date(), jugadoresMin: 10, jugadoresMax: 25)
                    ]
