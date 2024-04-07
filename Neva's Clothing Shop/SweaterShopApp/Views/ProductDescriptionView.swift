//
//  ProductDescriptionView.swift
//  Neva's Clothing
//
//  Created by Nevanjith De Silva on 2024-03-18.
//
import SwiftUI

struct ProductDescriptionView: View {
    var product: Product
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Product Image
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)

            // Product Details
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .font(.title)
                Text("Price: $\(product.price)")
                    .foregroundColor(.gray)
                Text(product.description)
            }
            .padding(.horizontal)

            // Sizes Section
            VStack(alignment: .leading) {
                Text("Available Sizes")
                    .font(.headline)
                    .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(product.sizes, id: \.self) { size in
                            Text(size)
                                .padding(8)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding(.horizontal)
                }
            }

            // Colors Section
            VStack(alignment: .leading) {
                Text("Available Colors")
                    .font(.headline)
                    .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(product.colors, id: \.self) { color in
                            Text(color)
                                .padding(8)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding(.horizontal)
                }
            }

            Spacer()
        }
        .padding(.vertical)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "arrow.left")
                    .foregroundColor(.blue)
            }
        )
    }
}
