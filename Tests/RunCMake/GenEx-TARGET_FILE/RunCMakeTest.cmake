include(RunCMake)

run_cmake(TARGET_FILE-recursion)
run_cmake(OUTPUT_NAME-recursion)
run_cmake(TARGET_FILE_PREFIX)
run_cmake(TARGET_FILE_PREFIX-imported-target)
run_cmake(TARGET_FILE_PREFIX-non-valid-target)
run_cmake(TARGET_LINKER_FILE_PREFIX-non-valid-target)
run_cmake(TARGET_FILE_SUFFIX)
run_cmake(TARGET_FILE_SUFFIX-imported-target)
run_cmake(TARGET_FILE_SUFFIX-non-valid-target)
run_cmake(TARGET_LINKER_FILE_SUFFIX-non-valid-target)
run_cmake_with_options(TARGET_FILE_BASE_NAME -DCMAKE_BUILD_TYPE:STRING=Debug)
run_cmake_with_options(TARGET_FILE_BASE_NAME-imported-target -DCMAKE_BUILD_TYPE:STRING=Debug)
run_cmake(TARGET_FILE_BASE_NAME-non-valid-target)
run_cmake(TARGET_LINKER_FILE_BASE_NAME-non-valid-target)
run_cmake(NonValidTarget-TARGET_BUNDLE_DIR)
run_cmake(NonValidTarget-TARGET_BUNDLE_CONTENT_DIR)
run_cmake(ImportedTarget-TARGET_BUNDLE_DIR)
run_cmake(ImportedTarget-TARGET_BUNDLE_CONTENT_DIR)
run_cmake(ImportedTarget-TARGET_PDB_FILE)
run_cmake(ImportedTarget-TARGET_PDB_FILE_BASE_NAME)
if(LINKER_SUPPORTS_PDB)
  run_cmake(NonValidTarget-TARGET_PDB_FILE)
  run_cmake(ValidTarget-TARGET_PDB_FILE)
  run_cmake(NonValidTarget-TARGET_PDB_FILE_BASE_NAME)
  run_cmake(ValidTarget-TARGET_PDB_FILE_BASE_NAME)
else()
  run_cmake(NonValidCompiler-TARGET_PDB_FILE)
  run_cmake(NonValidCompiler-TARGET_PDB_FILE_BASE_NAME)
endif()