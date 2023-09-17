//
//   TabBar.swift
//  ShoeShop
//
//  Created by eyh.mac on 17.09.2023.
//

import SwiftUI

struct _TabBar: View {
    
    @State private var selectedTab = 0
     
     var body: some View {
         TabView(selection: $selectedTab) {
             
             ContentView()
               .tabItem {
                 Image(systemName: "house")
                 Text("Shop")
             }.tag(0)
             
             Text("Search")
                 .tabItem {
                 Image(systemName: "magnifyingglass")
                 Text("Search")
             }.tag(1)
             
             Text("Card")
                 .tabItem {
                 Image(systemName: "bag")
                 Text("Card")
             }.tag(2)
         }
         .accentColor(Color("Color"))
         
     }
 }
struct _TabBar_Previews: PreviewProvider {
    static var previews: some View {
        _TabBar()
    }
}
