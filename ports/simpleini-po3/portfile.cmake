# header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO powerof3/simpleini
    REF 00cf4ad2a58ae43b52f0cb4004e6f1ee4752d900
    SHA512 7069b0c5d0b02b9992096ceb03b855acbfc5fe3715e2337f778bfcf9834251d2a5122d78b492dde4e70b8f2840be34fc2f9bafef9e4709a8d8c3da6bfba7270b
    HEAD_REF master
)

# Install codes
set(SIMPLEINI_PO3_SOURCE
    ${SOURCE_PATH}/SimpleIni.h
    ${SOURCE_PATH}/ConvertUTF.h
    ${SOURCE_PATH}/ConvertUTF.c
)

file(INSTALL ${SIMPLEINI_PO3_SOURCE} DESTINATION ${CURRENT_PACKAGES_DIR}/include)
# Install sample
#file(INSTALL ${SOURCE_PATH}/snippets.cpp DESTINATION ${CURRENT_PACKAGES_DIR}/share/sample)

file(INSTALL ${SOURCE_PATH}/LICENSE.txt DESTINATION ${CURRENT_PACKAG_DIR}/share/${PORT} RENAME copyright)