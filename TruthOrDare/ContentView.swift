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
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("Tap the Gray Box to see Truth or Dare")
                .padding()
            CustomLetterBox(color: .gray, text: task)
                .onTapGesture {
                    withAnimation(Animation.default) {
                        if let random = options.randomElement() {
                            task = String(random)
                        }
                    }
                }
                .rotation3DEffect(
                    .init(degrees: task == "" ? 180 : 0),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                )
                .preferredColorScheme(.dark)
            NavigationView{
                HStack{
                    NavigationLink("Truth", destination: Truth())
                        .padding(100)
                    NavigationLink("Dare", destination: DareView())
                    Spacer()
                }
            }
        }
    }
}

struct CustomLetterBox: View{
    let color: Color
    let text: String
    var body: some View {
        ZStack{
            color
            Text(text)
                .font(.system(size: 40))
                .fontWeight(.heavy)
        }
        .frame(width: 120, height: 120, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
