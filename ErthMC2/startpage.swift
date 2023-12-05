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
                    Image("البدايه")
                        .resizable()
                        . frame(width: 300,height: 400)
                        .foregroundColor(.green)
                    NavigationLink {
                        //firstround()
                    }
            label: {
                        Text("ابدا اللعب ")
                            .foregroundColor(.white)
                            .frame(width: 215, height: 69)
                            .background(Color.button)
                            .foregroundColor(.gray)
                            .cornerRadius(13)
                        
                    }
                }
                .padding(.bottom, 60)
            }
        }//navigation stack
    }
    
}


#Preview {
    startpage()
}
