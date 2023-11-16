//
//  ContentView.swift
//  StepperExample
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var base: Int = 1
    
    // MARK: Computed properties
    var squared: Int {
        return base * base
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {

                Text("\(base)")
                    .font(.system(size: 96))

                Text("2")
                    .font(.system(size: 44))

                Text("=")
                    .font(.system(size: 96))

                Text("\(squared)")
                    .font(.system(size: 96))
            }
            Stepper(value: $base, label: {
                Text("Base")
            })
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
