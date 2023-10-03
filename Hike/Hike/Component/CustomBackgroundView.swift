//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by 전판근 on 2023/10/03.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: - 2. LIGHT
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1. SURFACE
            
            LinearGradient(
                colors: [
                    Color.customGreenLight
                    , Color.customGreenDark]
               , startPoint: .top, endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
    
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
