# MultiPresenter

## Information

By default, SwiftUI does not support multiple view presentation modifiers (e.g. `.sheet` or `.alert`), taking always the last one in the view chain.
MultiPresenter makes use of `@resultBuilder` property wrapper to provide the missing functionality.


Inspired with [FunctionBuilders](https://www.swiftbysundell.com/articles/deep-dive-into-swift-function-builders/)
