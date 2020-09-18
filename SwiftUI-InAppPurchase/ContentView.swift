//
//  ContentView.swift
//  SwiftUI-InAppPurchase
//
//  Created by Henry Havens on 8/31/20.
//  Copyright © 2020 Henry Havens. All rights reserved.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    
    var body: some View {
        VStack {
            
        Text("Hello World!")
            Spacer()
        
        HStack {
            Spacer()
        Banner()
            Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
