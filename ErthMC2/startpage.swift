//
//  startpage.swift
//  ErthMC2
//
//  Created by mnerah awn on 16/05/1445 AH.
//

import SwiftUI

struct startpage: View {
    @State private var navigationActive = false
    var body: some View {
       
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                VStack {
                    Image("البدايه")
                        .offset(x:27,y:0)
                    NavigationLink(
                        destination: firstround(),
                        isActive: $navigationActive
                    )  {
                    label: do {
                        Text("ابدا اللعب ")
                            .foregroundColor(.white)
                            .frame(width: 215, height: 69)
                            .background(Color.button)
                            .foregroundColor(.gray)
                            .cornerRadius(13)
                            .offset(x:0,y:-130)
                    }
                    }
                    .padding(.bottom, 60)
                }
            }
      
    }
}

#Preview {
    startpage()
}
