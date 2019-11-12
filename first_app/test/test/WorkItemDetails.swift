//
//  WorkItemDetails.swift
//  test
//
//  Created by Евгений Отроков on 12.11.2019.
//  Copyright © 2019 Евгений Отроков. All rights reserved.
//

import SwiftUI

struct WorkItemDetails: View {
    @State var name: String
    var body: some View {
        Text(name)
    }
}

struct WorkItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        WorkItemDetails(name: "")
    }
}
