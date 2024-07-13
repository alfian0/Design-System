//
//  File.swift
//  
//
//  Created by alfian on 11/07/24.
//

import SwiftUI

public extension Color {
  static let foregroundMuted = Color("fg_muted", bundle: .module)
  static let foregroundDefault = Color("fg_default", bundle: .module)
  static let foregroundDisabled = Color("fg_disabled", bundle: .module)
  static let foregroundEmphasis = Color("fg_emphasis", bundle: .module)
}

public extension Color {
  static let backgroundDefault = Color("bg_default", bundle: .module)
  static let backgroundEmphasis = Color("bg_emphasis", bundle: .module)
  static let backgroundMuted = Color("bg_muted", bundle: .module)
}

public extension Color {
  static let defaultAccentEmphasis = Color("accent_emphasis", bundle: .module)
  static let defaultAccentMuted = Color("accent_muted", bundle: .module)
  static let defaultDangerEmphasis = Color("danger_emphasis", bundle: .module)
  static let defaultDangerMuted = Color("danger_muted", bundle: .module)
  static let defaultInfoEmphasis = Color("info_emphasis", bundle: .module)
  static let defaultInfoMuted = Color("info_muted", bundle: .module)
  static let defaultSuccessEmphasis = Color("success_emphasis", bundle: .module)
  static let defaultSuccessMuted = Color("success_muted", bundle: .module)
  static let defaultWarningEmphasis = Color("warning_emphasis", bundle: .module)
  static let defaultWarningMuted = Color("warning_muted", bundle: .module)
}

public extension Color {
  static let foregroundLink = Color.defaultAccentEmphasis
  static let foregroundAccent = Color.defaultAccentEmphasis
  static let foregroundDanger = Color.defaultDangerEmphasis
  static let foregroundInfo = Color.defaultInfoEmphasis
  static let foregroundSuccess = Color.defaultSuccessEmphasis
  static let foregroundWarning = Color.defaultWarningEmphasis
}

public extension Color {
  static let backgrounddAccentEmphasis = Color.defaultAccentEmphasis
  static let backgroundAccentMuted = Color.defaultAccentMuted
  static let backgroundDangerEmphasis = Color.defaultDangerEmphasis
  static let backgroundDangerMuted = Color.defaultDangerMuted
  static let backgroundInfoEmphasis = Color.defaultInfoEmphasis
  static let backgroundInfoMuted = Color.defaultInfoMuted
  static let backgroundSuccessEmphasis = Color.defaultSuccessEmphasis
  static let backgroundSuccessMuted = Color.defaultSuccessMuted
  static let backgroundWarningEmphasis = Color.defaultWarningEmphasis
  static let backgroundWarningMuted = Color.defaultWarningMuted
}

public extension Color {
  static let boderDefault = Color.foregroundDefault
  static let boderEmphasis = Color.defaultAccentEmphasis
  static let boderDisabled = Color.foregroundDisabled
}
