import SwiftUI

struct AddingControlsExercise: View {
    @State var selectedDate = Date()
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 5, to: Date())!
        return min...max
    }
    
    @State private var selectedTime = Date()
    @State private var showConfirmation = false

    var body: some View {
        Form {
            VStack {
                HStack {
                    Section {
                        DatePicker(
                            selection: $selectedDate,
                            in: dateClosedRange,
                            displayedComponents: .date,
                            label: { Text("Date") }
                        )
                        .disabled(showConfirmation)
                    }
                }
                
                HStack {
                    DatePicker("Time", selection: $selectedTime,
                               displayedComponents: .hourAndMinute
                    )
                    .disabled(showConfirmation)
                }
                
                HStack {
                    Spacer()
                    Button(action: {
                        showConfirmation = true
                        print("do something!")
                    }) {
                        HStack {
                            Text("Done")
                        }
                    }
                }
                
                if showConfirmation {
                    Text("Date is \(selectedDate.formatted(date: .long, time: .omitted)) at \(selectedTime.formatted(date: .omitted, time: .complete))").padding(.top)
                }
            }
        }
    }
}

struct AddingControlsExercise_Previews: PreviewProvider {
    static var previews: some View {
        AddingControlsExercise()
    }
}
