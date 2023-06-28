//
//  ContactRepositoryProtocol.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation

protocol ContactRepositoryProtocol{
    
    func getContacts() async -> Result<[ContactResponseModel], ContactError>
    
    func getContact(_ id: UUID) async -> Result<ContactResponseModel?, ContactError>
    
    func deleteContact(_ id: UUID) async -> Result<Bool, ContactError>
    
    func updateContact(id: UUID, data: ContactRequestModel) async -> Result<Bool, ContactError>
    
    func createContact(_ contactRequestModel: ContactRequestModel) async -> Result<Bool, ContactError>
}
