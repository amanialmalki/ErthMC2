//
//  SplashScreen.swift
//  ErthMC2
//
//  Created by Amani Almalki on 19/05/1445 AH.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive : Bool = false
        @State private var size = 0.8
        @State private var opacity = 0.5
    var body: some View {
        if isActive {
                  MapView()
              }else {
       
                  ZStack{
                      Color("Background")
                          .ignoresSafeArea(.all)
                      
                      VStack{
                          //LOGO START HERE
                          Image("صقر")
                              .resizable()
                              .scaledToFit()
                              .offset(x:0,y:-30)
                              .frame(width: 350,height: 480)
                      }
                      // animation starts here
                                     .scaleEffect(size)
                                     .opacity(opacity)
                                     .onAppear{
                                         withAnimation(.easeIn(duration: 1.1)){
                                             self.size = 1.0
                                             self.opacity = 1.00
                                         }
                                         
                                     } // 1st on appear ends here
                                     
                                 } // zstack ends here
                  .onAppear {
                                 DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                     withAnimation {
                                         self.isActive = true
                                         
                                     }
                                     
                                 }
                                 
                             } // 2ed on appear ends here
                             
                         } // if ends here
    }
}

#Preview {
    SplashScreen()
}
