//
//  BannerView.swift
//  makeupStoreSwiftUI
//
//  Created by Vania Alfitri on 02/05/2023.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        Image("Banner")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
