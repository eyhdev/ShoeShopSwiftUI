//
//  ProductDetailView.swift
//  Shoe
//
//  Created by eyh.mac on 17.09.2023.
//

import SwiftUI

struct ProductDetailView: View {

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 430, height: 523)
                .background(Color(red: 0.68, green: 0.86, blue: 0.22))
                .offset(y: -200)
            Image("img1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 185)
                .clipped()
                .rotationEffect(Angle(degrees: -19.42))
                .offset(y: -200)
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 430, height: 501)
                    .background(.black)
                    .cornerRadius(76)
                    .offset(y: 200)
                HStack{
                    Text("$47.97")
                        .font(
                            Font.custom("Inter", size: 30)
                                .weight(.medium)
                        )
                        .foregroundColor(.white)
                        .frame(width: 109, height: 48, alignment: .topLeading)
                        .offset(x: 60, y: 30)
                    Spacer()
                        .padding()
                    Text("SHOE")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 109, height: 48, alignment: .topLeading)
                        .offset(x: -10, y: 30)
                }

                VStack {
                    Text("Shoes in Brand New Green and Black Colors Are In Stock Now!\nDon't miss Decadent shoes that combine fashion and comfort! The shoes Decked out in green and black colors in our new collection combine elegance and comfort")
                        .font(Font.custom("Galvji", size: 15))
                        .kerning(0.75)
                        .foregroundColor(.white)
                        .frame(width: 256, height: 109, alignment: .topLeading)
                        .offset(x: -35,y: 170)

                    ZStack{
                        Image("Rectangle 9")
                            .frame(width: 160, height: 89)
                            .background(Color(red: 0.68, green: 0.86, blue: 0.22))
                            .cornerRadius(33)
                            .offset(x: 85,y: 280)
                        Image(systemName: "bag")
                            .font(.title)
                            .foregroundColor(.black)
                            .offset(x: 85,y: 280)
                    }
                }
            }
        }
    }
}


struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .preferredColorScheme(.dark)
    }
}
