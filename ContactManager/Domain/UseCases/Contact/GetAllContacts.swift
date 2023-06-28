//
//  GetAllContacts.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation
class GetAllContacts : GetAllContactsUseCaseProtocol {
    private let contactRepo: ContactRepositoryProtocol
    
    init(contactRepo: ContactRepositoryProtocol){
        self.contactRepo = contactRepo
    }
    
    func execute() async -> Result<[ContactResponseModel], ContactError> {
        return await contactRepo.getContacts()
    }

}
