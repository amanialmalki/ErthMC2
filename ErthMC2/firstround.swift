import SwiftUI

struct firstround: View {
    let title: String = "خمن الناقص بالصوره"
    let items: [String] = ["هامه", "مقطع", "محزم"]

    @State private var selectedOption: String?
    @State private var correctAnswer: String?
    @State private var isAnswerCorrect = false

    @State private var showNextView = false // Added state to control navigation

    var body: some View {
        NavigationStack {
            NavigationLink(destination: secondround(), isActive: $showNextView) {
                EmptyView()
            }

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
                                showNextView = true // Trigger navigation to NextView
                            } else {
                                selectedOption = item
                                correctAnswer = "مقطع"
                                isAnswerCorrect = false
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
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        firstround()
    }
}
