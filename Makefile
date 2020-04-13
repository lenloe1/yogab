# This file was generated by Simplicity Studio from the following template:
#   app/esf_common/template/unix/Makefile
# Please do not edit it directly.

# This Makefile defines how to build a unix host application connected to an
# Ember NCP EZSP device.  This also works for Windows machines running
# Cygwin.

# Variables

# If using a different compiler than GCC, you can create a makefile
# that overrides the following variables.  
#   COMPILER - Compiler binary path
#   LINKER - Linker binary path
#   ARCHIVE - Optional archive tool, only necessary for building a library.
#     Must also set GENERATE_LIBRARY := 1 in your makefile.
#   COMPILER_INCLUDES - Any additional compiler includes each prefixed with -I
#   COMPILER_DEFINES - Any additional compiler defines each prefixed with -D
#   COMPILER_FLAGS - The set of compiler flags (not including dependencies)
#   LINKER_FLAGS - The set of linker flags
#   ARCHIVE_FLAGS - The set of archive tool flags.
#   DEPENDENCY_FLAGS - The set of dependency generation flags used to generate
#     dependencies at the same time compilation is executed.
#   DEPENDENCY_POST_PROCESS - An optional post processing step for massaging
#     generated dependencies.  Only necessary when using a compiler on the 
#     non-native platform (e.g. Windows compiler on Linux)
#   PLATFORM_HEADER_FILE - The header file defining the basic int8u, int32u,
#     and other typedefs and platform elements.
#   ARCHIVE_EXTENSION - The file extension for archives if not using the standard
#     .a file extension.
#
# Then pass the makefile to this one on the command line with:
#   "make -C app/builder/yogab INCLUDE_MAKEFILE=my-custom.mak"
#   or 
#   "cd app/builder/yogab; make INCLUDE_MAKEFILE=my-custom.mak"
#

ifdef INCLUDE_MAKEFILE
  include $(INCLUDE_MAKEFILE)
endif  

COMPILER ?= gcc
LINKER   ?= gcc
ARCHIVE  ?= ar
STD      ?= gnu99

ARCHIVE_EXTENSION ?= .a

CC = $(COMPILER)
LD = $(LINKER)
SHELL = /bin/sh

ifneq ($(CURDIR),$(shell dirname '$(abspath $(lastword $(MAKEFILE_LIST)))'))
$(error This makefile should only be invoked under its current directory ($(shell dirname '$(abspath $(lastword $(MAKEFILE_LIST)))')))
endif

COMPILER_INCLUDES ?= 

INCLUDES= -I./ \
  $(COMPILER_INCLUDES) \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6 \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../.. \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../../stack \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/common \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/ezsp \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/serial \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/zigbee-framework \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/include \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util \
  -I./yogab \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/.. \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic \
  -I./../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host \
  -I../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host/board \
  -I../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/plugin/plugin-common/mbedtls \
  -I../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls \
  -I../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/include \
  -I../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/include/mbedtls \
  -I../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/sl_crypto/include \
 \

APP_BUILDER_OUTPUT_DIRECTORY=.
APP_BUILDER_CONFIG_HEADER=$(APP_BUILDER_OUTPUT_DIRECTORY)/yogab.h
APP_BUILDER_STORAGE_FILE=$(APP_BUILDER_OUTPUT_DIRECTORY)/yogab_endpoint_config.h

PLATFORM_HEADER_FILE ?= \"../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/compiler/gcc.h\"

DEFINES = \
  $(COMPILER_DEFINES) \
  -DUNIX \
  -DUNIX_HOST \
  -DPHY_NULL \
  -DCONFIGURATION_HEADER=\"../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/config.h\" \
  -DEZSP_HOST \
  -DGATEWAY_APP \
  -DZA_GENERATED_HEADER=\"$(APP_BUILDER_CONFIG_HEADER)\" \
  -DATTRIBUTE_STORAGE_CONFIGURATION=\"$(APP_BUILDER_STORAGE_FILE)\" \
  -DPLATFORM_HEADER=$(PLATFORM_HEADER_FILE) \
    -DBOARD_HOST \
  -DBOARD_HEADER=\"yogab_board.h\" \
  -DEM_AF_TEST_HARNESS_CODE \
  -DEM_AF_LINK_M \
  -DEM_AF_LINK_PTHREAD \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DEZSP_ASH \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \



