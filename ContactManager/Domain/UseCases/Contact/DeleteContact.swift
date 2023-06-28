//
//  DeleteContact.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation
class DeleteContact : DeleteContactUseCaseProtocol {
    
    private let contactRepo: ContactRepositoryProtocol
    
    init(contactRepo: ContactRepositoryProtocol){
        self.contactRepo = contactRepo
    }

    func execute(_ id: UUID) async -> Result<Bool, ContactError> {
        return await self.contactRepo.deleteContact(id)
    }
  
    
}
