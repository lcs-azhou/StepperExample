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

                Text("(\(base))")
                    .font(.system(size: 80))

                Text("2")
                    .font(.system(size: 44))

                Text("=")
                    .font(.system(size: 80))

                Text("\(squared)")
                    .font(.system(size: 80))
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
    TabView(selection: Binding.constant(3)) {
        
        Text("Plus")
            .tabItem {
                Image(systemName: "plus")
                Text("Plus")
            }
            .tag(1)
        
        Text("Minus")
            .tabItem {
                Image(systemName: "minus")
                Text("Minus")
            }
            .tag(2)
        
        ContentView()
            .tabItem {
                Image(systemName: "multiply")
                Text("Multiply")
            }
            .tag(3)
        
        Text("divide")
            .tabItem {
                Image(systemName: "divide")
                Text("Divide")
            }
            .tag(4)
        
    }.accentColor(.purple)
}
