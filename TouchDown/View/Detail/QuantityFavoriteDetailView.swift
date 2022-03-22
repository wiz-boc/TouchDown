//
//  QuantityFavoriteDetailView.swift
//  TouchDown
//
//  Created by wizz on 11/27/21.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    
    @State private var counter: Int = 0
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                feedback.impactOccurred()
                if counter > 0 {
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }

            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                feedback.impactOccurred()
                if counter < 100 {
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            Spacer()
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }

        }
        .font(.system(.title,design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
