import SwiftUI

struct ContentView: View {
    @State private var message = "Hello iOS from Windows via GitHub Actions"
    @State private var showAlert = false

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text(message)
                .multilineTextAlignment(.center)
                .padding()

            Button(action: {
                showAlert = true
            }) {
                Text("Click Me")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Action Triggered"),
                    message: Text("You clicked the button! This App was built on GitHub Actions."),
                    dismissButton: .default(Text("OK")) {
                        message = "Button Clicked! 🎉"
                    }
                )
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
