//
//  SidebarSectionView.swift
//  Algorithms
//
//  Created by Simon Robatto on 2022-04-20.
//

import SwiftUI

struct SidebarSectionView: View {
    let label: String
    let icon: String
    let buttons: [SidebarButton]
    
    @State private var isOpen = true
    
    var body: some View {
        Section {
            VStack {
                header
                if isOpen {
                    ForEach(buttons, id: \.id) { button in
                        SidebarButtonView(label: button.label, route: button.route)
                    }
                }
            }
        }
        .padding(.bottom)
    }
    
    var header: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.accentColor)
        Text(label)
                .font(.title3)
            Spacer()
            Image(systemName: isOpen ? "chevron.down" : "chevron.right")
                .animation(.none)
        }
        .background(Color.clickableClear)
        .onTapGesture {
                isOpen.toggle()
        }
    }
}


struct SidebarSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarSectionView(label: "Sorting", icon: "chart.bar.xaxis", buttons: [
            SidebarButton(label: "Bubble Sort", route: .bubbleSort),
            SidebarButton(label: "Insertion Sort", route: .insertionSort),
            SidebarButton(label: "Quicksort", route: .quicksort),
        ])
    }
}
