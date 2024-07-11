//
//  File.swift
//  
//
//  Created by alfian on 11/07/24.
//

import SwiftUI

public extension Color {
  static let foregroundMuted = Color("foreground/fg_muted", bundle: .module)
  static let foregroundDefault = Color("foreground/fg_default", bundle: .module)
  static let foregroundDisabled = Color("foreground/fg_disabled", bundle: .module)
  static let foregroundEmphasis = Color("foreground/fg_emphasis", bundle: .module)
}

public extension Color {
  static let backgroundDefault = Color("background/bg_default", bundle: .module)
  static let backgroundEmphasis = Color("background/bg_emphasis", bundle: .module)
  static let backgroundMuted = Color("background/bg_muted", bundle: .module)
}

public extension Color {
  static let defaultAccentEmphasis = Color("default/accent_emphasis", bundle: .module)
  static let defaultAccentMuted = Color("default/accent_muted", bundle: .module)
  static let defaultDangerEmphasis = Color("default/danger_emphasis", bundle: .module)
  static let defaultDangerMuted = Color("default/danger_muted", bundle: .module)
  static let defaultInfoEmphasis = Color("default/info_emphasis", bundle: .module)
  static let defaultInfoMuted = Color("default/info_muted", bundle: .module)
  static let defaultSuccessEmphasis = Color("default/success_emphasis", bundle: .module)
  static let defaultSuccessMuted = Color("default/success_muted", bundle: .module)
  static let defaultWarningEmphasis = Color("default/warning_emphasis", bundle: .module)
  static let defaultWarningMuted = Color("default/warning_muted", bundle: .module)
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
