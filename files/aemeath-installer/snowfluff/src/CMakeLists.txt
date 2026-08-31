add_executable(snowfluff)

ecm_add_qml_module(snowfluff
    URI
    com.damillora.aemeath.snowfluff
)

target_sources(snowfluff
    PRIVATE
    main.cpp
    installerdisklistmodel.cpp
    installeraction.cpp
)

ecm_target_qml_sources(snowfluff
    SOURCES
    qml/MainWindow.qml
    qml/InstallerHomePage.qml
    qml/InstallerDevicePage.qml
    qml/InstallerActionPage.qml
    qml/InstallerStatusPage.qml
    RESOURCES
    resources/aemeath-os.png
)

target_link_libraries(snowfluff
    PRIVATE
    Qt6::Quick
    Qt6::Qml
    Qt6::Gui
    Qt6::QuickControls2
    Qt6::Widgets
    KF6::I18n
    KF6::I18nQml
    KF6::CoreAddons
    KF6::Solid
    KF6::AuthCore
    KF6::IconThemes
)

install(TARGETS snowfluff ${KDE_INSTALL_TARGETS_DEFAULT_ARGS})

add_subdirectory(action)
