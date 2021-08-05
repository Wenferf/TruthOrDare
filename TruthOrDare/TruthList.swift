//
//  TruthList.swift
//  TruthOrDare
//
//  Created by Tucker(School) on 8/4/21.
//

import Foundation

class TruthLists: ObservableObject {
    @Published var items = [Truths( truthName: "Truth", truthContent:"What is your biggest fear"),
                             Truths(truthName: "Truth", truthContent:"What is your favorite food"),
                             Truths(truthName: "Truth", truthContent:"some truth")]
    //only need one pair of square brakets

 }
