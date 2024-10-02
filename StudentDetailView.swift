//
//  StudentDetailView.swift
//  StudentRecord
//
//  Created by Gourav Joshi on 27/09/24.
//

import SwiftUI

struct StudentDetailView: View {
   var obStudent: StudentModel
    var body: some View {
       ScrollView {
          VStack(alignment: .leading) {
             HStack{
                ZStack {
                   Image("nature").frame(width: UIScreen.main.bounds.width)
                      .aspectRatio(contentMode: .fit)
                   ImageDetailView(imageName: obStudent.profileImage)
                }
                
             }
             HStack {
                Text("Full Name: ")
                Text(obStudent.fullName)
             }.padding()
                
             HStack{
                Text("Email: ")
                Text(obStudent.email)
             }.padding()
             HStack{
                Text("Age: ")
                Text("\(obStudent.age)")
             }.padding()
             
             HStack{
                Text("Class: ")
                Text(obStudent.standard)
             }.padding()
             HStack{
                Text("Entrollemnt no: ")
                Text(obStudent.enrollmentNo)
             }.padding()
             Spacer()
             HStack(alignment: .center){
                Button {
                   
                } label: {
                   Text("Edit Profile").frame(width: UIScreen.main.bounds.width * 0.88, height: 40)
                }.background(.yellow)
                   .cornerRadius(8)
             }.padding()
          }
       }
    }
}

struct StudentDetailView_Previews: PreviewProvider {
    static var previews: some View {
       StudentDetailView(obStudent: s3)
    }
}
