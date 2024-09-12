%bcond_without tests
%bcond_without weak_deps

%global debug_package %{nil}
%global __os_install_post %(echo '%{__os_install_post}' | sed -e 's!/usr/lib[^[:space:]]*/brp-python-bytecompile[[:space:]].*$!!g')
%global __provides_exclude_from ^/opt/ros/%{ros_distro}/.*$
%global __requires_exclude_from ^/opt/ros/%{ros_distro}/.*$

%define RosPkgName      gps-umd
%define with_tests 0

Name:           ros-%{ros_distro}-%{RosPkgName}
Version:        0.3.3
Release:        1%{?dist}%{?release_suffix}
Summary:        gps_umd metapackage

Url:            http://ros.org/wiki/gps_umd
License:        BSD
Source0:        %{name}_%{version}.orig.tar.gz

Requires: ros-%{ros_distro}-gpsd-client
Requires: ros-%{ros_distro}-gps-common

BuildRequires: ros-%{ros_distro}-catkin

%if 0%{?with_tests}
%endif

Provides:       %{name}-devel = %{version}-%{release}
Provides:       %{name}-doc = %{version}-%{release}
Provides:       %{name}-runtime = %{version}-%{release}

%description
gps_umd metapackage

%prep
%autosetup -p1

%build
# Needed to bootstrap since the ros_workspace package does not yet exist.
export PYTHONPATH=/opt/ros/%{ros_distro}/lib/python%{python3_version}/site-packages

export ROS_DISTRO=%{ros_distro}
export ROS_PYTHON_VERSION=%{python3_version}

# In case we're installing to a non-standard location, look for a setup.sh
# in the install tree and source it.  It will set things like
# CMAKE_PREFIX_PATH, PKG_CONFIG_PATH, and PYTHONPATH.
if [ -f "/opt/ros/%{ros_distro}/setup.sh" ]; then . "/opt/ros/%{ros_distro}/setup.sh"; fi
mkdir -p .obj-%{_target_platform} && cd .obj-%{_target_platform}
%cmake3 \
    -UINCLUDE_INSTALL_DIR \
    -ULIB_INSTALL_DIR \
    -USYSCONF_INSTALL_DIR \
    -USHARE_INSTALL_PREFIX \
    -ULIB_SUFFIX \
    -DCMAKE_INSTALL_PREFIX="/opt/ros/%{ros_distro}" \
    -DAMENT_PREFIX_PATH="/opt/ros/%{ros_distro}" \
    -DCMAKE_PREFIX_PATH="/opt/ros/%{ros_distro}" \
    -DCMAKE_INSTALL_LIBDIR="/opt/ros/%{ros_distro}/lib" \
    -DSETUPTOOLS_DEB_LAYOUT=OFF \
%if !0%{?with_tests}
    -DBUILD_TESTING=OFF \
%endif
    ..

%make_build

%install
# Needed to bootstrap since the ros_workspace package does not yet exist.
export PYTHONPATH=/opt/ros/%{ros_distro}/lib/python%{python3_version}/site-packages

# In case we're installing to a non-standard location, look for a setup.sh
# in the install tree and source it.  It will set things like
# CMAKE_PREFIX_PATH, PKG_CONFIG_PATH, and PYTHONPATH.
if [ -f "/opt/ros/%{ros_distro}/setup.sh" ]; then . "/opt/ros/%{ros_distro}/setup.sh"; fi
%make_install -C .obj-%{_target_platform}

%if 0%{?with_tests}
%check
# Needed to bootstrap since the ros_workspace package does not yet exist.
export PYTHONPATH=/opt/ros/%{ros_distro}/lib/python%{python3_version}/site-packages

# Look for a Makefile target with a name indicating that it runs tests
TEST_TARGET=$(%__make -qp -C .obj-%{_target_platform} | sed "s/^\(test\|check\):.*/\\1/;t f;d;:f;q0")
if [ -n "$TEST_TARGET" ]; then
# In case we're installing to a non-standard location, look for a setup.sh
# in the install tree and source it.  It will set things like
# CMAKE_PREFIX_PATH, PKG_CONFIG_PATH, and PYTHONPATH.
if [ -f "/opt/ros/%{ros_distro}/setup.sh" ]; then . "/opt/ros/%{ros_distro}/setup.sh"; fi
CTEST_OUTPUT_ON_FAILURE=1 \
    %make_build -C .obj-%{_target_platform} $TEST_TARGET || echo "RPM TESTS FAILED"
else echo "RPM TESTS SKIPPED"; fi
%endif

%files
/opt/ros/%{ros_distro}

%changelog
* Web Jan 10 2024 Ken Tossell ken@tossell.net - 0.3.3-1
- Autogenerated by ros-porting-tools
