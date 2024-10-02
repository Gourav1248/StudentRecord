//
//  StudentRegistrationView.swift
//  StudentRecord
//
//  Created by Gourav Joshi on 28/09/24.
//

import SwiftUI

struct StudentRegistrationView: View {
   @State var tfFullName: String = String()
   @State var tfEmail: String = String()
   @State var tfAge: String = String()
   @State var tfEnrollmentNo: String = String()
   @State var tfStandard: String = String()
   
    var body: some View {
       NavigationView {
          ScrollView{
             VStack(alignment: .leading){
                HStack (alignment: .center) {
                   Spacer()
                   Image("student7")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: UIScreen.main.bounds.width * 0.75, height: UIScreen.main.bounds.height * 0.25)
                      .clipShape(Circle())
                      .shadow(radius: 5)
                   
                   Button("Take Photo") {
                      
                   }.padding(.trailing)
                   
                }.clipShape(Rectangle())
                   .overlay(Rectangle().stroke(Color.black, lineWidth: 1))
                Form {
                   Text("Full Name:").padding(.leading)
                   TextField("Full Name", text: $tfFullName).padding(.leading)
                   
                   Text("Age").padding(.leading).padding(.top)
                   TextField("Enter age", text: $tfAge).padding(.leading)
                   
                   Text("Email").padding(.leading).padding(.top)
                   TextField("Email", text: $tfEmail).padding(.leading)
                  
                   Text("Enrollment No").padding(.leading).padding(.top)
                   TextField("Enrollment No", text: $tfEnrollmentNo).padding(.leading)
                   
                   Text("Standard").padding(.leading)
                   TextField("Class ", text: $tfStandard).padding(.leading)
                }.frame(height: 550)
             
                HStack(alignment: .center) {
                   Spacer()
                   Button {
                      self.registerStudent()
                   } label: {
                      Text("Save").foregroundColor(.white)
                         .frame(width: UIScreen.main.bounds.width * 0.75, height: 40)
                         .background(.green)
                         .cornerRadius(5)
                   }
                   Spacer()
                }.padding(.top, 10)
             }
          }
       }
    }
   
   func registerStudent() {
      if checkValidations().count > 0 {
         print("Validation error = \(checkValidations())")
      } else {
         // Student registration process
      }
   }
   
   private func checkValidations() -> String {
      var strMsg = ""
      if tfFullName.count == 0 {
         strMsg = "Please enter full name"
      } else if tfAge.count == 0 {
         strMsg = "Please enter age"
      } else if tfEmail.count == 0 {
         strMsg = "Please enter email"
      } else if tfEnrollmentNo.count == 0 {
         strMsg = "Please enter enrollment no"
      }
      
      return strMsg
   }
}

struct StudentRegistrationView_Previews: PreviewProvider {
    static var previews: some View {
       Group {
          StudentRegistrationView().previewDevice("iPhone SE")
          StudentRegistrationView().previewDevice("iPhone 14")
          StudentRegistrationView().previewDevice("iPhone 14 Pro")
          StudentRegistrationView().previewDevice("iPad Air (5th generation)")
       }
        
    }
}




/*
 HStack(alignment: .center) {
    Spacer()
    Button {
       //
    } label: {
       Text("Save").foregroundColor(.white)
          .frame(width: UIScreen.main.bounds.width * 0.75, height: 40)
          .background(.green)
          .cornerRadius(5)
    }
    Spacer()
 }.padding()
 */
