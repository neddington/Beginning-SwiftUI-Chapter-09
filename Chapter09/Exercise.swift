import SwiftUI
@available(iOS 15.0, *) // For Slider's min & max labels

// Frame found at https://publicdomainvectors.org/en/free-clipart/Gloss-transparent-green-frame-vector-image/25937.html

struct Exercise: View {
    @State var myToggle = true
    @State var sliderValue = 20.0
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 200, height: 300)
                Image("Green-Frame")
                    .resizable()
                    .frame(width: 210, height: 330)
            }
                .frame(width:200, height: 300)
            
            VStack {
                Text("PUT THE STEPPER HERE")
            }.padding()
            
            VStack {
                Text("PUT THE SLIDER HERE")
                Text("Adjust the size of the image")
                Spacer()
            }
        }
        .padding()
    }
}
struct ExercisePreviews: PreviewProvider {
    static var previews: some View {
        Exercise()
    }
}
