//
//  ContentView.swift
//  ch1
//
//  Created by Kelvin KUCH on 13.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0
    
    var body: some View {
        VStack {
            Button {
                counter += 1
            } label: {
                Text("Tap me to increment counter.")
                    .padding()
                    .background(Color(.tertiarySystemFill))
                    .cornerRadius(15.00)
            }
            
            if counter > 0 {
                Text("You have incremented counter by \(counter)")
            } else {
                Text("Counter hasn't incremented yet.")
            }
        }
        .frame(width: 300.00, height: 200.00)
        .border(.black)
        .debug()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
}


