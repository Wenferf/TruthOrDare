//
//  ContentView.swift
//  TruthOrDare
//
//  Created by Tucker(School) on 8/4/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var truths = TruthLists()
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
