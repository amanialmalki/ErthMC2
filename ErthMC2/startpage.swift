//
//  startpage.swift
//  ErthMC2
//
//  Created by mnerah awn on 16/05/1445 AH.
//

import SwiftUI

struct startpage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                VStack {
                    Image("صقر")
                        .resizable()
                        . frame(width: 200,height: 200)
                        .foregroundColor(.green)
                    NavigationLink {
                        firstround()
                    }
            label: {
                        Text("ابدا اللعب ")
                            .foregroundColor(.white)
                            .frame(width: 215, height: 69)
                            .background(Color.button)
                            .foregroundColor(.gray)
                            .cornerRadius(13)
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                }
                .padding(.bottom, 21.0)
            }
        }//navigation stack
    }
    
}


#Preview {
    startpage()
}
