//
//  WorkItemRow.swift
//  test
//
//  Created by Евгений Отроков on 12.11.2019.
//  Copyright © 2019 Евгений Отроков. All rights reserved.
//

import SwiftUI

struct WorkItemRow: View {
    var workItem: WorkItem
   
    var body: some View {
        HStack() {
            Text("\(workItem.id)").foregroundColor(.blue)
            Text("\(workItem.name)")
        }
    }
}

struct WorkItemRow_Previews: PreviewProvider {
    static var previews: some View {
        WorkItemRow(workItem: WorkItem(id: 1, name: "ff"))
            .previewLayout(.fixed(width: 300, height: 70))

    }
}
