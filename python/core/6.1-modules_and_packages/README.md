facebook - Base dir
    - create virtual env
        >>> python -m venv [your-venv-name]

        activate/deactivate venv
        >>> [your-venv-name]\Scripts\activate
        >>> [your-venv-name]\Scripts\deactivate

        check installed modules and package:
        >>> pip list/pip freeze

        install/uninstall modules and package
        >>> pip install [your-package-name=X.X.X]
        >>> pip uninstall [your-package-name=X.X.X]
    
    - create [requirements.txt]
    - make sure you are inside a base dir
    >>> pip freeze > [requirements.txt]
    - install package and modules from [requirements.txt]
    >>> pip install -r [requirements.txt]
    