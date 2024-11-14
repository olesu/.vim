#!/usr/bin/env python3
import subprocess
import re


def get_outdated_packages():
    result = subprocess.run(['pip', 'list', '--outdated'],
                            capture_output=True, text=True)
    outdated_packages = []
    for line in result.stdout.splitlines()[2:]:
        package_info = re.split(r'\s+', line)
        outdated_packages.append((package_info[0], package_info[2]))
    return outdated_packages


def update_requirements_file(outdated_packages, requirements_file='requirements.txt'):
    with open(requirements_file, 'r') as file:
        lines = file.readlines()

    with open(requirements_file, 'w') as file:
        for line in lines:
            package_name = line.split('==')[0]
            for outdated_package in outdated_packages:
                if package_name == outdated_package[0]:
                    line = f"{package_name}=={outdated_package[1]}\n"
                    break
            file.write(line)


def install_updates(outdated_packages):
    for package_name, latest_version in outdated_packages:
        subprocess.run(['pip', 'install', f'{package_name}=={latest_version}'])


def main():
    outdated_packages = get_outdated_packages()
    update_requirements_file(outdated_packages)
    install_updates(outdated_packages)


if __name__ == '__main__':
    main()
