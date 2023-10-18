//
//  ___FILEHEADER___
//  Created by Christian Contreras
//
import Foundation
protocol I___VARIABLE_productName:identifier___NavigationLink: Identifiable {
    var navigationLink: ___VARIABLE_productName:identifier___NavigationLink { get }
    var sheetItem: ___VARIABLE_productName:identifier___NavigationLink? { get }
}

enum ___VARIABLE_productName:identifier___NavigationLink: Hashable, I___VARIABLE_productName:identifier___NavigationLink {
    // EXAMPLE
    case goToPage(id: Int? = nil)
    
    var id: String {
        switch self {
        case let .goToPage(id):
            return "goToInfo: \(id ?? 0)"
        }
    }
    
    var navigationLink: ___VARIABLE_productName:identifier___NavigationLink {
        switch self {
        default:
            return .goToPage()
        }
    }
    
    var sheetItem: ___VARIABLE_productName:identifier___NavigationLink? {
        return nil
    }
}
