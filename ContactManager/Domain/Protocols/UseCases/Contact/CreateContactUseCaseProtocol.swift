//
//  CreateContactUseCaseProtocol.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation

protocol CreateContactUseCaseProtocol {
    func execute(_ contact: ContactRequestModel) async -> Result<Bool, ContactError>
}
