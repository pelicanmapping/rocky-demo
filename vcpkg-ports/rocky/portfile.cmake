set(VCPKG_USE_HEAD_VERSION ON)
vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO pelicanmapping/rocky
	HEAD_REF main
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_install_cmake()
#vcpkg_cmake_config_fixup(PACKAGE_NAME "rocky" CONFIG_PATH "lib/cmake/rocky")
vcpkg_copy_pdbs()

#file(INSTALL ${SOURCE_PATH}/LICENSE.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
