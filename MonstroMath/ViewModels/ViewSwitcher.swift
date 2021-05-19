import Foundation
import SwiftUI

class ViewSwitcherState: ObservableObject {
    @Published var selectedViewIndex = 0
    
    static let shared = ViewSwitcherState()
    
    func showNextView() {
        selectedViewIndex += 1
    }
    func showPreviousView() {
        if selectedViewIndex > 0 {
            selectedViewIndex -= 1
        }
    }
    
    func showView(index: Int) {
        selectedViewIndex = index
    }
}

struct ViewSwitcher: View {
    let views: [AnyView]
    @ObservedObject var switcherState = ViewSwitcherState.shared
    var body: some View {
         views[switcherState.selectedViewIndex]
    }
}

