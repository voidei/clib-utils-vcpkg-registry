# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO alandtse/MergeMapper
    REF 2630b22661a23d04b2298bcd89e2dc24bfe7bfe7
    SHA512 3a098047558cfd26565f93b47fa274533f150994dc26ba510988ec15f9a71fed5b957d128dcb25c777cbb415b07ad2ba87a1af31ee818bd0107ccbd3bad889af
    HEAD_REF main
)

# Install codes
set(MERGEMAPPER_SOURCE ${SOURCE_PATH}/src/MergeMapperPluginsAPI.cpp ${SOURCE_PATH}/include/MergeMapperPluginAPI.h)

file(INSTALL ${MERGEMAPPER_SOURCE} DESTINATION ${CURRENT_PACKAGES_DIR}/include)

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)