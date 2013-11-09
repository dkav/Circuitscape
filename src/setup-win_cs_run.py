"""
This is a setup.py script generated by py2applet

Usage:
    python setup.py py2exe
"""

# experimental code for linkage mapper interface BHM 2011-09-04

import os
import py2exe
from distutils.core import setup
from csversion import CIRCUITSCAPE_VER, CIRCUITSCAPE_AUTHOR, CIRCUITSCAPE_EMAIL

#INCLUDES = []
INCLUDES =[]
PACKAGES = ['numpy', 'scipy', 'pyamg',"scipy.io.matlab.streams"]

DATA_FILES = ['cs_run.py', 'circuitscape.py', 'cs_state.py', 'cs_base.py', 'cs_io.py', 'cs_cfg.py', 'cs_raster.py']
OPTIONS = {'includes': PACKAGES}

setup(
    console=['cs_run.py'],
    data_files=DATA_FILES,
    options={'py2exe': OPTIONS},
    version=CIRCUITSCAPE_VER,
    author=CIRCUITSCAPE_AUTHOR,
    author_email=CIRCUITSCAPE_EMAIL
)
