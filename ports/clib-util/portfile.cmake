# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO powerof3/CLibUtil
    REF 3defe39f14a4e5fd24e9544f2a0c1b6d669d9b72
    SHA512 b0737ab906de302201a5f17eb3115b7a8b3e2cf22f75d4d8b01e23b4f02e7a30baeb3c023d6f1dfe45e46704e3497907568dba9288e530f36fae3d6d61bb3af7
    HEAD_REF master
)

# Install codes
set(CLIBUTIL_SOURCE ${SOURCE_PATH}/include/ClibUtil)
file(INSTALL ${CLIBUTIL_SOURCE} DESTINATION ${CURRENT_PACKAGES_DIR}/include)

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")