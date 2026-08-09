import QtQuick
import qs.Common
import qs.Modules.Plugins

PluginSettings {
    id: root
    pluginId: "materialPlayer"

    ToggleSetting {
        settingKey: "showLyrics"
        label: I18n.tr("Show Synced Lyrics")
        description: I18n.tr("Display real-time synchronized lyrics from LRCLIB")
        defaultValue: false
    }

    SelectionSetting {
        settingKey: "lyricAlignment"
        label: I18n.tr("Lyric Alignment")
        description: I18n.tr("Text alignment for synchronized lyric lines")
        options: [
            { label: I18n.tr("Center Aligned"), value: "center" },
            { label: I18n.tr("Left Aligned"), value: "left" },
            { label: I18n.tr("Right Aligned"), value: "right" }
        ]
        defaultValue: "center"
    }

    ToggleSetting {
        settingKey: "showVisualizer"
        label: I18n.tr("Show Wavy CAVA Visualizer")
        description: I18n.tr("Render dynamic audio spectrum wave canvas background")
        defaultValue: true
    }

    SelectionSetting {
        settingKey: "preferredPlayer"
        label: I18n.tr("Preferred Media Player")
        description: I18n.tr("Specify active player priority")
        options: [
            { label: I18n.tr("Auto (Active Player)"), value: "auto" },
            { label: "Spotify", value: "spotify" },
            { label: "Firefox / Browser", value: "firefox" },
            { label: "Chromium / Chrome", value: "chromium" },
            { label: "mpv", value: "mpv" },
            { label: "VLC", value: "vlc" }
        ]
        defaultValue: "auto"
    }

    ToggleSetting {
        settingKey: "filterDuplicates"
        label: I18n.tr("Filter Duplicate Players")
        description: I18n.tr("Hide duplicate MPRIS player instances")
        defaultValue: true
    }

    SelectionSetting {
        settingKey: "colorMode"
        label: I18n.tr("Accent Color Theme")
        description: I18n.tr("Choose system generated Material You color mode")
        options: [
            { label: I18n.tr("System Primary (Matugen)"), value: "primary" },
            { label: I18n.tr("System Secondary"), value: "secondary" },
            { label: I18n.tr("Custom Color"), value: "custom" }
        ]
        defaultValue: "primary"
    }

    ColorSetting {
        settingKey: "customColor"
        label: I18n.tr("Custom Accent Color")
        description: I18n.tr("Used when color theme is set to Custom Color")
        defaultValue: "#6750A4"
    }

    SliderSetting {
        settingKey: "backgroundOpacity"
        label: I18n.tr("Background Opacity")
        description: I18n.tr("Widget card background transparency level")
        defaultValue: 85
        minimum: 0
        maximum: 100
        unit: "%"
    }

    SliderSetting {
        settingKey: "borderOpacity"
        label: I18n.tr("Border Opacity")
        description: I18n.tr("Widget border stroke opacity")
        defaultValue: 100
        minimum: 0
        maximum: 100
        unit: "%"
    }

    ToggleSetting {
        settingKey: "cookieRotation"
        label: I18n.tr("Rotate Cookie Badge")
        description: I18n.tr("Continuous smooth rotation for 12-sided Play/Pause badge")
        defaultValue: true
    }

    SliderSetting {
        settingKey: "cookieRotateSpeed"
        label: I18n.tr("Cookie Rotation Speed")
        description: I18n.tr("Badge rotation animation speed")
        defaultValue: 5
        minimum: 1
        maximum: 10
    }
}
