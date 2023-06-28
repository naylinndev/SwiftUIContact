//
//  DeleteContactUseCaseProtocol.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 24/06/2023.
//

import Foundation

protocol DeleteContactUseCaseProtocol {
    func execute(_ id: UUID) async -> Result<Bool, ContactError>
}

