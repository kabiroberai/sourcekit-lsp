//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

/// A request that returns symbols for all the test classes and test methods within a file.
///
/// **(LSP Extension)**
public struct DocumentTestsRequest: TextDocumentRequest, Hashable {
  public static let method: String = "document/tests"
  public typealias Response = [WorkspaceSymbolItem]?

  public var textDocument: TextDocumentIdentifier

  public init(textDocument: TextDocumentIdentifier) {
    self.textDocument = textDocument
  }
}
