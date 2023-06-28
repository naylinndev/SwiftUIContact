//
//  SaveButton.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import SwiftUI

struct SaveButtonView: View {
    
    var onSave: ()->Void
    var isDisabled: Bool
    
    var body: some View {
        Button(action: onSave ){
            if isDisabled{
                Text("Save").foregroundColor(.gray).font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
            }else{
                Text("Save").foregroundColor(.blue).font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
            }
        }
        .disabled(isDisabled)
    }
}
