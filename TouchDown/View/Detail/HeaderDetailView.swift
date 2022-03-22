//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by wizz on 11/27/21.
//

import SwiftUI

struct HeaderDetailView: View {
    
    var product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
