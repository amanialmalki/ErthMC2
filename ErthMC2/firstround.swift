//
//  firstround.swift
//  ErthMC2
//
//  Created by mnerah awn on 16/05/1445 AH.
//

import SwiftUI

struct firstround: View {
    let title: String = "خمن الناقص بالصوره"

    let items: [String] = ["هامه", "مقطع", "محزم"]

    @State private var selectedOption: String?
    @State private var correctAnswer: String?
    @State private var isAnswerCorrect = false

    var body: some View {
        NavigationStack{
        ZStack {
            Color("Background")
                .ignoresSafeArea()

            VStack {
                Image("Q1")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .padding(.bottom, 10)
                    .aspectRatio(contentMode: .fit)

                Spacer()
            }

            VStack(alignment: .center, spacing: 10) {
                Text(title)
                    .foregroundColor(.button)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()

                ForEach(items, id: \.self) { item in
                    Button(action: {
                        if item == "مقطع" {
                           
                            selectedOption = item
                            correctAnswer = item
                            isAnswerCorrect = true

                         
                            let buttonBackgroundColor = Color.green

                       
                           
                        } else {
                           
                            selectedOption = item
                            correctAnswer = "مقطع"
                            isAnswerCorrect = false

                          
                            let buttonBackgroundColor = Color.red

                         
                           
                        }
                    }) {
                        Text(item)
                            .foregroundColor(.white)
                            .font(.body)
                            .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                            .background(selectedOption == item ? (isAnswerCorrect ? Color.green : Color.red) : .button)
                            .cornerRadius(13)
                    }
                }
            }
            .padding()
        }
    }
 }

 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        firstround()
    }
}

