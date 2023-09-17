//
//  CategoryBar.swift
//  ShoeShop
//
//  Created by eyh.mac on 17.09.2023.
//

import SwiftUI

struct CategoryBar: View {
    var body: some View {
        HStack {
            CategoryButton(title: "All", backgroundColor: Color(red: 0.68, green: 0.86, blue: 0.22))
                .cornerRadius(55)
            CategoryButton(title: "Men", backgroundColor: Color.white)
            CategoryButton(title: "Women", backgroundColor: Color.white)
            CategoryButton(title: "Kids", backgroundColor: Color.white)
        }
        .padding()
        
    }
}

struct CategoryBar_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBar()
    }
}
