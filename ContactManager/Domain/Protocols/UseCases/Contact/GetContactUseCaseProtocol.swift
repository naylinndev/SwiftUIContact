//
//  GetContactUseCaseProtocol.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation

protocol GetContactUseCaseProtocol {
    func execute(_ id:UUID) async -> Result<ContactResponseModel?, ContactError>
}
