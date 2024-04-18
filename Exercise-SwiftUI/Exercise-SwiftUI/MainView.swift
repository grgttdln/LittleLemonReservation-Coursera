//
//  MainView.swift
//  Exercise-SwiftUI
//
//  Created by Georgette Dalen on 4/19/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5).ignoresSafeArea()
            HStack {
                Text("Demo")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100,  alignment: .center)
                VStack {
                    Text("Tomato Tortellini, Bottarga and Carbonara").multilineTextAlignment(.center)
                }
            }
        }
    }
}

#Preview {
    MainView()
}
