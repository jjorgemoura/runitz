//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

struct SettingsOptionsFactory {

    func defaultSettingsOptions() -> SettingsOptions {

        let settingsOptionGroupPreferences = SettingsOptionGroup(options: [settingsOptionMode()],
                                                                 title: "Preferences",
                                                                 footer: nil)

        let settingsOptionGroupPrivacy = SettingsOptionGroup(options: [settingsOptionPrivacyPolicy()],
                                                             title: "Privacy",
                                                             footer: nil)

        let settingsOptionGroupProject = SettingsOptionGroup(options: [settingsOptionGithub(), settingsOptionFaq(), settingsOptionThirdPartyDependencies()],
                                                             title: "Project",
                                                             footer: nil)

        let settingsOptionGroupAbout = SettingsOptionGroup(options: [settingsOptionAuthor()],
                                                           title: "About",
                                                           footer: nil)

        let settingOptions = [settingsOptionGroupPreferences, settingsOptionGroupPrivacy, settingsOptionGroupProject, settingsOptionGroupAbout].filter { $0.isVisible() }

        return SettingsOptions(optionGroups: settingOptions, systemInfo: SystemInfo())
    }

    private func settingsOptionMode() -> SettingsOption {
        return SettingsOption(title: "Mode",
                              description: nil,
                              accessoryType: .none,
                              isVisible: true)
    }

    private func settingsOptionPrivacyPolicy() -> SettingsOption {
        return SettingsOption(title: "Privacy Policy",
                              description: nil,
                              accessoryType: .none,
                              isVisible: true)
    }

    private func settingsOptionGithub() -> SettingsOption {
        return SettingsOption(title: "Github",
                              description: nil,
                              accessoryType: .none,
                              isVisible: true)
    }

    private func settingsOptionFaq() -> SettingsOption {
        return SettingsOption(title: "FAQ",
                              description: nil,
                              accessoryType: .none,
                              isVisible: true)
    }

    private func settingsOptionThirdPartyDependencies() -> SettingsOption {
        return SettingsOption(title: "Third Party Dependencies",
                              description: nil,
                              accessoryType: .none,
                              isVisible: true)
    }

    private func settingsOptionAuthor() -> SettingsOption {
        return SettingsOption(title: "Author",
                              description: nil,
                              accessoryType: .none,
                              isVisible: true)
    }
}
