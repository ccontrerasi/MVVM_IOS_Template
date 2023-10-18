//
//  ___FILEHEADER___
//
import Foundation

struct ___VARIABLE_productName:identifier___Model {
    let id: Int
    let name: String

    init(dto: ___VARIABLE_productName:identifier___DTO){
        id = dto.id
        name = dto.name
    }
}
