//
//  ContentView.swift
//  Final_SastreOkamoto
//
//  Created by alumno on 03/05/22.
//

import SwiftUI

struct ContentView: View {
  @StateObject private var vm = LocationsViewModel()
  var body: some View {
      VStack{
        Login().environmentObject(vm)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
