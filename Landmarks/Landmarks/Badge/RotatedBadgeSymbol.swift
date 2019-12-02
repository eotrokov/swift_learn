//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Евгений Отроков on 02.12.2019.
//  Copyright © 2019 Евгений Отроков. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
   let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
          RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
