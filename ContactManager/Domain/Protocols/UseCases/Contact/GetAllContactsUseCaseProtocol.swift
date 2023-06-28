//
//  GetAllContactsUseCaseProtocol.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation

protocol GetAllContactsUseCaseProtocol {
    func execute() async -> Result<[ContactResponseModel], ContactError>
}
