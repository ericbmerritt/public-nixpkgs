{ plasmaPackage, extra-cmake-modules, baloo, kactivities, kconfig
, kcoreaddons, kdeclarative, kguiaddons, ki18n, kio, kservice
, kfilemetadata, plasma-framework, qtdeclarative, qtmultimedia
, taglib
}:

plasmaPackage rec {
  name = "plasma-mediacenter";
  nativeBuildInputs = [
    extra-cmake-modules
  ];
  propagatedBuildInputs = [
    baloo kactivities kdeclarative kfilemetadata ki18n kio plasma-framework
    kconfig kcoreaddons kguiaddons kservice qtdeclarative qtmultimedia taglib
  ];
}
