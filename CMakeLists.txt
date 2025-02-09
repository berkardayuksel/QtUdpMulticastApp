cmake_minimum_required(VERSION 3.16)

project(QtUdpMulticastApp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core Quick Xml)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appQtUdpMulticastApp
    main.cpp
    udpreceiver.cpp
    socketcanreader.cpp
    xmlparser.cpp
)

qt_add_qml_module(appQtUdpMulticastApp
    URI QtUdpMulticastApp
    VERSION 1.0
    QML_FILES
        qml/Main.qml
)

qt_add_resources(appQtUdpMulticastApp "qml_resources"
    PREFIX "/qml"
    BASE "qml"
    FILES
        qml/Main.qml
)

set_target_properties(appQtUdpMulticastApp PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQtUdpMulticastApp
    PRIVATE Qt6::Quick Qt6::Core Qt6::Xml
)

include(GNUInstallDirs)
install(TARGETS appQtUdpMulticastApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
