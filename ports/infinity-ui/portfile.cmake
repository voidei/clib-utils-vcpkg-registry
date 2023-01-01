# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH
    SOURCE_PATH
    REPO
    alexsylex/InfinityUI
    REF
    74296d76a693e6580764fa72c1fdc2854bc49124
    SHA512
    887cb8b8f369165fa7522e016bf493ee02798ae26ec906dac241ce0a291ea73a0987f196afc65e58e4eba7bdd185c09afe9e876d3f7301f9884e162ed5f8014a
    HEAD_REF
    main)

# Install codes
set(INFINITYUI_SOURCE ${SOURCE_PATH}/include/API.h)

file(
    INSTALL ${INFINITYUI_SOURCE}
    DESTINATION ${CURRENT_PACKAGES_DIR}/include
    RENAME InfinityUI.h)

file(
    INSTALL ${SOURCE_PATH}/LICENSE
    DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT}
    RENAME copyright)
