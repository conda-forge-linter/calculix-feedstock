cd ccx*/src
rm Makefile_MT
cp ${RECIPE_DIR}/Makefile_MT Makefile_MT

make -f Makefile_MT \
    SPOOLES_INCLUDE_DIR="${PREFIX}/include/spooles" \
    LIB_DIR="${PREFIX}/lib" \
    VERSION="${PKG_VERSION}" -j${CPU_COUNT}

mkdir -p ${PREFIX}/bin
cp ccx_*_MT ${PREFIX}/bin/ccx
cd $SRC_DIR
