//
//  SearchBar.swift
//  ShoeShop
//
//  Created by eyh.mac on 17.09.2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.gray.opacity(0.2))
                .frame(height: 40)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
                
                TextField("Search", text: $searchText)
                    .foregroundColor(.black)
                    .padding(.horizontal, 10)
            }
        }
        .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
    }
}
