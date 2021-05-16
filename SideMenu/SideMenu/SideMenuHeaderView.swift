//
//  SideMenuHeaderView.swift
//  SideMenu
//
//  Created by Akira Akimoto on 2021/5/15.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .leading) {
                Image ("asuka")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64,  height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 16)
                
                Text("Asuka").font(.system(size: 24, weight: .semibold))
                Text("@asuka").font(.system(size: 14))
                    .padding(.bottom, 24)
                
                HStack (spacing: 12){
                    HStack (spacing: 4){
                        Text("1,254").bold()
                        Text("Following")
                    }
                    HStack (spacing: 4){
                        Text("607").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
