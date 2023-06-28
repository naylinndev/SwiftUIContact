//
//  UpdateContactUseCaseProtocol.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation

protocol UpdateContactUseCaseProtocol {
    func execute(id: UUID, data: ContactRequestModel) async -> Result<Bool, ContactError>
}
