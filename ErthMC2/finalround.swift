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

    let items: [String] = ["الدقله", "المرودن", "المقطع"]

    @State private var selectedOption: String?
    @State private var correctAnswer: String?
    @State private var isAnswerCorrect = false
    @State private var showNextView = false

    var body: some View {
        NavigationStack {
            NavigationLink(destination: Endgame(), isActive: $showNextView) {
               // EmptyView()
            }
            ZStack {
                Image("Background")
                    .ignoresSafeArea()
                
                VStack {
                    Image("Q4")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .padding(.bottom, 10)
                        .aspectRatio(contentMode: .fit)
                        .offset(y: -240)
                }
                
                VStack(alignment: .center, spacing: 10) {
                    Text(title)
                        .foregroundColor(.button)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    
                    ForEach(items, id: \.self) { item in
                        Button(action: {
                            if item == "الدقله" {
                                
                                selectedOption = item
                                correctAnswer = item
                                isAnswerCorrect = true
                                showNextView = true 
                                
                                let buttonBackgroundColor = Color.green
                                
                                
                                
                            } else {
                                
                                selectedOption = item
                                correctAnswer = "الدقله: عبارة عن ثوب مطرز ويكون ذو قماش ثقيل ويلبس عادة فوق الثياب فالمناسبات "
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
                Image("round4")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .padding(.bottom,750)
            }
        }//navigationStack
    }

 
}

struct finalround_Previews: PreviewProvider {
    static var previews: some View {
        finalround()
    }
}

