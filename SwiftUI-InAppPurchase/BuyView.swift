//
//  BuyView.swift
//  SwiftUI-InAppPurchase
//
//  Created by Henry Havens on 9/17/20.
//  Copyright © 2020 Henry Havens. All rights reserved.
//

import SwiftUI

struct BuyView: View {
    @Binding var purchased:Bool
    @ObservedObject var products = productsDB.shared
    var body: some View {
        List {
            ForEach((0 ..< self.products.items.count), id: \.self) { column in
                HStack{
                    Text(self.products.items[column].localizedDescription)
                        .onTapGesture {
                            IAPManager.shared.purchaseV5(product: self.products.items[0])
                    }
                    Spacer()
                    Button("Restore") {
                      IAPManager.shared.restorePurchasesV5()
                    }
                }
                
            }
        }

    }
}

