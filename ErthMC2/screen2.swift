//
//  screen1.swift
//  ErthMC2
//
//  Created by Baynah Khalid Bin Hathlin on 21/05/1445 AH.
//

//
//  ContentView.swift
//  final pro
//
//  Created by Baynah Khalid Bin Hathlin on 15/05/1445 AH.
//

import SwiftUI
import SwiftData

struct screen2: View {
    @Environment(\.modelContext) private var modelContext
    
func buttonPressed() {
     print("button pressed") }

    
var body: some View {
      
        //NavigationSplitView {
           
             ZStack{
                 Image("new")
                     .resizable()
                     .scaledToFill()
                     .edgesIgnoringSafeArea(.all)
                     .padding(.bottom,50 )
            
            
            
            
                 VStack{
                     // NavigationLink(
                     
                     
                     
                     Image("point")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 40, height: 40)
                         .offset(x:150,y:-30)
                     
                     
                     //صورة اللبس
                     Image("AA")
                         .padding(.bottom,10)
                     
                     
                     
                     
                     Text(" خمن الناقص في الصورة")
                         .padding(.bottom, 400)
                         .font( .system(size: 30, weight: .black ,design: .serif))
                         .fontWeight(.bold)
                         .foregroundColor(Color(hue: 0.096, saturation: 0.586, brightness: 0.253, opacity: 1.0))
                         .italic()
                     //.font(.largeTitle)
                     
                 }
                     // المقطع
                     Button (action:{
                         buttonPressed()
                     }) {
                         Image("المقطع") }
                     .padding(.top, 100)
                 
                     // كرته
                     Button (action:{
                         buttonPressed()
                     }) {
                         
                         Image("كرته") }
                     .padding(.top, 250)
                     
                     
                     
                     // هامه
                     Button (action:{
                         buttonPressed()
                     }) {
                         Image("الهامه") }
                     .padding(.top, 400)
                     
                     
                     
                 
                
            }
            
            
                        }
            }
            
struct screen2_Previews: PreviewProvider {
    static var previews: some View {
     screen2()
    }
}

