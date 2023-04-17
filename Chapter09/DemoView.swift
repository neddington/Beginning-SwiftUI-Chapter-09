import SwiftUI
@available(iOS 15.0, *) // For Slider's min & max labels

struct DemoView: View {
    @State var myToggle = true
    
    @State var intValue = 1
    @State var realValue = 1.0
    
    @State var sliderValue = 100.0
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Rectangle()
                    .frame(width: 200, height: 150)
                    .foregroundColor(myToggle ? .orange : .green)
                Toggle(myToggle ? "Orange" : "Green", isOn: $myToggle)
                Spacer()
            }
            VStack {
                Stepper(value: $intValue) {
                    Text("Stepper value = \(intValue)")
                }.padding()
                Stepper(value: $realValue, in: 1...10, step: 0.5) {
                    Text("Stepper value = \(String(format:"%.1f", realValue))")
                }.padding()
                Spacer()
            }
            VStack {
                Text("How awesome is SwiftUI?")
                Slider(value: $sliderValue)
                Text("It's \(String(format:"%.2f", sliderValue))% awesome!")
                Spacer()
            }
            VStack {
                Text("How awesome is UIKit?")
                Slider(value: $sliderValue, in: 1...100, step: 1.25) {
                        Text("Rate UIKit's Awesomeness") // Doesn't appear on iOS
                                // but still gets used for accessibility, MacOS, etc
                    }
                    minimumValueLabel: {
                        Text("1")
                    } maximumValueLabel: {
                        Text("100")
                    }
                    .accentColor(.red)
                    
                Text("It's \(String(format:"%.2f", sliderValue))% awesome!")
                Spacer()
            }
        }
    }
}
struct DemoViewPreviews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
