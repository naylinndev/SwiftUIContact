//
//  ContactCreateViewModel.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation

class ContactCreateViewModel: ObservableObject{
    private let createContactUseCase: CreateContactUseCaseProtocol
    
    init(createContact: CreateContactUseCaseProtocol){
        self.createContactUseCase = createContact
    }
    
    @Published var errorMessage = ""
    @Published var name = ""
    @Published var showAlert = false
    
    
    
    func createContact() async{
        
        let result = await self.createContactUseCase.execute(ContactRequestModel(name: self.name))
        switch result{
        case .success(_):
            self.errorMessage = ""
        case .failure(_):
            self.errorMessage = "Error Creating Contact"
        }
        
    }
    
    var canSave: Bool {
        return (!name.isEmpty);
    }
    
}
