pico_sdk_init()

# More build output formats (uf2, bin, hex, ...)
pico_add_extra_outputs(${PROJECT_NAME})

# Libs
target_link_libraries(${PROJECT_NAME} 
        pico_stdlib
        hardware_gpio
)

# UART / USB
pico_enable_stdio_usb(${PROJECT_NAME} 0)
pico_enable_stdio_uart(${PROJECT_NAME} 1)
