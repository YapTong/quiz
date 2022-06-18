//
//  ContentView.swift
//  quiz
//
//  Created by Chan Yap Tong on 15/6/22.
//

import SwiftUI

struct ContentView: View {
    
    let Questions = [
        question(setup: "How many days are there in a week?",           option1: "1                  ",
                 option2: "2                  ",
                 option3: "7                  ",
                 option4: "4                  "),
        
        question(setup: "How many eyes do we have?",
                 option1: "1                  ",
                 option2: "3                  ",
                 option3: "2                  ",
                 option4: "4                  "),
        
        question(setup: "How many ears do we have?",
                 option1: "1                  ",
                 option2: "3                  ",
                 option3: "2                  ",
                 option4: "4                  "),
        
    ]
    @State var isAlertShown = false
    @State var Questionsindex = 0
    @State var isFeedbackShown = false
    @State var buttonPressed = false
    
    var body: some View {
        
        
        
        VStack{
            Image("QUIZ")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
            
            Text(Questions[Questionsindex].setup)
                .padding()
                .font(.title)
            
            HStack{
                Button {
                    print("1")
                    
                } label: {
                    Text(Questions[Questionsindex].option1)
                }
                .padding()
                .background(.red)
                .foregroundColor(.black)
                .font(.title)
                .cornerRadius(15)
                
                Button {
                    print("2")
                } label:{
                    Text(Questions[Questionsindex].option2)
                }
                .padding()
                .background(.blue)
                .foregroundColor(.black)
                .font(.title)
                .cornerRadius(15)
                
                
            }
            HStack{
                Button {
                    print("3")
                    isAlertShown = true
                } label: {
                    Text(Questions[Questionsindex].option3)
                }
                .padding()
                .background(.yellow)
                .foregroundColor(.black)
                .font(.title)
                .cornerRadius(15)
                
                Button {
                    print("4")
                } label:{
                    Text(Questions[Questionsindex].option4)
                }
                .padding()
                .background(.green)
                .foregroundColor(.black)
                .font(.title)
                .cornerRadius(15)
            }
            .onTapGesture {
                Questionsindex += 1
                if Questionsindex == Questions.count {
                    Questionsindex = 0
                }
            }
            
            Text("Press the middle of the buttons to skip.")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
            
            
            
            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
            
            
        }
