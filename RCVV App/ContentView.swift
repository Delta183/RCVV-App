//
//  ContentView.swift
//  RCVV App
//
//  Created by Daniel Figueroa on 2023-01-13.
//

import SwiftUI

struct ContentView: View {

    // Boolean for controlling the state of the drawer
    @State var isOpen = false
    @State private var readyToNavigate : Bool = false

    var body: some View {
        DrawerView(isOpen: $isOpen) {
            // Main content view
            Color.white
            // overall Vstack
            VStack {
                // Header HStack
                HStack {
                    Button(action: {
                        withAnimation {
                            isOpen.toggle()
                        }
                    }) {
                    // The rendering mode makes it so that the custom immage color can change
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .frame(width: 30, height: 20)
                            .foregroundColor(Color.black)
                    }.padding(.leading, 10)
                    Spacer()
                    Image("RCVV_Logo")
                        .resizable()
                        .frame(width: 100, height: 50)
                        .offset(x: -20)
                    Spacer()
                }
                // Items VStack
                // VStack end
                ScrollView{
                    ItemComponent()
                    ItemComponent()
                    ItemComponent()
                }
                Spacer()
            } // Overall Vstack end
        } drawer: {
            // Drawer content view
            Color.white
            VStack {
                // Drawer items
                Group {
                    HStack{
                        Image(systemName: "house.fill")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("Home").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                    
                    HStack{
                        Image(systemName: "person.3")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("Programs").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                    
                    HStack{
                        Image(systemName: "book")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("Resources").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                    
                    HStack{
                        Image(systemName: "dollarsign.circle")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("Donate").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                    
                    HStack{
                        Image(systemName: "cart")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("Shop").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                    
                    HStack{
                        Image(systemName: "hand.raised")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("Volunteer Portal").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                }
                Divider().frame(height:1).overlay(.black)
                Group{
                    HStack{
                        Image(systemName: "info.circle")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("About Us").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                    
                    HStack{
                        Image(systemName: "envelope")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("Contact Us").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                    
                    HStack{
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("Notifications").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                    
                    HStack{
                        Image(systemName: "gear")
                            .resizable()
                            .frame(width: 32, height: 28)
                        Text("Settings").font(.system(size: 18))
                        Spacer()
                    }.padding(.leading, 15.0).padding(.bottom, 10)
                }
                Button("Hide drawer") {
                    withAnimation {
                        isOpen.toggle()
                    }
                }// Button end
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ItemComponent: View{
    var body: some View{
        VStack{
            Image("eveningSky")
                .resizable()
                .frame(width: 370, height: 200)
                .cornerRadius(15)
            VStack(alignment: .leading){
                Text("Title").font(.system(size:20).bold())
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .lineLimit(3)
                HStack {
                    HStack{
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Mark as favourite").font(.system(size: 16))
                    }
                    .padding(.all, 10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    
                    HStack{
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Share").font(.system(size: 16))
                    }
                    .padding(.all, 10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    
                }
            }.padding(.leading, 10).padding(.bottom, 10)
        }.frame(width: 370)
            .background(Color.pink)
            .cornerRadius(15)
    }
}
