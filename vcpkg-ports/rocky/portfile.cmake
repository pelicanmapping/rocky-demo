vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO pelicanmapping/rocky
    SHA512 81d59a0b804e4b16581adb6280f62065fcb57f9788418fe47b670e748287bc4b122b54a4cbe9db5feb5ab1c050d7a5652f9fbd114a6a8719765ac9ae13dce81f
    REF main
	HEAD_REF main
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_install_cmake()
#vcpkg_cmake_config_fixup(PACKAGE_NAME "rocky" CONFIG_PATH "lib/cmake/rocky")
vcpkg_copy_pdbs()

#file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
