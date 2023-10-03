//
//  CustomListRowView.swift
//  Hike
//
//  Created by 전판근 on 2023/10/03.
//

import SwiftUI

struct CustomListRowView: View {
    
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTinecolor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            // Content
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if (rowLinkLabel != nil && rowLinkDestination != nil) {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTinecolor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListRowView(
                rowLabel: "WebSite",
                rowIcon: "globe",
                rowContent: nil,
                rowTinecolor: .pink,
                rowLinkLabel: "Credo Academy",
                rowLinkDestination: "https://credo.academy"
            )
        }
    }
}
