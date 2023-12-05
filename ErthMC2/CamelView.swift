//
//  CamelView.swift
//  ErthMC2
//
//  Created by Rooa ahmed on 21/05/1445 AH.
//

import SwiftUI

struct CamelView: View {
    @State private var camelPosition: CGPoint = CGPoint(x: 120.0, y: 70.0)
    @State private var isWalking = false
    @State private var stepsCount = 0
    @State private var currentStepCount = 0
    @State private var navigationActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("new")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .padding(.bottom, 50)
                
                Image("poxpoint")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.bottom, 750.0 )
                    .padding(.leading, 255.0)
                
                Image("map")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 300)
                    .padding(.bottom, 150)
                
                Image("camel")
                    .offset(x: camelPosition.x, y: camelPosition.y)
                    .padding(.bottom, 530.0)
                    .padding(.trailing, 200)
                
                Button(action: {
                    withAnimation(Animation.linear(duration: 2.0)) {
                        isWalking.toggle()
                        stepsCount = 0
                        camelPosition = CGPoint(x: 220.0, y: 220.0)
                        self.walkCamel()
                    }
                }) {
                    Image(isWalking ? "استكشف" : "استكشف") // Dynamic button label
                        .padding(.top, 200)
                        .foregroundColor(.black)
                        .cornerRadius(8)
                        .padding(.top, 20)
                }
                
                // Show NavigationLink conditionally
                NavigationLink(
                    destination: secondround(),
                    isActive: $navigationActive
                ) {
                    EmptyView()
                    
                }
                
                .navigationBarTitle("", displayMode: .inline)
            }
        }
    }
        private func walkCamel() {
            guard isWalking else { return }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation(Animation.linear(duration: 2.0)) {
                    if stepsCount < 20 {
                        let offset = calculateZigzagOffset(step: currentStepCount)
                        camelPosition = CGPoint(x: camelPosition.x + offset.x, y: camelPosition.y - offset.y)
                        camelPosition.x -= 10
                        stepsCount += 1
                        currentStepCount += 1
                        self.walkCamel()
                    } else {
                        isWalking = false
                        navigationActive = true
                    }
                }
            }
        }
    }
        private func calculateZigzagOffset(step: Int) -> CGPoint {
            let angle = Double(step) * 0.5
            let xOffset = sin(angle) * 20
            let yOffset = cos(angle) * 20
            return CGPoint(x: xOffset, y: yOffset)
            
        }
    

    struct CamelView_Previews: PreviewProvider {
        static var previews: some View {
            CamelView()
        }
    }

