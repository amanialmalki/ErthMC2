//
//  ContentView.swift
//  ErthMC2
//
//  Created by Amani Almalki on 14/05/1445 AH.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        
            ZStack {
                Color("Background")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("اختر منطقة واستكشفها")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 60)
                    ZStack{
                        Image("NewMap")
                            .resizable()
                            .scaledToFit()
                        //
                        
                        NavigationLink {
                            
                            
                        } label: {
                            Rectangle()
                                .fill(Color.red.opacity(0))
                                .frame(width: 40,height: 80)
                                .rotationEffect(Angle(degrees: -15))
                                .offset(x:0,y:12)
                        }
                        
                        /*
                        Button(action: {
                            print("Right clicked")
                        }) {
                            
                            HStack(spacing: 0)
                            {
                                Rectangle()
                                    .fill(Color.red.opacity(0))
                                    .frame(width: 40,height: 66)
                                Rectangle()
                                    .fill(Color.red.opacity(0))
                                    .frame(width:40,height: 35)
                            }
                        }.offset(x: 80, y: 40)
                        //
                        
                        
                        Button(action: {
                            print("left clicked")
                        }) {
                            Rectangle()
                                .fill(Color.red.opacity(0))
                                .frame(width: 40,height: 60)
                                .rotationEffect(Angle(degrees: -15))
                            
                        }.offset(x: -60, y: 20)
                        
                        //
                        Button(action: {
                            print("Botoom clicked")
                        }) {
                            Rectangle()
                                .fill(Color.red.opacity(0))
                                .frame(width:55,height: 20)
                            
                        }.offset(x: -6, y: 84)
                        
                        //
                        Button(action: {
                            print("Top Clicked")
                        }) {
                            Rectangle()
                                .fill(Color.red.opacity(0))
                                .frame(width: 60,height: 50)
                            
                        }.offset(x: -60, y: -66)*/
                        
                    }
                }
            }
            
        }
    }//end body


#Preview {
    MapView()
    
}

struct secondView: View {
    var body: some View {
        VStack {
            Text("This is another view!")
        }
       
    }
}
