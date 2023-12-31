//
//  ContactDataSourceProtocol.swift
//  ContactManager
//
//  Created by Nay Linn (WW) on 23/06/2023.
//

import Foundation
protocol ContactDataSourceProtocol {
    func getAll() async -> Result<[ContactResponseModel], ContactError>
    func getOne(_ id: UUID) async    -> Result<ContactResponseModel?, ContactError>
    func create(_ contactRequestModel: ContactRequestModel) async -> Result<Bool, ContactError>
    func update(id: UUID, data: ContactRequestModel) async   -> Result<Bool, ContactError>
    func delete(_ id: UUID) async  -> Result<Bool, ContactError>

}
