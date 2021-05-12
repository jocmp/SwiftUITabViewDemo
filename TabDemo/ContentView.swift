//
//  ContentView.swift
//  TabDemo
//
//  Created by Josiah Campbell on 5/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1

    var body: some View {
        TabView(selection: $selection) {
            VStack {
                Text("Hello 1")
            }
            .tabItem {
                Label("Tab 1", systemImage: selection == 1 ? "star.fill" : "star")
            }
            .tag(1)
            NavigationView {
                VStack {
                    NavigationLink(destination: DetailView()) {
                        Text("Hello 2")
                    }
                    .navigationTitle("Index")
                }
            }
            .tabItem {
                Label("Tab 2", systemImage: selection == 2 ? "moon.fill" : "moon")
            }
            .tag(2)
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Hello child")
        }
        .navigationTitle("Detail")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
