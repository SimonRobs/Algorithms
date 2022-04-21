//
//  SidebarButtonView.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import SwiftUI

struct SidebarButtonView: View {
    let label: String
    let route: Routes
    
    @EnvironmentObject var navigationViewModel: NavigationViewModel
    
    var padding = EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 2)
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
        }
        .padding(padding)
        .clipShape(RoundedRectangle(cornerRadius: 4))
        .background(background)
        .onTapGesture {
            navigationViewModel.navigate(to: route)
        }
    }
    
    var background: some View {
        navigationViewModel.activeRoute == route ? Color(white: 0.75) : Color.clickableClear
    }
}


struct SidebarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarButtonView(label: "Prim", route: .prim)
    }
}
