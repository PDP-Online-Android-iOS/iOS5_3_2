//
//  ContentView.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 25/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var textFieldEmail = ""
    @State var textFieldPassword = ""
    
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Email")
                
                TextField("Email", text: $textFieldEmail)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Password")
                
                TextField("Password", text: $textFieldPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            VStack(alignment: .center, spacing: 10) {
                ProgressView()
                
                Text("Loading...")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
