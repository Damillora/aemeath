add_executable(snowfluff_helper
    action.cpp
)
target_link_libraries(snowfluff_helper
    PRIVATE
    Qt6::Core
    KF6::AuthCore
)
install(TARGETS snowfluff_helper DESTINATION ${KAUTH_HELPER_INSTALL_DIR})
kauth_install_helper_files(snowfluff_helper com.damillora.aemeath.snowfluffhelper root)
kauth_install_actions(com.damillora.aemeath.snowfluffhelper com.damillora.aemeath.snowfluffhelper.install.actions)
