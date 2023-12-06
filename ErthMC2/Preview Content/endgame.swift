//
//  endgame.swift
//  ErthMC2
//
//  Created by mnerah awn on 16/05/1445 AH.
//

import SwiftUI

struct endgame: View {
    var body: some View {
       
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                VStack {
                    Image("صقر النهايه")
                        .resizable()
                        . frame(width: 200, height: 200)
                        .foregroundColor(.green)
                        .padding()
                    NavigationLink {
                        MapView()
                    }
                  label: {
                        Text("انهاء اللعبه")
                            .foregroundColor(.white)
                            .frame(width: 215, height: 69)
                            .background(Color.button)
                            .foregroundColor(.gray)
                            .cornerRadius(13)
                        
                    }
                }
                .padding(.bottom, -3.0)
            }
      
    }
    
}

#Preview {
    endgame()
}
