//
//  WorkItemsView.swift
//  test
//
//  Created by Евгений Отроков on 12.11.2019.
//  Copyright © 2019 Евгений Отроков. All rights reserved.
//

import SwiftUI

struct WorkItemsView: View {
    @State var array = [WorkItem]()
    
    var body: some View {
        NavigationView {
            List(self.array, id: \.id) { workItem in
                NavigationLink(destination: WorkItemDetails(name: workItem.name)) {
                    WorkItemRow(workItem: workItem)
                }
            }.navigationBarTitle(Text("WorkItems \(self.array.count)"))
        }
    }
}

struct WorkItemsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkItemsView()
        
    }
}
