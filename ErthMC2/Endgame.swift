//
//  Endgame.swift
//  ErthMC2
//
//  Created by Amani Almalki on 22/05/1445 AH.
//

import SwiftUI

struct Endgame: View {
    @State private var navigationActive = false
    var body: some View {
       
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                VStack {
                    
                    Image("النهايه")
                        .resizable()
                        . frame(width: 200,height: 400)
                        .foregroundColor(.green)
                    NavigationLink(
                        destination: CamelView(),
                        isActive: $navigationActive
                    ) {
                    label: do {
                        Text("انهاء اللعبه ")
                            .foregroundColor(.white)
                            .frame(width: 215, height: 69)
                            .background(Color.button)
                            .foregroundColor(.gray)
                            .cornerRadius(13)
                        
                    }
                    }
                    .padding(.bottom, 60)
                    
                }
            }
        

    }
}

#Preview {
    Endgame()
}
