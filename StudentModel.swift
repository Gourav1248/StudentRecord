//
//  StudentModel.swift
//  StudentRecord
//
//  Created by Gourav Joshi on 27/09/24.
//

import Foundation
import SwiftUI

struct StudentModel: Identifiable {
   var id = UUID()
   var enrollmentNo: String
   var fullName: String
   var email: String
   var address: String
   var standard: String
   var age: Int
   var profileImage: Image
}


let s1 = StudentModel(enrollmentNo: "s01", fullName: "Akash Pushkar", email: "akash@gmail.com", address: "52, Main street en", standard: "7th", age: 14, profileImage: Image("student1"))

let s2 = StudentModel(enrollmentNo: "s02", fullName: "Brajesh Sharma", email: "brajesh@gmail.com", address: "52, Main street en", standard: "7th", age: 14, profileImage: Image( "student2"))
let s3 = StudentModel(enrollmentNo: "s03", fullName: "Chandrakanta Dagadkher", email: "chandra@gmail.com", address: "62, Main street end park", standard: "7th", age: 14, profileImage: Image( "student3") )
let s4 = StudentModel(enrollmentNo: "s04", fullName: "Deepak Chahar", email: "deepak@gmail.com", address: "52, Main street en", standard: "7th", age: 14, profileImage: Image("student4")  )
let s5 = StudentModel(enrollmentNo: "s05", fullName: "Dinesh Kartik", email: "dinesh@gmail.com", address: "59, Main street en", standard: "7th", age: 14, profileImage: Image("student5"))
let s6 = StudentModel(enrollmentNo: "s06", fullName: "Vinisha Vakhani", email: "vinisha@gmail.com", address: "32, Main street en", standard: "7th", age: 14, profileImage: Image("student6"))
let s7 = StudentModel(enrollmentNo: "s07", fullName: "Anjali Sharma", email: "anjali@gmail.com", address: "22, Main street en", standard: "7th", age: 14, profileImage: Image("student7"))

let arrStudents = [s1, s2, s3, s4, s5, s6, s7]
