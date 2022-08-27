//
//  ContentView.swift
//  Splitter App
//
//  Created by John Johnston on 8/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CreateAccountView()
    }
}

struct CreateAccountView: View{
    @State var fName: String = ""
    @State var lName: String = ""
    @State var email: String = ""
    
    @State var username: String = ""
    @State var password: String = ""
    @State var retypedPassword: String = ""
    
    var body: some View {
        NavigationView{
            Form{
                StandardProfilePicView()
                Section(header: Text("Name")){
                    TextField("First Name", text: $fName)
                    TextField("Last Name", text: $lName)
                }
                
                Section(header: Text("Email")){
                    TextField("Ex: j.appleseed@gmail.com", text: $email )
                }
                
                Section(header: Text("Username and Password")){
                    TextField("Username", text: $username)
                    TextField("Password", text: $password)
                    TextField("Retype Password", text: $retypedPassword)
                }
                
                Button(action: {
                    //create method that makes sure that none of the required fields are empty
                    //create method that checks if password matches the retyped password
                    //create method that sends data to the database
                }, label: {
                    Text("Create Account")
                })
            }
            
            .navigationTitle(Text("Create Account"))
        }
    }
}

 struct StandardProfilePicView: View {
    var body: some View {
        ZStack{
            Circle().stroke(lineWidth: 5).frame(height: 100)
            Circle().foregroundColor(.mint).frame(height: 100)
            //add image of a blank person
            //somehow create an image picker
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
