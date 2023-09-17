//
//  ProductView.swift
//  ShoeShop
//
//  Created by eyh.mac on 17.09.2023.
//

import SwiftUI

//SourceCode: GitHub

struct ProductView: View {
    var imageName: String
    var price: String
    var title: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 52)
                .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                .frame(width: 382, height: 252)
            
            Image("Rectangle 6")
                .frame(width: 102, height: 89)
                .background(Color(red: 0.68, green: 0.86, blue: 0.22))
                .cornerRadius(55)
                .offset(x: 140, y: 80)
            
            Image(systemName: "bag")
                .frame(width: 30, height: 30)
                .offset(x: 140, y: 80)
            
            VStack {
                HStack {
                    Text(price)
                        .font(.title2)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .offset(x: 40, y: -45)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 300, height: 158)
                        .background(
                            Image(imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 250, height: 154)
                                .padding()
                                .clipped()
                        )
                        .rotationEffect(Angle(degrees: -19.42))
                        .offset(x: 20, y: -30)
                }
                Text(title)
                    .font(.title2)
                    .fontWeight(.light)
                    .kerning(4.375)
                    .foregroundColor(.black)
                    .offset(x: -100, y: -15)
            }
        }
        .padding()
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(imageName: "", price: "", title: "")
    }
}
