//
//  ContentView.swift
//  test
//
//  Created by Евгений Отроков on 12.11.2019.
//  Copyright © 2019 Евгений Отроков. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       TabView {
            WorkItemsView(array: createArrayItems())
                .tabItem {
                    Image(systemName: "1.square")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
