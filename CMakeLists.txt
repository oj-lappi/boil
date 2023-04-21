cmake_minimum_required( VERSION 3.16 )
project(boil VERSION 0.0.1)

set(BOIL_SCRIPTS
    scripts/boil
    scripts/boil_query
    scripts/boil_update
    scripts/boil_stat
)

#Install the executables
install(PROGRAMS ${BOIL_SCRIPTS} DESTINATION bin)

#Install the global config as the default in share
install(FILES defaults/config DESTINATION share/boil)

#Install base templates


#TODO: Install cmake config? We might want to use boil in some tests in a cmake project?
#Not a terrible use-case
