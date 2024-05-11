{ source, pythonPackages, lib }: pythonPackages.buildPythonApplication {
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

  meta = with lib; {
    description = "This is a tool to easily automate the verify process of your code library for competitive programming.";
    homepage = "https://github.com/online-judge-tools/verification-helper";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
