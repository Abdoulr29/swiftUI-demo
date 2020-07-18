//
//  ContentView.swift
//  SwiftUI01
//
//  Created by Developer on 7/18/20.
//  Copyright © 2020 Developer. All rights reserved.
//

import SwiftUI

let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""

    
    var body: some View {
        
        VStack{
            Text("Hello You!").fontWeight(.semibold).font(.largeTitle).padding(.bottom, 16)
            Image("logo").resizable().aspectRatio(contentMode: .fill).clipped().frame(width: 150, height: 150).cornerRadius(150).padding(.bottom,70)
            TextField("username", text: $username).padding().background(lightGrayColor).cornerRadius(5.0).padding(.bottom, 20)
            SecureField("password", text: $password).padding().background(lightGrayColor).cornerRadius(5.0).padding(.bottom, 20)
        
            
            Text("LOGIN").frame(width: 220, height: 30, alignment: .center).font(.headline).foregroundColor(.white).padding().background(Color.black).cornerRadius(35.0)

            

        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
