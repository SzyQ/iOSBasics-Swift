import Foundation

public struct ComicbookCharacter {
    let name: String = ""
    let universe : Universe = .DC
}
public enum Universe {
    case DC
    case Marvel
}
