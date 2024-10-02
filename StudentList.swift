//
//  StudentList.swift
//  StudentRecord
//
//  Created by Gourav Joshi on 27/09/24.
//

import SwiftUI

struct StudentList: View {
    var body: some View {
       VStack{
          List(arrStudents) { obStudent in
             NavigationLink(destination: StudentDetailView(obStudent: obStudent)) {
                StudentCellView(obStudent: obStudent)
             }
          }.listStyle(.grouped)
       }.navigationTitle("List")
          .toolbar {
             NavigationLink(destination: StudentRegistrationView()) {
                Text("Add")
             }
          }
    }
}

struct StudentList_Previews: PreviewProvider {
    static var previews: some View {
        StudentList()
    }
}

struct StudentCellView: View {
   @State var obStudent: StudentModel
   var body: some View {
      HStack {
         MyImageView(imageName: obStudent.profileImage)
         VStack(alignment: .leading) {
            Text("Full Name: \(obStudent.fullName)")
            Text("Enrollment No: \(obStudent.enrollmentNo)")
            Text("Class: \(obStudent.standard)")
         }
      }
   }
}

struct MyImageView: View {
   var imageName: Image
    var body: some View {
       imageName
         .resizable()
         .aspectRatio(contentMode: .fit)
         .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.15)
         .clipShape(Circle())
         .overlay(Circle().stroke(Color.white, lineWidth: 3))
         .overlay(Circle().stroke(Color.white, lineWidth: 3))
         .shadow(color:.gray, radius: 10)
         .padding()
    }
}

struct ImageDetailView: View {
   var imageName: Image
    var body: some View {
       imageName
         .resizable()
         .aspectRatio(contentMode: .fit)
         .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.25)
         .clipShape(Circle())
         .overlay(Circle().stroke(Color.white, lineWidth: 3))
         .overlay(Circle().stroke(Color.white, lineWidth: 3))
         .shadow(color:.gray, radius: 10)
         .padding()
    }
}
