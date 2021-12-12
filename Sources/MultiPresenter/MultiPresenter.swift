import SwiftUI

@resultBuilder
public struct MultiPresenterBuilder {
  public static func buildBlock<ElementType: View>(_ components: ElementType...) -> [AnyView] {
    components.map { AnyView($0) }
  }
}

public extension View {
  func multiPresenter(@MultiPresenterBuilder _ presenters: (EmptyView) -> [AnyView]) -> some View {
    presenters(EmptyView()).reduce(AnyView(self)) { view, presenter in
      AnyView(view.background(presenter))
    }
  }
}
