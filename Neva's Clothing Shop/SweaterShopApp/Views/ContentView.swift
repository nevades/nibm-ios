//
//  ContentView.swift
//  Neva's Clothing
//
//  Created by Nevanjith De Silva on 2024-03-15.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State private var searchText = ""
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(.horizontal)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(productList.filter {
                            searchText.isEmpty ? true : $0.name.localizedCaseInsensitiveContains(searchText)
                        }, id: \.id) { product in
                            NavigationLink(destination: ProductDescriptionView(product: product)) {
                                ProductCard(product: product)
                                    .environmentObject(cartManager)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle(Text("Neva's Clothing Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
            Button(action: {
                text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
                    .padding(8)
            }
            .opacity(text.isEmpty ? 0 : 1)
        }
    }
}
