      # Develpment environment shells
      devShells.${pkgs.system}.py = devenv.lib.mkShell {
        inherit inputs pkgs;
        modules = [{
          languages.python.enable = true;
          languages.python.venv.enable = true;
          packages = with pkgs;
            [
              (python3.withPackages (ps:
                with ps; [
                  wheel # for building pip packages
                  jupyter
                  numpy
                  pandas
                  scikit-learn
                  nltk
                  scipy
                  matplotlib
                ]))
            ];
        }];
      };