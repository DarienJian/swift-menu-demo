//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Akira Akimoto on 2021/5/15.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                // Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                // Cell items
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuOptionView(viewModel: option)
                        }
                    )
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
