# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  cargo-compete = {
    pname = "cargo-compete";
    version = "v0.10.7";
    src = fetchFromGitHub {
      owner = "qryxip";
      repo = "cargo-compete";
      rev = "v0.10.7";
      fetchSubmodules = false;
      sha256 = "sha256-qlRVHSUVOqdTx4H3pE19Fy634742veTisHm6IqfKBUQ=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./cargo-compete-v0.10.7/Cargo.lock;
      outputHashes = {
        
      };
    };
  };
  cargo-equip = {
    pname = "cargo-equip";
    version = "v0.20.1";
    src = fetchFromGitHub {
      owner = "qryxip";
      repo = "cargo-equip";
      rev = "v0.20.1";
      fetchSubmodules = false;
      sha256 = "sha256-yxRiG96jC7zdlMQpL0B9Mle2kD1TOhqTZzMX3I8IE9I=";
    };
    cargoLock."Cargo.lock" = {
      lockFile = ./cargo-equip-v0.20.1/Cargo.lock;
      outputHashes = {
        
      };
    };
  };
  janome = {
    pname = "janome";
    version = "0.5.0";
    src = fetchurl {
      url = "https://pypi.org/packages/source/J/Janome/Janome-0.5.0.tar.gz";
      sha256 = "sha256-zko+16RjXC+AE5Y5Mn1bHgOBhYrXSjxKYejMg/ggQA4=";
    };
  };
  moralerspace-nf = {
    pname = "moralerspace-nf";
    version = "1.0.2";
    src = fetchurl {
      url = "https://github.com/yuru7/moralerspace/releases/download/v1.0.2/MoralerspaceNF_v1.0.2.zip";
      sha256 = "sha256-BtvY8r3VJZ0H5D6f1WAfamL4CmmBPKsYAcnp3Emccc4=";
    };
  };
  online-judge-verify-helper = {
    pname = "online-judge-verify-helper";
    version = "c42032627b21f4b1d45a8f42cb9d00dd0fa70668";
    src = fetchFromGitHub {
      owner = "online-judge-tools";
      repo = "verification-helper";
      rev = "c42032627b21f4b1d45a8f42cb9d00dd0fa70668";
      fetchSubmodules = false;
      sha256 = "sha256-Q7uI13kazajeYb3LRK7mMhx0V3hh7CVqnptmQksMLOA=";
    };
    date = "2023-12-09";
  };
  ssss = {
    pname = "ssss";
    version = "484620eaa0826c545269e8d25c5762d97baf78df";
    src = fetchFromGitHub {
      owner = "vm-xeck";
      repo = "ssss";
      rev = "484620eaa0826c545269e8d25c5762d97baf78df";
      fetchSubmodules = false;
      sha256 = "sha256-XOLEz8yFORJGKXj8sj2m0A5KgqXObQkfsMSq3kcl684=";
    };
    date = "2022-11-22";
  };
  vivaldi-ffmpeg-codecs = {
    pname = "vivaldi-ffmpeg-codecs";
    version = "126.0.6478.126";
    src = fetchurl {
      url = "https://api.snapcraft.io/api/v1/snaps/download/XKEcBqPM06H1Z7zGOdG5fbICuf8NWK5R_2899.snap";
      sha256 = "sha256-pBFKnW1zcthqyUhMG4DN/tVcSo41HTliuRYOscWTEwY=";
    };
  };
}
