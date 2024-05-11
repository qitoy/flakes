{ source, pythonPackages, ... }: pythonPackages.buildPythonApplication {
  inherit (source) pname version src;

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
