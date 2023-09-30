//
//  ContentView.swift
//  ChatApp
//
//  Created by あ on 2023/09/28.
//

import SwiftUI
import ScreenTime



struct ContentView: View {
    @State private var isHidden = false
    @State private var home = 0
    @State private var location = "home"
    @State private var UserID=""
    //message camera serch profile

    var body: some View {
        VStack {
            if !isHidden {
                Image("icon")
                    .resizable()
                    .frame(width: 90, height: 90)
            }
            
            if home==1 {
                
                VStack{
                    HStack{
                        Rectangle()
                            .frame(width: 22, height:22)
                        Rectangle()
                            .frame(width: 22, height:22)
                        Rectangle()
                            .frame(width: 22, height:22)
                    }
                    
                    
                }
                .frame(/*maxWidth: .infinity*/height:0)
                .background(Color.blue)
                
                
                        HStack(){
                            
                            Image(systemName: "house")
                                .resizable()
                                .frame(width: 37, height: 35)
                                .padding()
                            Image(systemName: "message")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .padding()
                            Image(systemName: "camera")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .padding()
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 37, height: 35)
                                .padding()
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .padding()
                        }
                        .clipped().frame(maxWidth: .infinity)
                
                        .background(Color.red)
                        .ignoresSafeArea()
                        .frame(maxWidth: .infinity)
                    .offset(x: 0, y:UIScreen.main.bounds.size.height/2-50)
                
                }
        }
        .onAppear {

            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { timer in
                isHidden = true
                Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { timer in
                    home = 1
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

