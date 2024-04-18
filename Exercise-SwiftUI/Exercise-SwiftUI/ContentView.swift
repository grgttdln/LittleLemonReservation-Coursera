//
//  ContentView.swift
//  Exercise-SwiftUI
//
//  Created by Georgette Dalen on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            MyFirstView()
            ReservationForm()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
