//
//  ReservationForm.swift
//  Exercise-SwiftUI
//
//  Created by Georgette Dalen on 4/18/24.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    var body: some View {
        Form {
            Text("Exercise 2")
            TextField(
                "Type Your Name",
                text: $customerName,
                onEditingChanged: { status in
                    print(status)
                }
            )
            .onChange(
                of: customerName,
                perform: {
                    newVal in print(newVal)
                }
            )
            .onSubmit {
                print("form submitted")
            }
        }
    }
}

#Preview {
    ReservationForm()
}
