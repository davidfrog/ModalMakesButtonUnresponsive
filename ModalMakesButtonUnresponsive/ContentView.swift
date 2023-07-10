import SwiftUI

struct Item: Identifiable {
    var id: String { value }
    let value: String
}

/**
 
 Steps to reproduce in sample app:
 1) Tap "Open Sheet".
 2) Leave the app.
 3) Return to the app and close the sheet.
 4) Tap "Open Sheet" again and notice the sheet does not open (because the button action does not run.)
 5) Leave the app, and return and notice that the button does work again.
 
 **/

struct ContentView: View {
    @State var item: Item?
    var body: some View {
        VStack {
            Button {
                item = .init(value: "Item")
            } label: {
                Text("Open Sheet")
            }
            Spacer()
        }
        .sheet(item: $item) { item in
            Text(item.value)
        }
    }
}
