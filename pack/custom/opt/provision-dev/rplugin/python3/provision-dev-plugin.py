import pynvim
import pynvim.api

import os
import subprocess
from contextlib import contextmanager


@contextmanager
def change_directory(new_directory: str):
    original_directory = os.getcwd()
    os.chdir(new_directory)
    try:
        yield
    finally:
        os.chdir(original_directory)


@pynvim.plugin
class Provision(object):
    def __init__(self, vim: pynvim.api.Nvim) -> None:
        self.vim = vim

    @pynvim.command('ProvisionDev', nargs='*', range='', sync=True)
    def run(self, _, __):
        wd = os.path.expanduser('~/git/provision-dev')
        with change_directory(wd):
            command = ['git', 'pull']
            result = subprocess.run(command, capture_output=True, text=True)

            if result.returncode != 0:
                raise RuntimeError("git pull failed")
