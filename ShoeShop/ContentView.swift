//
//  ContentView.swift
//  ShoeShop
//
//  Created by eyh.mac on 17.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    @State private var isProductDetailVisible = false
    
    var body: some View {
        NavigationView{
            VStack{
                SearchBar(searchText: $searchText)
                CategoryBar()
                
                NavigationLink(destination: ProductDetailView(),isActive: $isProductDetailVisible, label: {
                    EmptyView()
                })
                
                ProductView(imageName: "img1", price: "$50.99", title: "Shoe")
                    .onTapGesture {
                        isProductDetailVisible = true
                    }
                ProductView(imageName: "img1", price: "$50.99", title: "Shoe")
                    .onTapGesture {
                        isProductDetailVisible = true
                    }
            }
            .navigationBarItems(
                leading: Text("New collection")
                    .font(.custom("Inter", size: 30).weight(.medium))
                    .foregroundColor(.black),
                trailing: Image(systemName: "text.alignleft")
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(width: 44, height: 44)
                    .background(Color.white)
                    .cornerRadius(22)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
