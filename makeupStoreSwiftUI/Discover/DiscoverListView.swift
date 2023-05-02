//
//  DiscoverListView.swift
//  makeupStoreSwiftUI
//
//  Created by Vania Alfitri on 02/05/2023.
//

import SwiftUI

struct DiscoverListView: View {
    var results = [Makeup]()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                let brands = results.compactMap { $0.brand }
                let filteredBrands = brands.removingDuplicates()
                ForEach(filteredBrands, id: \.self) { brand in
                    Text(brand)
                }
            }
        }
    }
}

struct DiscoverListView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverListView()
    }
}
