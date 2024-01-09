set(VCPKG_USE_HEAD_VERSION ON)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO pelicanmapping/rocky
	HEAD_REF main
    REF db49e68a085a57332befa30896061e9256d5e249
    SHA512 0
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_install_cmake()
vcpkg_copy_pdbs()
