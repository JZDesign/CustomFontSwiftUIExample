import SwiftUI

public enum JetBrainsMono: String, CaseIterable {
    case regular = "JetBrainsMono-Regular"
    case italic = "JetBrainsMono-Italic"
    case medium = "JetBrainsMono-Medium"
    case mediumItalic = "JetBrainsMono-MediumItalic"
    case bold = "JetBrainsMono-Bold"
    case boldItalic = "JetBrainsMono-BoldItalic"
    case extraBold = "JetBrainsMono-ExtraBold"
    case extraBoldItalic = "JetBrainsMono-ExtraBoldItalic"
    case light = "JetBrainsMono-Light"
    case lightItalic = "JetBrainsMono-LightItalic"
    case extraLight = "JetBrainsMono-ExtraLight"
    case extraLightItalic = "JetBrainsMono-ExtraLightItalic"
    case thin = "JetBrainsMono-Thin"
    case thinItalic = "JetBrainsMono-ThinItalic"
}

public extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 60
        case .title: return 48
        case .title2: return 34
        case .title3: return 24
        case .headline, .body: return 18
        case .subheadline, .callout: return 16
        case .footnote: return 14
        case .caption, .caption2: return 12
        @unknown default:
            return 8
        }
    }
}

public extension Font {
    private static func custom(_ font: JetBrainsMono, relativeTo style: Font.TextStyle) -> Font {
        custom(font.rawValue, size: style.size, relativeTo: style)
    }

    static let jetBrainsMono = custom(.regular, relativeTo: .body)
    static let jetBrainsMonoLargeTitle = custom(.bold, relativeTo: .largeTitle)
    static let jetBrainsMonoLargeTitleBlack = custom(.extraBold, relativeTo: .largeTitle)
    static let jetBrainsMonoLargeTitleSemiBold = custom(.medium, relativeTo: .largeTitle)
    static let jetBrainsMonoTitle1 = custom(.bold, relativeTo: .title)
    static let jetBrainsMonoTitle2 = custom(.medium, relativeTo: .title2)
    static let jetBrainsMonoTitle3 = custom(.medium, relativeTo: .title3)
    static let jetBrainsMonoHeadline = custom(.medium, relativeTo: .headline)
    static let jetBrainsMonoSubHeadline = custom(.regular, relativeTo: .subheadline)
    static let jetBrainsMonoSubHeadlineItalic = custom(.italic, relativeTo: .subheadline)
    static let jetBrainsMonoSubHeadlineSemiBold = custom(.medium, relativeTo: .subheadline)
    static let jetBrainsMonoFootnote = custom(.regular, relativeTo: .footnote)
    static let jetBrainsMonoFootnoteSemiBold = custom(.medium, relativeTo: .footnote)
    static let jetBrainsMonoCaption = custom(.regular, relativeTo: .caption2)
    
}
