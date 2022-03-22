//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by wizz on 11/27/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            HeaderDetailView(product: shop.selectProduct ?? sampleProduct)
                .padding(.horizontal)
            //DETAIL TOP PART
            TopPartDetailView(product: shop.selectProduct ?? sampleProduct)
                .padding(.horizontal)
                .zIndex(1)
            VStack(alignment: .center, spacing: 0) {
                //RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectProduct?.description ?? "")
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                //QUANTITY + FAVOURITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                //ADD to CART
                AddToCardDetailView(product: shop.selectProduct ?? sampleProduct)
                    .padding(.bottom, 20)
                Spacer()
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
            
            
        }
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(red: shop.selectProduct?.red ?? sampleProduct.red, green: shop.selectProduct?.green ?? sampleProduct.green, blue: shop.selectProduct?.blue ?? sampleProduct.blue)
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
