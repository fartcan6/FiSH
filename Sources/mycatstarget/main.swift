#if canImport(SwiftUI)
import SwiftUI
#elseif canImport(UIKit)
import UIKit

struct ContentView: View {
    var body: some View {
        TabView {
            Text("First View")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Second View")
                .tabItem {
                    Image(systemName: "star")
                    Text("Favorites")
                }
            Text("Third View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            Text("Fourth View")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
#endif
