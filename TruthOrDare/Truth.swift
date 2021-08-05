//
//  Truth.swift
//  TruthOrDare
//
//  Created by Tucker(School) on 8/4/21.
//

import SwiftUI

struct Truth: View {
    @ObservedObject var truths = TruthLists()
    @State private var showingTruth = false
    var body: some View {
        NavigationView{
            List{
                //finally
                ForEach(truths.items, id: \.id) { item in
                    HStack {
                        VStack {
                            Text(item.truthName)
                            
                        }
                        Spacer()
                        Button("Show truth") {
                            showingTruth = true
                        }
                        .alert(isPresented: $showingTruth, content: {
                            //currently this is only displaying one truth ever and I need to give each thing an id
                            Alert(title: Text("Your Truth is:"),
                                  message: Text(item.truthContent),
                                  dismissButton: .default(Text("OK")))
                        })
                        
                    }
                }
                
                
                
                
            }
            .navigationBarTitle("To Do List", displayMode: .inline)
        }
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
