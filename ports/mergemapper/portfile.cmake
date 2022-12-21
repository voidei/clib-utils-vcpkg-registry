# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO alandtse/MergeMapper
    REF 2630b22661a23d04b2298bcd89e2dc24bfe7bfe7
    SHA512 0
    HEAD_REF main
)

# Install codes
set(MERGEMAPPER_SOURCE ${SOURCE_PATH}/src/MergeMapperPluginAPI.cpp ${SOURCE_PATH}/include/MergeMapperPluginAPI.h)

file(INSTALL ${MERGEMAPPER_SOURCE} DESTINATION ${CURRENT_PACKAGES_DIR}/include)

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)