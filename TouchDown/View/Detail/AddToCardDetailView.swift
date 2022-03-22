//
//  AddToCardDetailView.swift
//  TouchDown
//
//  Created by wizz on 11/27/21.
//

import SwiftUI

struct AddToCardDetailView: View {
    
    var product: Product
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(red: product.red, green: product.green, blue: product.blue)
        )
        .clipShape(Capsule())

    }
}

struct AddToCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