COMPILER_FLAGS ?= \
  -Wall \
  -ggdb \
  -O0   \
  -std=$(STD)

APPLICATION_FILES= \
  ./znet-bookkeeping.c \
  ./call-command-handler.c \
  ./callback-stub.c \
  ./stack-handler-stub.c \
  ./znet-cli.c \
  ./yogab_callbacks.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/common/library.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/serial/command-interpreter2.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-common.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-host.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/../../stack/framework/event-control.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/led-stub.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/mem-util.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/antenna-stub/antenna-stub.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/buzzer-stub/buzzer-stub.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/address-table/address-table.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/phy/simulation/aes-software.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/stack/framework/ccm-star.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/concentrator/source-route-common.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/concentrator/source-route-host.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/counters/counters-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/counters/counters-host.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/device-database/device-database.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/device-database/device-database-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/esi-management/esi-management.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ezsp-host-io.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/serial-interface-uart.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/ezsp-host/ash/ash-host.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/ash-common.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/common/form-and-join.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/common/form-and-join-host-adapter.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/identify/identify.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/identify/identify-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/key-establishment/key-establishment.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/key-establishment/key-establishment-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/key-establishment/key-establishment-curve-support.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/key-establishment/key-establishment-storage-static.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/plugin/plugin-common/linked-list/linked-list.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/aes.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/aesni.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/arc4.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/asn1parse.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/asn1write.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/base64.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/bignum.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/blowfish.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/camellia.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ccm.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/certs.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/cipher.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/cipher_wrap.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/cmac.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ctr_drbg.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/debug.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/des.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/dhm.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecdh.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecdsa.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecjpake.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecp.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ecp_curves.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/entropy.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/entropy_poll.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/error.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/gcm.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/havege.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/hmac_drbg.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md2.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md4.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md5.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/md_wrap.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/memory_buffer_alloc.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/net_sockets.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/oid.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/padlock.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pem.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pk.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pk_wrap.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkcs11.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkcs12.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkcs5.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkparse.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/pkwrite.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ripemd160.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/rsa.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/rsa_internal.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/sha1.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/sha256.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/sha512.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_cache.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_ciphersuites.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_cookie.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_srv.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_ticket.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/ssl_tls.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/threading.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/timing.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/version.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/version_features.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509_create.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509_crl.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509_crt.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509_csr.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509write_crt.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/x509write_csr.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/third_party/mbedtls/library/xtea.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-find/network-find.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/partner-link-key-exchange/partner-link-key-exchange.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/partner-link-key-exchange/partner-link-key-exchange-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/permit-join-manager/permit-join-manager.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/price-client/price-client.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/price-client/price-client-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/price-client/price-client-consolidated-bills.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/price-common/price-common.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/price-common/price-common-time.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/reporting/reporting.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/simple-main/simple-main.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/crc.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/endian.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/random.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/system-timer.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host/micro.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host/token-def-unix.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/unix/host/token.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/plugin/serial/ember-printf-convert.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/serial/linux-serial.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/core-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/network-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/option-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/plugin-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/security-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/zcl-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/cli/zdo-cli.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security/af-node.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security/af-security-common.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security/af-trust-center.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/security/crypto-state.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/af-event.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/af-main-common.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/attribute-size.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/attribute-storage.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/attribute-table.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/client-api.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/message.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/multi-network.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/print.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/print-formatter.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/process-cluster-message.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/process-global-message.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/service-discovery-common.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/time-util.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/util.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/af-main-host.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/util/service-discovery-host.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/aes/rijndael-alg-fst.c \
  ../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/generic/aes/rijndael-api-fst.c \


LIBRARIES = \
 \


