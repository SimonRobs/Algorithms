//
//  SiderbarView.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import SwiftUI

struct SiderbarView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(sidebarLinks, id: \.id) { link in
                    SidebarSectionView(label: link.label, icon: link.icon, buttons: link.buttons)
                        .transition(.slide)
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
        }
        .frame(minWidth: 200)
        .navigationTitle("Algorithms")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button(action: toggleSidebar) {
                    Image(systemName: "sidebar.left")
                }
            }
        }
    }
    
    private func toggleSidebar() {
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
    }
}


struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SiderbarView()
    }
}
