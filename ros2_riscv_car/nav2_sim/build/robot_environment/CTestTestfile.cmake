# CMake generated Testfile for 
# Source directory: /mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment
# Build directory: /mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(flake8 "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/test_results/robot_environment/flake8.xunit.xml" "--package-name" "robot_environment" "--output-file" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/ament_flake8/flake8.txt" "--command" "/opt/ros/humble/bin/ament_flake8" "--xunit-file" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/test_results/robot_environment/flake8.xunit.xml")
set_tests_properties(flake8 PROPERTIES  LABELS "flake8;linter" TIMEOUT "60" WORKING_DIRECTORY "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_flake8/cmake/ament_flake8.cmake;63;ament_add_test;/opt/ros/humble/share/ament_cmake_flake8/cmake/ament_cmake_flake8_lint_hook.cmake;18;ament_flake8;/opt/ros/humble/share/ament_cmake_flake8/cmake/ament_cmake_flake8_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment/CMakeLists.txt;38;ament_package;/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/test_results/robot_environment/lint_cmake.xunit.xml" "--package-name" "robot_environment" "--output-file" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/humble/bin/ament_lint_cmake" "--xunit-file" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/test_results/robot_environment/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;47;ament_add_test;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment/CMakeLists.txt;38;ament_package;/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment/CMakeLists.txt;0;")
add_test(pep257 "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/test_results/robot_environment/pep257.xunit.xml" "--package-name" "robot_environment" "--output-file" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/ament_pep257/pep257.txt" "--command" "/opt/ros/humble/bin/ament_pep257" "--xunit-file" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/test_results/robot_environment/pep257.xunit.xml")
set_tests_properties(pep257 PROPERTIES  LABELS "pep257;linter" TIMEOUT "60" WORKING_DIRECTORY "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_pep257/cmake/ament_pep257.cmake;41;ament_add_test;/opt/ros/humble/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;18;ament_pep257;/opt/ros/humble/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment/CMakeLists.txt;38;ament_package;/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/test_results/robot_environment/xmllint.xunit.xml" "--package-name" "robot_environment" "--output-file" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/ament_xmllint/xmllint.txt" "--command" "/opt/ros/humble/bin/ament_xmllint" "--xunit-file" "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/build/robot_environment/test_results/robot_environment/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment/CMakeLists.txt;38;ament_package;/mnt/nvme1n1p6/PLCT/NAV2/nav2_sim/src/robot_environment/CMakeLists.txt;0;")
