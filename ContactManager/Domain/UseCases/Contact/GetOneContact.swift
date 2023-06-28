//
//  GetOneContact.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation
class GetOneContact : GetContactUseCaseProtocol {
    
    private let contactRepo: ContactRepositoryProtocol
    
    init(contactRepo: ContactRepositoryProtocol){
        self.contactRepo = contactRepo
    }
    
    func execute(_ id: UUID) async -> Result<ContactResponseModel?, ContactError> {
        return await contactRepo.getContact(id)
    }

}
