import subprocess


if __name__ == "__main__":
    subprocess.run("pyenv install -s {{ cookiecutter.python_version }}",
                   shell=True, check=True)
