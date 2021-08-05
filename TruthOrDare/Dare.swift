//
//  Dare.swift
//  TruthOrDare
//
//  Created by Kareem Almomen on 8/5/21.
//

import SwiftUI

struct DareView: View {
    @State private var dares = [Dare]()
    var body: some View {
        NavigationView {
            List(dares) { dare in
                NavigationLink(
                    destination: Text(dare.content)
                        .padding(),
                    label: {
                        Text(dare.title)
                    })
            }
            .navigationBarTitle("Dares", displayMode: .inline)
        }
        .onAppear(perform: {
            getDares()
        })
    }
    func getDares() {
        dares.append(Dare(title: "Dare",
                          content: "Take an embarrassing selfie and post it as your profile picture."))
        dares.append(Dare(title: "Dare",
                          content: "Call your crush."))
        dares.append(Dare(title: "Dare",
                          content: "Run around outside yelling, “I have lice!”"))
        dares.append(Dare(title: "Dare",
                          content: "Jump into a dumpster."))
        dares.append(Dare(title: "Dare",
                          content: "Take a plate of leftovers over to your neighbor, knock on their door, and say, 'Welcome to the neighborhood' as if you've never met them before."))
        dares.append(Dare(title: "Dare",
                          content: "Text someone “hey.” Every time they respond, say “hey.” Do this 10 times. For the 11th time, reply with “hi.”"))
        dares.append(Dare(title: "Dare",
                          content: "Give yourself a mohawk."))
        dares.append(Dare(title: "Dare",
                          content: "Give your phone to another player to send a text message to their contact of choice."))
        dares.append(Dare(title: "Dare",
                          content: "Whoever's name begins with an A in the group must call your parents and tell them what a bad friend you are to them."))
        dares.append(Dare(title: "Dare",
                          content: "Let the other players go through your phone for a minute."))
        dares.append(Dare(title: "Dare",
                          content: "Yell And Act Out The First Sentence That Comes To Your Mind"))
        dares.append(Dare(title: "Dare",
                          content: "Promote The Person Who Asked You The Question And Sell Him/Her To Someone As A Product."))
        dares.append(Dare(title: "Dare",
                          content: "Promote The Person Who Asked You The Question And Sell Him/Her To Someone As A Product."))
        dares.append(Dare(title: "Dare",
                          content: "Stop A Car That Is Going Down The Street And Tell Them That Their Wheels Are Turning."))
    }
}

struct DareView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Dare: Identifiable {
    let id = UUID()
    var title: String
    var content: String
}
