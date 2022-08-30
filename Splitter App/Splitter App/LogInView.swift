//
//  LogInView.swift
//  Splitter App
//
//  Created by John Johnston on 8/30/22.
//

import SwiftUI

struct LogInView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var createAccountPopUp: Bool = false
    @State var navigateToHomePage:Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                Circle().stroke(lineWidth: 5).frame(height: 200).padding()
                UsernameAndPassword(username: $username, password: $password)
                Button(action: {
                    //Create a log in function
                    //verify account details
                    //retreive data from api/db
                }, label: {
                    Text("Login").padding()
                }).frame(width:300).background(.tint).foregroundColor(.white).cornerRadius(20).padding()
                
                Button(action: {
                    createAccountPopUp = true
                }, label: {
                    Text("Dont Have an Account? Create One!")
                }).padding()
            }.padding()
            
                .navigationTitle(Text("Log In"))
        }.sheet(isPresented: $createAccountPopUp, content: {
            CreateAccountView()
        })
    }
}

struct UsernameAndPassword: View{
    @Binding var username: String
    @Binding var password: String
    var body: some View{
        VStack(alignment: .leading){
            Text("Username").bold()
            TextField("j.appleseed", text: $username).padding().background(.tertiary).cornerRadius(20)
            Text("Password").bold()
            TextField("password", text: $password).padding().background(.tertiary).cornerRadius(20)
        }
    }
}



struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
