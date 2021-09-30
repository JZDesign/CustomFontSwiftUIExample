import SwiftUI
import JBMono

struct ContentView: View {
    var body: some View {
        VStack {
        Text("Hello, world!")
            .font(.jetBrainsMonoTitle1)
        Text("JetBrains Mono == awesome")
            .font(.jetBrainsMonoHeadline)
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
