//
//  ___FILEHEADER___
//  Created by Christian Contreras
//
import Foundation
import SwiftUI
import Swinject

protocol I___VARIABLE_productName:identifier___FlowStateProtocol: ObservableObject {
    var activeLink: ___VARIABLE_productName:identifier___NavigationLink? { get set }
}

struct ___VARIABLE_productName:identifier___Coordinator<State: I___VARIABLE_productName:identifier___FlowStateProtocol, Content: View>: View {
    @ObservedObject var state: State
    let content: () -> Content
    var container: Container {
        get {
            AppDelegate.instance.container
        }
    }
    
    private var activeLink: Binding<___VARIABLE_productName:identifier___NavigationLink?> {
        $state.activeLink.map(get: { $0?.navigationLink }, set: { $0 })
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                content()
                navigationLinks
            }
        }
        .navigationViewStyle(.stack)
    }
    
    @ViewBuilder private var navigationLinks: some View {
        NavigationLink(tag: .goToPage(), selection: activeLink, destination: goToPage) { EmptyView() }
    }
    
    private func goToPage() -> some View {
        var id: Int?
        if case let .goToPage(param) = state.activeLink {
            id = param
        }
        // TODO: CREATE THE NEW COORDINATOR
        return EmptyView()
    }
}
