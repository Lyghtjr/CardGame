//
//  ContentView.swift
//  CardGame
//
//  Created by Abhinav Rai on 29/08/21.
//

import SwiftUI

struct ContentView: View {
    @State var  playerCard="back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo").aspectRatio(contentMode:.fill)
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card"+String(playerRand)
                    
                    cpuCard = "card"+String(cpuRand)
                    
                    if(playerRand>cpuRand){
                        playerScore += 1
                    }
                    else if(cpuRand>playerRand){
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        
                        Text("Player1").font(.title).foregroundColor(.white).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                       
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(.white).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.title).foregroundColor(.white).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(.white).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
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
