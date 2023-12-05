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

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    
func buttonPressed() {
     print("button pressed") }

    
var body: some View {
      
        //NavigationSplitView {
           
             ZStack{
            
            
            
            
            
                 VStack{
                     // NavigationLink(
                     
                     
                     
                     Image("point")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 40, height: 40)
                         .offset(x:150,y:-90)
                     
                     
                     //صورة اللبس
                     Image("AA")
                         .padding(.bottom,20)
                     
                     
                     
                     
                     Text(" خمن الناقص في الصورة")
                         .padding(.bottom, 40)
                         .font( .system(size: 30, weight: .black ,design: .serif))
                         .fontWeight(.bold)
                         .foregroundColor(Color(hue: 0.096, saturation: 0.586, brightness: 0.253, opacity: 1.0))
                         .italic()
                     //.font(.largeTitle)
                     
                     
                     // المقطع
                     Button (action:{
                         buttonPressed()
                     }) {
                         Image("المقطع") }
                     
                     // كرته
                     Button (action:{
                         buttonPressed()
                     }) {
                         
                         Image("كرته") }
                     
                     
                     
                     
                     // هامه
                     Button (action:{
                         buttonPressed()
                     }) {
                         Image("الهامه") }
                     
                     
                     
                 
                
            }
            
            
                        }
            }
            }
struct screenb_Previews: PreviewProvider {
    static var previews: some View {
        screenb_Previews()
            .background(
                Image("bg1")
                    .resizable()
                    .padding(.top, -20.0)
.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                )
    }
}