OUTPUT_DIR=$(APP_BUILDER_OUTPUT_DIRECTORY)/build
OUTPUT_DIR_CREATED= $(OUTPUT_DIR)/created
EXE_DIR=$(OUTPUT_DIR)/exe
# Build a list of object files from the source file list, but all objects
# live in the $(OUTPUT_DIR) above.  The list of object files
# created assumes that the file part of the filepath is unique
# (i.e. the bar.c of foo/bar.c is unique across all sub-directories included).
APPLICATION_OBJECTS= $(shell echo $(APPLICATION_FILES) | xargs -n1 echo | sed -e 's^.*/\(.*\)\.c^$(OUTPUT_DIR)/\1\.o^')

ifdef GENERATE_LIBRARY
TARGET_FILE= $(EXE_DIR)/yogab$(ARCHIVE_EXTENSION)
else
TARGET_FILE= $(EXE_DIR)/yogab
endif

# -MMD and -MF generates Makefile dependencies while at the same time compiling.
# -MP notes to add a dummy 'build' rule for each header file.  This 
# prevent a problem where a removed header file will generate an error because a
# dependency references it but it can't be found anymore.
DEPENDENCY_FLAGS ?= -MMD -MP -MF $(@D)/$(@F:.o=.d)

# Dependency post process is a way to massage generated dependencies.
# This is necessary for example when using Make under Cygwin but compiling
# using a native Windows compiler that generates native Windows paths
# that Cygwin will choke on.  Or if compiling on Linux using Wine to run a 
# Windows compiler, a similar problem can occur.  
DEPENDENCY_POST_PROCESS ?=

CPPFLAGS= $(INCLUDES) $(DEFINES) $(COMPILER_FLAGS) $(DEPENDENCY_FLAGS)
LINKER_FLAGS ?=

ifdef NO_READLINE
  CPPFLAGS += -DNO_READLINE
else
  LINKER_FLAGS +=  \
    -lreadline \
    -lncurses 
endif

# Conditionally include the math library if EM_AF_LINK_M is defined.
ifeq ($(findstring -DEM_AF_LINK_M,$(DEFINES)),-DEM_AF_LINK_M)
  LINKER_FLAGS += \
    -lm
endif

# Conditionally include the POSIX threads library if EM_AF_LINK_PTHREAD is
# defined.
ifeq ($(findstring -DEM_AF_LINK_PTHREAD,$(DEFINES)),-DEM_AF_LINK_PTHREAD)
  LINKER_FLAGS += \
    -lpthread
endif

ARCHIVE_FLAGS ?= rus

# Rules

.PHONY: all
all: $(TARGET_FILE)

ifneq ($(MAKECMDGOALS),clean)
-include $(APPLICATION_OBJECTS:.o=.d)
endif

ifdef GENERATE_LIBRARY
$(TARGET_FILE): $(APPLICATION_OBJECTS) $(LIBRARIES)
	$(ARCHIVE) $(ARCHIVE_FLAGS) $(TARGET_FILE) $^
	@echo -e '\n$@ build success'
else
$(TARGET_FILE): $(APPLICATION_OBJECTS) $(LIBRARIES)
	$(LD) $^ $(LINKER_FLAGS) -o $(TARGET_FILE)
	@echo -e '\n$@ build success'
endif

.PHONY: clean
clean:
	rm -rf $(OUTPUT_DIR)

$(OUTPUT_DIR_CREATED):
	mkdir -p $(OUTPUT_DIR)
	mkdir -p $(EXE_DIR)
	touch $(OUTPUT_DIR_CREATED)

# To facilitate generating all output files in a single output directory, we
# must create separate .o and .d rules for all the different sub-directories
# used by the source files.
# If additional directories are added that are not already in the
# $(APPLICATION_FILES) above, new rules will have to be created below.

# Object File rules

define make-deps 
$(OUTPUT_DIR)/$(notdir $(1:%.c=%.o)): $1 | $(OUTPUT_DIR_CREATED) 
endef 
 
$(foreach d, $(APPLICATION_FILES), $(eval $(call make-deps,$d))) 
 
%.o :
	$(CC) $(CPPFLAGS) -c $< -o $(OUTPUT_DIR)/$(@F)
	$(DEPENDENCY_POST_PROCESS)

# Dependency rules
# No explicit rules.  Dependencies are generated as part of the compile step.
