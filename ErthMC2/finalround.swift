//
//  finalround.swift
//  ErthMC2
//
//  Created by mnerah awn on 19/05/1445 AH.
//

//
//  thirdround.swift
//  ErthMC2
//
//  Created by mnerah awn on 19/05/1445 AH.
//
import SwiftUI

struct finalround: View {
    let title: String = "خمن الناقص من الصوره؟"

    let items: [String] = ["الدقله", "المرودن", "الكرته"]

    @State private var selectedOption: String?
    @State private var correctAnswer: String?
    @State private var isAnswerCorrect = false
    @State private var showNextView = false

    var body: some View {
        NavigationStack {
            NavigationLink(destination: endgame(), isActive: $showNextView) {
                EmptyView()
            }
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack {
                    Image("Q4")
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
                            if item == "العرضه" {
                                
                                selectedOption = item
                                correctAnswer = item
                                isAnswerCorrect = true
                                showNextView = true 
                                
                                let buttonBackgroundColor = Color.green
                                
                                
                                
                            } else {
                                
                                selectedOption = item
                                correctAnswer = "العرضه"
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
        }//navigationStack
    }

 
}

struct finalround_Previews: PreviewProvider {
    static var previews: some View {
        finalround()
    }
}

