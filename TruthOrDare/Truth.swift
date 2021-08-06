//
//  Truth.swift
//  TruthOrDare
//
//  Created by Tucker(School) on 8/4/21.
//

import SwiftUI

struct Truth: View {
    @State private var truths = [Truths]()
    //@State private var showingTruth = false
    var body: some View {
        NavigationView{
            List(truths){ truth in
                NavigationLink("\(truth.truthName)",
                               destination: Text(truth.truthContent)
                                .padding()
                )
            }
            .navigationBarTitle("Truths", displayMode: .inline)
        }
        .onAppear(perform: {
            getTruths()
        })
    }
    
    func getTruths() {
        truths.append(Truths( truthName: "Truth", truthContent: "What is your favorite food?"))
        truths.append(Truths( truthName: "Truth", truthContent: "What is your biggest fear?"))
        truths.append(Truths( truthName: "Truth", truthContent: "Have you ever cheated in an exam?"))
        truths.append(Truths( truthName: "Truth", truthContent: "Have you ever broken the law?"))
        truths.append(Truths( truthName: "Truth", truthContent: "What's the biggest mistake you've ever made?"))
        truths.append(Truths( truthName: "Truth", truthContent: "Have you ever peed in the shower?"))
        truths.append(Truths( truthName: "Truth", truthContent: "What's the biggest misconception about you?"))
        truths.append(Truths( truthName: "Truth", truthContent: "What's the most trouble you've been in?"))
        truths.append(Truths( truthName: "Truth", truthContent: "Who is your crush?"))
        truths.append(Truths( truthName: "Truth", truthContent: " When was the last time you peed in bed?"))
        truths.append(Truths( truthName: "Truth", truthContent: " What is the biggest lie you have ever told?"))
    }
}

struct Truth_Previews: PreviewProvider {
    static var previews: some View {
        Truth()
    }
}

struct Truths: Identifiable {
    var id = UUID()
    var truthName = String()
    var truthContent = String()
}
