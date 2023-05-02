//
//  ContentView.swift
//  makeupStoreSwiftUI
//
//  Created by Vania Alfitri on 02/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var results = [Makeup]()
    var body: some View {
        NavigationView {
            List {
                BannerView()
                DiscoverListView(results: results)
            }
            .onAppear(perform: fetchMakeUpList)
            .navigationTitle("Home")
        }
    }
    
   func fetchMakeUpList() {
        let session = URLSession.shared
        let urlRequest = URLRequest(url: URL(string: "https://makeup-api.herokuapp.com/api/v1/products.json")!)
        session.dataTask(with: urlRequest) { (data, response, error) in
            guard error == nil else {
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode >= 200 && httpResponse.statusCode < 300 else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let makeupList = try JSONDecoder().decode([Makeup].self, from: data)
                DispatchQueue.main.async {
                    results = makeupList
                }
            } catch {
                
            }
            
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
