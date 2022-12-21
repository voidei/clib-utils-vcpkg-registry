# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO alexsylex/InfinityUI
    REF 74296d76a693e6580764fa72c1fdc2854bc49124
    SHA512 0
    HEAD_REF main
)

# Install codes
set(INFINITYUI_SOURCE
    ${SOURCE_PATH}/include/API.h
)

file(INSTALL ${INFINITYUI_SOURCE} DESTINATION ${CURRENT_PACKAGES_DIR}/include)

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)