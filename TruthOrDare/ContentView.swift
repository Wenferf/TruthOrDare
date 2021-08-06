//
//  ContentView.swift
//  TruthOrDare
//
//  Created by Tucker(School) on 8/4/21.
//

import SwiftUI

struct ContentView: View {
    @State private var task = ""
    let options = ["Truth", "Dare"]
    var body: some View {
        VStack {
            Text("Truth or Dare")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Text("Tap the Gray Box to see Truth or Dare")
                .font(.headline)
                .padding()
            CustomLetterBox(color: .gray, text: task)
                .onTapGesture {
                    if let random = options.randomElement() {
                        task = String(random)
                    }
                }
                .preferredColorScheme(.dark)
            NavigationView{
                VStack{
                    HStack{
                        NavigationLink("Truth", destination: Truth())
                            .font(.title)
                            .padding(55)
                        NavigationLink("Dare", destination: DareView())
                            .font(.title)
                            .padding(55)
                    }
                    Spacer()
                }
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .white, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct CustomLetterBox: View{
    let color: Color
    let text: String
    var body: some View {
        ZStack{
            color
            Text(text)
                .font(.system(size: 50))
                .fontWeight(.heavy)
        }
        .frame(width: 160, height: 160, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
