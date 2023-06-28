//
//  AddButton.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import SwiftUI

struct AddButton: View {
    var destination: AnyView
        
    var body: some View {
        Button(action:{}){
            NavigationLink(destination: destination){
                Image(systemName: "plus")
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
