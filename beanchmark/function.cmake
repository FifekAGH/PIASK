function(target_stlink_flash TARGET)
  add_custom_target(
    ${TARGET}.flash_stlink
    COMMAND openocd -f ${CMAKE_CURRENT_SOURCE_DIR}/../openocd.cfg -c
            "program ${CMAKE_BINARY_DIR}/${TARGET}.elf verify reset exit"
    DEPENDS ${TARGET}
    COMMENT "Flashing stm32h745I core")
endfunction(target_stlink_flash)