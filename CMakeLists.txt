cmake_minimum_required( VERSION 3.16 )
project(boil VERSION 0.0.1)

set(BOIL_SCRIPTS
    scripts/boil
    scripts/boil_query
    scripts/boil_update
)

#Install the executables
install(PROGRAMS ${BOIL_SCRIPTS} DESTINATION bin)

#Options for config directory location? Or at least check XDG_CONFIG_HOME... user or system level install will be very different here...
install(FILES defaults/config DESTINATION ~/.config/boil)

#Install base templates


#TODO: Install cmake config? We might want to use boil in some tests in a cmake project?
#Not a terrible use-case
