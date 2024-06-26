set(VCPKG_USE_HEAD_VERSION ON)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO pelicanmapping/rocky
	HEAD_REF main
    REF f46c18cb3ac272531c583b949c4c92e6305be77f
    SHA512 0
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_install_cmake()
vcpkg_copy_pdbs()
