//
//  ContentView.swift
//  CrosswordPuzzle
//
//  Created by CSUFTitan on 5/15/20.
//  Copyright © 2020 Aiden Hadisi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var s11 = ""
    @State private var s12 = ""
    @State private var s13 = ""
    @State private var s21 = ""
    @State private var s22 = ""
    @State private var s23 = ""
    @State private var s31 = ""
    @State private var s32 = ""
    @State private var s33 = ""
    @State private var s34 = ""
    @State private var s35 = ""
    @State private var s43 = ""
    @State private var s44 = ""
    @State private var s45 = ""
    @State private var s53 = ""
    @State private var s54 = ""
    @State private var s55 = ""
    
    @State private var h1 = false
    @State private var h4 = false
    @State private var h5 = false
    @State private var h8 = false
    @State private var h9 = false
    @State private var v1 = false
    @State private var v2 = false
    @State private var v3 = false
    @State private var v6 = false
    @State private var v7 = false
    
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Text("CSUF Crossword").font(.largeTitle).foregroundColor(Color.white).padding(.top, 40.0)
            Text("Made by Aiden Hadisi").font(.caption).foregroundColor(Color.white)
            HStack {
                VStack {
                    Text("Across:").foregroundColor(.white)
                    Text("1. Santa ___ winds").foregroundColor(h1 ? .green : .red)
                    Text("4. ...ducks in a ___").foregroundColor(h4 ? .green : .red)
                    Text("5. Clemens alter ego").foregroundColor(h5 ? .green : .red)
                    Text("8. Kanga's son").foregroundColor(h8 ? .green : .red)
                    Text("9. Howards ___").foregroundColor(h9 ? .green : .red)

                }
                .padding(.leading, 20.0)
                Spacer()
                VStack {
                    Text("Down").foregroundColor(.white)
                    Text("1. ___ Garfunkel").foregroundColor(v1 ? .green : .red)
                    Text("2. Present tense timeframe").foregroundColor(v2 ? .green : .red)
                    Text("3. Cognizant of").foregroundColor(v3 ? .green : .red)
                    Text("6. Charged particle").foregroundColor(v6 ? .green : .red)
                    Text("7. Doze").foregroundColor(v7 ? .green : .red)
                }
            }
            .padding(20.0)
            Text("Red = Incorrect").foregroundColor(.white).padding(.top, 10.0)
  
            Button(action: {self.checkAnswers()}) {
                Text("Check Answers").foregroundColor(.white)
            }.padding(20.0).background(Color.black)
            
            Button(action: {self.showingAlert.toggle()}) {
                Text("Show Answers").foregroundColor(.white)
            }.padding(20.0).background(Color.red)
            Section {
                HStack {
                    TextField("1", text: $s11)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                    .font(Font.system(size: 50, design: .default))
                    .multilineTextAlignment(.center)
                    TextField("2", text: $s12)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                        .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    TextField("3", text: $s13)
                        .frame(width: 50.0, height: 50.0).background(Color.white)                    .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    Rectangle().frame(width: 50.0, height: 50.0)
                    Rectangle().frame(width: 50.0, height: 50.0)

                }
                HStack {
                    TextField("4", text: $s21)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                    .font(Font.system(size: 50, design: .default))
                    .multilineTextAlignment(.center)
                    TextField("", text: $s22)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                        .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    TextField("", text: $s23)
                        .frame(width: 50.0, height: 50.0).background(Color.white)                    .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    Rectangle().frame(width: 50.0, height: 50.0)
                    Rectangle().frame(width: 50.0, height: 50.0)

                }
                HStack {
                    TextField("", text: $s31)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                    .font(Font.system(size: 50, design: .default))
                    .multilineTextAlignment(.center)
                    TextField("", text: $s32)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                        .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    TextField("", text: $s33)
                        .frame(width: 50.0, height: 50.0).background(Color.white)                    .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    
                    TextField("6", text: $s34)
                        .frame(width: 50.0, height: 50.0).background(Color.white)                    .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    
                    TextField("7", text: $s35)
                        .frame(width: 50.0, height: 50.0).background(Color.white)                    .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    

                }
                HStack {
                    Rectangle().frame(width: 50.0, height: 50.0)
                    Rectangle().frame(width: 50.0, height: 50.0)
                    TextField("8", text: $s43)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                    .font(Font.system(size: 50, design: .default))
                    .multilineTextAlignment(.center)
                    TextField("", text: $s44)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                        .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    TextField("", text: $s45)
                        .frame(width: 50.0, height: 50.0).background(Color.white)                    .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    

                }
                HStack {
                    Rectangle().frame(width: 50.0, height: 50.0)
                    Rectangle().frame(width: 50.0, height: 50.0)
                    TextField("9", text: $s53)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                    .font(Font.system(size: 50, design: .default))
                    .multilineTextAlignment(.center)
                    TextField("", text: $s54)
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                        .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    TextField("", text: $s55)
                        .frame(width: 50.0, height: 50.0).background(Color.white)                    .font(Font.system(size: 50, design: .default))
                        .multilineTextAlignment(.center)
                    

                }
            }
            
            .sheet(isPresented: $showingAlert) {
                HStack {
                    VStack {
                        Text("Across").foregroundColor(.white).font(.headline)
                        Text("1: ana").foregroundColor(.white)
                        Text("4: row").foregroundColor(.white)
                        Text("5: twain").foregroundColor(.white)
                        Text("8: roo").foregroundColor(.white)
                        Text("5: end").foregroundColor(.white)
                    }

                    VStack {
                        Text("Down").foregroundColor(.white).font(.headline)
                        Text("1: art").foregroundColor(.white)
                        Text("2: now").foregroundColor(.white)
                        Text("3: aware").foregroundColor(.white)
                        Text("6: ion").foregroundColor(.white)
                        Text("3: nod").foregroundColor(.white)
                    }
                
                    
                }.padding(.top, 20.0)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 97/255, green: 52/255, blue: 235/255))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    func checkAnswers() {
        if (s11.lowercased() == "a" && s12.lowercased() == "n" && s13.lowercased() == "a") {
            h1 = true
        }
        if (s21.lowercased() == "r" && s22.lowercased() == "o" && s23.lowercased() == "w") {
            h4 = true
        }
        if (s31.lowercased() == "t" && s32.lowercased() == "w" && s33.lowercased() == "a" && s34.lowercased() == "i" && s35.lowercased() == "n") {
            h5 = true
        }
        if (s43.lowercased() == "r" && s44.lowercased() == "o" && s45.lowercased() == "o") {
            h8 = true
        }
        if (s53.lowercased() == "e" && s54.lowercased() == "n" && s55.lowercased() == "d") {
            h9 = true
        }
        if (s11.lowercased() == "a" && s21.lowercased() == "r" && s31.lowercased() == "t") {
            v1 = true
        }
        if (s12.lowercased() == "n" && s22.lowercased() == "o" && s32.lowercased() == "w") {
            v2 = true
        }
        if (s13.lowercased() == "a" && s23.lowercased() == "w" && s33.lowercased() == "a" && s43.lowercased() == "r" && s53.lowercased() == "e") {
            v3 = true
        }
        if (s34.lowercased() == "i" && s44.lowercased() == "o" && s54.lowercased() == "n") {
            v6 = true
        }
        if (s35.lowercased() == "n" && s45.lowercased() == "o" && s55.lowercased() == "d") {
            v7 = true
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
