//
//  ContentView.swift
//  tests
//
//  Created by Adham Raouf on 13/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var playercard = "card5"
    @State private var CPUcard = "card7"
    @State private var playerScore = 0
    @State private var CPUScore = 0
    
    var body: some View {
      
        ZStack{
            
            Image("background")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                    Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(CPUcard)
                    Spacer()
                    
                }
                Spacer()
//                Image("dealbutton")?
                Button(action: {
                    // generate a random number betweeen 2 and 14
                    let playerRand = Int.random(in: 2...14)
                      let cpuRand = Int.random(in: 2...14)
                    
                    
                    
                    // update card
                    playercard = "card" + String(playerRand)
                    CPUcard = "card" + String(cpuRand)
                    
                    // update  score
//                    playerScore += 1
//                     CPUScore += 1
                    if (playerRand > cpuRand){
                        playerScore += 1
                        
                    }
                    else if (cpuRand > playerRand) {
                        CPUScore += 1
                    }
                    else{
                        playerScore += 0
                        CPUScore += 0
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
//                        Spacer()
                        Text("player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
//                        Spacer()
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
//                        Spacer()
                    }
                    Spacer()
                    VStack{
//                        Spacer()
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
//                        Spacer()
                        Text(String(CPUScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
//                        Spacer()
                        
                        
                        
                    }
                    Spacer()
                    
                    
                }
                Spacer()
            }
        
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
