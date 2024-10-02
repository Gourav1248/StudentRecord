//
//  ContentView.swift
//  StudentRecord
//
//  Created by Gourav Joshi on 27/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       NavigationView {
          VStack {
             Text("Student Records").foregroundColor(.blue).font(.largeTitle)
             Spacer()
             NavigationLink(destination: StudentList()) {
                Text("View List")
             }
          }.padding()
             .navigationTitle("Student")
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
