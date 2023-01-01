# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH
    SOURCE_PATH
    REPO
    powerof3/simpleini
    REF
    00cf4ad2a58ae43b52f0cb4004e6f1ee4752d900
    SHA512
    c9a8527e67f1273c52d61e3daf0fdee223196c4d4cd2b6a04ba58b0c297c0d36420c7357a7a73a56d29c463a6b28559f412314fc389909465df4963090badc42
    HEAD_REF
    master)

# Install codes
set(SIMPLEINI_PO3_SOURCE ${SOURCE_PATH}/SimpleIni.h ${SOURCE_PATH}/ConvertUTF.h ${SOURCE_PATH}/ConvertUTF.c)

file(INSTALL ${SIMPLEINI_PO3_SOURCE} DESTINATION ${CURRENT_PACKAGES_DIR}/include)

# Install sample file(INSTALL ${SOURCE_PATH}/snippets.cpp DESTINATION ${CURRENT_PACKAGES_DIR}/share/sample)
file(
    INSTALL ${SOURCE_PATH}/LICENCE.txt
    DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT}
    RENAME copyright)
