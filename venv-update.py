#!/usr/bin/env python3
"""
This script updates the requirements file with the latest versions of the
outdated packages and installs the updates.
"""
import subprocess
import re


def get_outdated_packages():
    """
    Get a list of outdated packages.

    :return: List of outdated packages.
    """

    # Run the pip list --outdated command to get a list of outdated packages
    # The output of the command is in the following format:
    # Package    Version    Latest    Type
    # package1    1.0        1.1       wheel
    # package2    2.0        2.1       wheel
    result = subprocess.run(['pip', 'list', '--outdated'],
                            capture_output=True, text=True)
    outdated_packages = []
    for line in result.stdout.splitlines()[2:]:
        # Split the line by whitespace
        package_info = re.split(r'\s+', line)
        # Add the package name and the latest version to the list of outdated
        # packages
        outdated_packages.append((package_info[0], package_info[2]))
    return outdated_packages


def update_requirements_file(outdated_packages, requirements_file='requirements.txt'):
    """
    Update the requirements file with the latest versions of the outdated
    packages.

    :param outdated_packages: List of outdated packages.
    :param requirements_file: Path to the requirements file.
    """

    # Read the requirements file
    with open(requirements_file, 'r') as file:
        lines = file.readlines()

    # Update the requirements file with the latest versions of the outdated
    # packages
    with open(requirements_file, 'w') as file:
        # Write the updated lines to the file
        for line in lines:
            # Get the package name
            # The package name is the first part of the line before '=='
            package_name = line.split('==')[0]
            # Check if the package is in the list of outdated packages
            for outdated_package in outdated_packages:
                if package_name == outdated_package[0]:
                    # Update the line with the latest version
                    line = f"{package_name}=={outdated_package[1]}\n"
                    break
            file.write(line)


def install_updates(outdated_packages):
    """
    Install the updates for the outdated packages.
    """

    for package_name, latest_version in outdated_packages:
        # Install the package with the latest version
        # The command is in the format: pip install
        # package_name==latest_version
        subprocess.run(['pip', 'install', f'{package_name}=={latest_version}'])


def main():
    outdated_packages = get_outdated_packages()
    update_requirements_file(outdated_packages)
    install_updates(outdated_packages)


if __name__ == '__main__':
    main()
