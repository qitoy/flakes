{ mySource, pythonPackages, ... }: pythonPackages.buildPythonApplication {
  inherit (mySource) pname version src;

  propagatedBuildInputs = with pythonPackages; [
    colorlog
    pyyaml
    online-judge-tools
    setuptools
    toml
    importlab
  ];

  doCheck = false;
}
