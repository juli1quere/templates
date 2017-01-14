// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum L10n {
  /// Some alert body there
  case alertMessage
  /// Title of the alert
  case alertTitle
  /// You have %d apples
  case applesCount(Int)
  /// Those %d bananas belong to %@.
  case bananasOwner(Int, String)
  /// Hello, my name is %@ and I'm %d
  case greetings(String, Int)
  /// These are %3$@'s %1$d %2$@.
  case objectOwnership(Int, String, String)
  /// Some Reserved Keyword there
  case settingsNavigationBarSelf
  /// Settings
  case settingsNavigationBarTitleEvenDeeper
  /// DeepSettings
  case settingsNavigationBarTitleEvenDeeperThanWeCanHandle
  /// Here you can change some user profile settings.
  case seTTingsUSerProFileSectioNFooterText
  /// User Profile Settings
  case settingsUserProfileSectionHeaderTitle
}
// swiftlint:enable type_body_length

extension L10n: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .alertMessage:
        return L10n.tr(key: "alert_message")
      case .alertTitle:
        return L10n.tr(key: "alert_title")
      case .applesCount(let p0):
        return L10n.tr(key: "apples.count", p0)
      case .bananasOwner(let p0, let p1):
        return L10n.tr(key: "bananas.owner", p0, p1)
      case .greetings(let p0, let p1):
        return L10n.tr(key: "greetings", p0, p1)
      case .objectOwnership(let p0, let p1, let p2):
        return L10n.tr(key: "ObjectOwnership", p0, p1, p2)
      case .settingsNavigationBarSelf:
        return L10n.tr(key: "settings.navigation-bar.self")
      case .settingsNavigationBarTitleEvenDeeper:
        return L10n.tr(key: "settings.navigation-bar.title.even.deeper")
      case .settingsNavigationBarTitleEvenDeeperThanWeCanHandle:
        return L10n.tr(key: "settings.navigation-bar.title.even.deeper.than.we.can.handle")
      case .seTTingsUSerProFileSectioNFooterText:
        return L10n.tr(key: "seTTings.uSer-proFile-sectioN.footer_text")
      case .settingsUserProfileSectionHeaderTitle:
        return L10n.tr(key: "SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }

  private static func tr(key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

func tr(_ key: L10n) -> String {
  return key.string
}

