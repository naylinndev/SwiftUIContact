//
//  BackButton.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import SwiftUI

struct BackButtonView: View {
    var previousScreenTitle: String
    var canGoBack: Bool
    var goBack: ()->Void
    @Binding var showAlert: Bool
    
    var body: some View {
        Button(action : {
            if canGoBack{
                goBack()
            }else{
                showAlert = true;
            }
        }){
            HStack{
                Image(systemName: "chevron.left").foregroundColor(.blue)
                Text(previousScreenTitle).foregroundColor(.blue)
            }
        }
        
    }
}
