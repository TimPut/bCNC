with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "bCNC-environment";

  buildInputs = [ pkgs.python2 
                  pkgs.python27Packages.tkinter
                  pkgs.python27Packages.pyserial
                  pkgs.python27Packages.numpy
                  pkgs.python27Packages.pillow
                  pkgs.python27Packages.opencv
                  pkgs.python27Packages.scipy
                ];

  shellHook = ''
    python -m bCNC
  '';
}
