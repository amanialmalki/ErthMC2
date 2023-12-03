//
//  secondround.swift
//  ErthMC2
//
//  Created by mnerah awn on 19/05/1445 AH.
//
import SwiftUI

struct secondround: View {
    let title: String = "المكونات لاي اكله؟"


    let items: [String] = ["جريش", "مرقوق", "سليق"]

    @State private var selectedOption: String?
    @State private var correctAnswer: String?
    @State private var isAnswerCorrect = false
    @State private var showNextView = false
    var body: some View {
        NavigationStack {
            NavigationLink(destination: thirdround(), isActive: $showNextView) {
                EmptyView()
            }
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack {
                    Image("Q2")
                        .resizable()
                        .frame(width: 200, height: 200)
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
                            if item == "جريش" {
                                
                                selectedOption = item
                                correctAnswer = item
                                isAnswerCorrect = true
                                showNextView = true
                                
                                let buttonBackgroundColor = Color.green
                                
                                
                                
                            } else {
                                
                                selectedOption = item
                                correctAnswer = "جريش"
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
                    if let correctAnswer = correctAnswer, !isAnswerCorrect, let selectedOption = selectedOption {
                                        Text("الإجابة الصحيحة: \(correctAnswer)")
                                            .foregroundColor(.button)
                                            .padding()
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                }
                .padding()
                
            }
        }//Navigationstack
    }

 
}

struct secondround_Previews: PreviewProvider {
    static var previews: some View {
        secondround()
    }
}


