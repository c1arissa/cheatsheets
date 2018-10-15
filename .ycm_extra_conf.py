import os
import ycm_core

flags = [
'-x', 
'c++', 
#'-Wall', 
#'-Werror',
#'-Wextra',
#'-fexceptions',
'-I.',
'-std=c++11',
'-lpthread',
'-L/usr/lib/libboost_system-mt.so.1.53.0',
]


if 't.cpp' in os.sys.argv[0].split('.', 1)[1]:
    GTEST_DIR = '/mnt/c/Users/Clarissa/gits/googletest-master/googletest'
    
    if 'knu06' in os.getenv(USER):
        GTEST_DIR = '/home/ibutt/googletest-master/googletest'

    flags += [
    '-pthread',
    '-I',
    GTEST_DIR + '/include',
    '-I',
    GTEST_DIR + '/make/gtest_main.a'
    ]


def Settings( **kwargs ):
    return {
        #'flags': ['-x', 'c++', '-Wall', '-Werror', '-I', '.'],
        'flags': flags,
    }
