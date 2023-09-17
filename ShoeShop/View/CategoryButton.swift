//
//  CategoryButton.swift
//  ShoeShop
//
//  Created by eyh.mac on 17.09.2023.
//
import SwiftUI

struct CategoryButton: View {
    var title: String
    var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 16.5)
                    .foregroundColor(.clear)
                    .frame(width: 49, height: 33)
                    .background(backgroundColor)
                    .cornerRadius(333)
                
                Text(title)
                    .font(Font.custom("Inter", size: 15).weight(.medium))
                    .foregroundColor(.black)
            }
            .padding()
        }
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(title: "All", backgroundColor: Color("Color"))
    }
}
