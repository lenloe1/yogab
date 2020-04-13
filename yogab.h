// This file is generated by Simplicity Studio.  Please do not edit manually.
//
//

// Enclosing macro to prevent multiple inclusion
#ifndef SILABS_ZNET_CONFIG
#define SILABS_ZNET_CONFIG


/**** Included Header Section ****/



// Networks
#define EM_AF_GENERATED_NETWORK_TYPES { \
  EM_AF_NETWORK_TYPE_ZIGBEE_PRO, /* Primary */ \
}
#define EM_AF_GENERATED_ZIGBEE_PRO_NETWORKS { \
  { \
    /* Primary */ \
    ZA_COORDINATOR, \
    EMBER_AF_SECURITY_PROFILE_Z3, \
  }, \
}
#define EM_AF_GENERATED_NETWORK_STRINGS  \
  "Primary (pro)", \
/**** ZCL Section ****/
#define ZA_PROMPT "yogab"
#define ZCL_USING_BASIC_CLUSTER_SERVER
#define ZCL_USING_IDENTIFY_CLUSTER_SERVER
#define ZCL_USING_OTA_BOOTLOAD_CLUSTER_SERVER
#define ZCL_USING_GREEN_POWER_CLUSTER_CLIENT
#define ZCL_USING_PRICE_CLUSTER_CLIENT
#define ZCL_USING_SIMPLE_METERING_CLUSTER_CLIENT
#define ZCL_USING_KEY_ESTABLISHMENT_CLUSTER_CLIENT
#define ZCL_USING_KEY_ESTABLISHMENT_CLUSTER_SERVER
#define EMBER_AF_MANUFACTURER_CODE 0x1028
#define EMBER_AF_DEFAULT_RESPONSE_POLICY_CONDITIONAL

/**** Cluster endpoint counts ****/
#define EMBER_AF_BASIC_CLUSTER_SERVER_ENDPOINT_COUNT (1)
#define EMBER_AF_IDENTIFY_CLUSTER_SERVER_ENDPOINT_COUNT (1)
#define EMBER_AF_OTA_BOOTLOAD_CLUSTER_SERVER_ENDPOINT_COUNT (1)
#define EMBER_AF_GREEN_POWER_CLUSTER_CLIENT_ENDPOINT_COUNT (1)
#define EMBER_AF_PRICE_CLUSTER_CLIENT_ENDPOINT_COUNT (1)
#define EMBER_AF_SIMPLE_METERING_CLUSTER_CLIENT_ENDPOINT_COUNT (1)
#define EMBER_AF_KEY_ESTABLISHMENT_CLUSTER_CLIENT_ENDPOINT_COUNT (1)
#define EMBER_AF_KEY_ESTABLISHMENT_CLUSTER_SERVER_ENDPOINT_COUNT (1)

/**** Cluster Endpoint Summaries ****/
#define EMBER_AF_MAX_SERVER_CLUSTER_COUNT (4)
#define EMBER_AF_MAX_CLIENT_CLUSTER_COUNT (3)
#define EMBER_AF_MAX_TOTAL_CLUSTER_COUNT (7)

/**** CLI Section ****/
#define EMBER_AF_GENERATE_CLI
#define EMBER_AF_ENABLE_CUSTOM_COMMANDS
#define EMBER_COMMAND_INTEPRETER_HAS_DESCRIPTION_FIELD

/**** Security Section ****/
#define EMBER_AF_HAS_SECURITY_PROFILE_Z3

/**** Network Section ****/
#define EMBER_SUPPORTED_NETWORKS (1)
#define EMBER_AF_NETWORK_INDEX_PRIMARY (0)
#define EMBER_AF_DEFAULT_NETWORK_INDEX EMBER_AF_NETWORK_INDEX_PRIMARY
#define EMBER_AF_HAS_COORDINATOR_NETWORK
#define EMBER_AF_HAS_ROUTER_NETWORK
#define EMBER_AF_HAS_RX_ON_WHEN_IDLE_NETWORK
#define EMBER_AF_TX_POWER_MODE EMBER_TX_POWER_MODE_USE_TOKEN
#define EMBER_AF_ENABLE_TX_ZDO

/**** Callback Section ****/
#define EMBER_CALLBACK_REGISTRATION_START
#define EMBER_CALLBACK_REGISTRATION_ABORT
#define EMBER_CALLBACK_KEY_ESTABLISHMENT
#define EMBER_CALLBACK_UNUSED_PAN_ID_FOUND
#define EMBER_CALLBACK_SCAN_ERROR
#define EMBER_CALLBACK_FIND_UNUSED_PAN_ID_AND_FORM
#define EMBER_CALLBACK_START_SEARCH_FOR_JOINABLE_NETWORK
#define EMBER_CALLBACK_GET_FORM_AND_JOIN_EXTENDED_PAN_ID
#define EMBER_CALLBACK_SET_FORM_AND_JOIN_EXTENDED_PAN_ID
#define EMBER_CALLBACK_ENERGY_SCAN_RESULT
#define EMBER_CALLBACK_SCAN_COMPLETE
#define EMBER_CALLBACK_NETWORK_FOUND
#define EMBER_CALLBACK_SIMPLE_METERING_CLUSTER_GET_PROFILE_RESPONSE
#define EMBER_CALLBACK_SIMPLE_METERING_CLUSTER_REQUEST_MIRROR
#define EMBER_CALLBACK_SIMPLE_METERING_CLUSTER_REMOVE_MIRROR
#define EMBER_CALLBACK_SIMPLE_METERING_CLUSTER_REQUEST_FAST_POLL_MODE_RESPONSE
#define EMBER_CALLBACK_SIMPLE_METERING_CLUSTER_SIMPLE_METERING_CLUSTER_CLIENT_DEFAULT_RESPONSE
#define EMBER_CALLBACK_SIMPLE_METERING_CLUSTER_SUPPLY_STATUS_RESPONSE
#define EMBER_CALLBACK_PRICE_CLUSTER_PRICE_CLUSTER_CLIENT_INIT
#define EMBER_CALLBACK_PRICE_CLUSTER_PRICE_CLUSTER_CLIENT_TICK
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_PRICE
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_TARIFF_INFORMATION
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_BILLING_PERIOD
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_CONSOLIDATED_BILL
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_CPP_EVENT
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_CREDIT_PAYMENT
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_CURRENCY_CONVERSION
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_C_O2_VALUE
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_CONVERSION_FACTOR
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_CALORIFIC_VALUE
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_TIER_LABELS
#define EMBER_CALLBACK_PRICE_CLUSTER_CANCEL_TARIFF
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_BLOCK_PERIOD
#define EMBER_CALLBACK_PRICE_CLUSTER_PUBLISH_BLOCK_THRESHOLDS
#define EMBER_CALLBACK_CONFIGURE_REPORTING_COMMAND
#define EMBER_CALLBACK_READ_REPORTING_CONFIGURATION_COMMAND
#define EMBER_CALLBACK_CLEAR_REPORT_TABLE
#define EMBER_CALLBACK_REPORTING_ATTRIBUTE_CHANGE
#define EMBER_CALLBACK_IDENTIFY_CLUSTER_IDENTIFY_CLUSTER_SERVER_INIT
#define EMBER_CALLBACK_IDENTIFY_CLUSTER_IDENTIFY_CLUSTER_SERVER_TICK
#define EMBER_CALLBACK_IDENTIFY_CLUSTER_IDENTIFY_CLUSTER_SERVER_ATTRIBUTE_CHANGED
#define EMBER_CALLBACK_IDENTIFY_CLUSTER_IDENTIFY
#define EMBER_CALLBACK_IDENTIFY_CLUSTER_IDENTIFY_QUERY
#define EMBER_CALLBACK_COUNTER_HANDLER
#define EMBER_APPLICATION_HAS_COUNTER_HANDLER
#define EMBER_CALLBACK_EZSP_COUNTER_ROLLOVER_HANDLER
#define EZSP_APPLICATION_HAS_COUNTER_ROLLOVER_HANDLER
#define EMBER_CALLBACK_INITIATE_PARTNER_LINK_KEY_EXCHANGE
#define EMBER_CALLBACK_PARTNER_LINK_KEY_EXCHANGE_REQUEST
#define EMBER_CALLBACK_PARTNER_LINK_KEY_EXCHANGE_RESPONSE
#define EMBER_CALLBACK_IDENTIFY_CLUSTER_IDENTIFY_QUERY_RESPONSE
#define EMBER_CALLBACK_MAIN_START
#define EMBER_CALLBACK_INCOMING_ROUTE_ERROR_HANDLER
#define EMBER_APPLICATION_HAS_INCOMING_ROUTE_ERROR_HANDLER
#define EMBER_CALLBACK_EZSP_INCOMING_ROUTE_ERROR_HANDLER
#define EZSP_APPLICATION_HAS_INCOMING_ROUTE_ERROR_HANDLER
#define EMBER_CALLBACK_GET_SOURCE_ROUTE_OVERHEAD
#define EMBER_CALLBACK_SET_SOURCE_ROUTE_OVERHEAD
/**** Debug printing section ****/

// Global switch
#define EMBER_AF_PRINT_ENABLE
// Individual areas
#define EMBER_AF_PRINT_CORE 0x0001
#define EMBER_AF_PRINT_APP 0x0002
#define EMBER_AF_PRINT_SECURITY 0x0004
#define EMBER_AF_PRINT_ATTRIBUTES 0x0008
#define EMBER_AF_PRINT_OTA_BOOTLOAD_CLUSTER 0x0010
#define EMBER_AF_PRINT_BITS { 0x1F }
#define EMBER_AF_PRINT_NAMES { \
  "Core",\
  "Application",\
  "Security",\
  "Attributes",\
  "Over the Air Bootloading",\
  NULL\
}
#define EMBER_AF_PRINT_NAME_NUMBER 5


#define EMBER_AF_SUPPORT_COMMAND_DISCOVERY


// Generated plugin macros

// Use this macro to check if Address Table plugin is included
#define EMBER_AF_PLUGIN_ADDRESS_TABLE
// User options for plugin Address Table
#define EMBER_AF_PLUGIN_ADDRESS_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_ADDRESS_TABLE_TRUST_CENTER_CACHE_SIZE 2

// Use this macro to check if AES (Software) plugin is included
#define EMBER_AF_PLUGIN_AES_SOFTWARE
// User options for plugin AES (Software)

// Use this macro to check if CCM* Encryption plugin is included
#define EMBER_AF_PLUGIN_CCM_ENCRYPTION
// User options for plugin CCM* Encryption
#define EMBER_AF_PLUGIN_CCM_ENCRYPTION_SOFTWARE_CCM
#define USE_SOFTWARE_CCM

// Use this macro to check if Concentrator Support plugin is included
#define EMBER_AF_PLUGIN_CONCENTRATOR
#define EMBER_APPLICATION_HAS_SOURCE_ROUTING
#define EZSP_APPLICATION_HAS_ROUTE_RECORD_HANDLER
// User options for plugin Concentrator Support
#define EMBER_AF_PLUGIN_CONCENTRATOR_CONCENTRATOR_TYPE HIGH_RAM_CONCENTRATOR
#define EMBER_SOURCE_ROUTE_TABLE_SIZE 100
#define EZSP_HOST_SOURCE_ROUTE_TABLE_SIZE 100
#define EMBER_AF_PLUGIN_CONCENTRATOR_MIN_TIME_BETWEEN_BROADCASTS_SECONDS 5
#define EMBER_AF_PLUGIN_CONCENTRATOR_MAX_TIME_BETWEEN_BROADCASTS_SECONDS 60
#define EMBER_AF_PLUGIN_CONCENTRATOR_ROUTE_ERROR_THRESHOLD 3
#define EMBER_AF_PLUGIN_CONCENTRATOR_DELIVERY_FAILURE_THRESHOLD 3
#define EMBER_AF_PLUGIN_CONCENTRATOR_MAX_HOPS 0
#define EMBER_AF_PLUGIN_CONCENTRATOR_NCP_SUPPORT
#define EMBER_AF_PLUGIN_CONCENTRATOR_DEFAULT_ROUTER_BEHAVIOR FULL

// Use this macro to check if Counters plugin is included
#define EMBER_AF_PLUGIN_COUNTERS
// User options for plugin Counters

// Use this macro to check if Device Database plugin is included
#define EMBER_AF_PLUGIN_DEVICE_DATABASE
// User options for plugin Device Database
#define EMBER_AF_PLUGIN_DEVICE_DATABASE_MAX_DEVICES 20
#define EMBER_AF_MAX_ENDPOINTS_PER_DEVICE 5
#define EMBER_AF_MAX_CLUSTERS_PER_ENDPOINT 10

// Use this macro to check if ESI Management plugin is included
#define EMBER_AF_PLUGIN_ESI_MANAGEMENT
// User options for plugin ESI Management
#define EMBER_AF_PLUGIN_ESI_MANAGEMENT_ESI_TABLE_SIZE 3

// Use this macro to check if EZ-Mode Commissioning plugin is included
#define EMBER_AF_PLUGIN_EZMODE_COMMISSIONING
// User options for plugin EZ-Mode Commissioning
#define EMBER_AF_PLUGIN_EZMODE_COMMISSIONING_IDENTIFY_TIMEOUT 180

// Use this macro to check if EZSP Common plugin is included
#define EMBER_AF_PLUGIN_EZSP

// Use this macro to check if EZSP UART plugin is included
#define EMBER_AF_PLUGIN_EZSP_UART

// Use this macro to check if File Descriptor Dispatch plugin is included
#define EMBER_AF_PLUGIN_FILE_DESCRIPTOR_DISPATCH

// Use this macro to check if Form and Join Library plugin is included
#define EMBER_AF_PLUGIN_FORM_AND_JOIN

// Use this macro to check if Fragmentation plugin is included
#define EMBER_AF_PLUGIN_FRAGMENTATION
// User options for plugin Fragmentation
#define EMBER_AF_PLUGIN_FRAGMENTATION_MAX_INCOMING_PACKETS 1
#define EMBER_AF_PLUGIN_FRAGMENTATION_MAX_OUTGOING_PACKETS 1
#define EMBER_AF_PLUGIN_FRAGMENTATION_BUFFER_SIZE 255

// Use this macro to check if Gateway Support plugin is included
#define EMBER_AF_PLUGIN_GATEWAY
// User options for plugin Gateway Support
#define EMBER_AF_PLUGIN_GATEWAY_MAX_FDS 10
#define EMBER_AF_PLUGIN_GATEWAY_TCP_PORT_OFFSET 4900
#define EMBER_AF_PLUGIN_GATEWAY_MAX_WAIT_FOR_EVENT_TIMEOUT_MS 0xFFFFFFFF

// Use this macro to check if Identify Cluster plugin is included
#define EMBER_AF_PLUGIN_IDENTIFY

// Use this macro to check if Identify Feedback plugin is included
#define EMBER_AF_PLUGIN_IDENTIFY_FEEDBACK
// User options for plugin Identify Feedback
#define EMBER_AF_PLUGIN_IDENTIFY_FEEDBACK_LED_FEEDBACK

// Use this macro to check if Linked List plugin is included
#define EMBER_AF_PLUGIN_LINKED_LIST

// Use this macro to check if NCP Configuration plugin is included
#define EMBER_AF_PLUGIN_NCP_CONFIGURATION
// User options for plugin NCP Configuration
#define EMBER_BINDING_TABLE_SIZE 16
#define EMBER_MAX_END_DEVICE_CHILDREN 32
#define EMBER_END_DEVICE_KEEP_ALIVE_SUPPORT_MODE EMBER_KEEP_ALIVE_SUPPORT_ALL
#define EMBER_END_DEVICE_POLL_TIMEOUT MINUTES_256
#define EMBER_END_DEVICE_POLL_TIMEOUT_SHIFT 6
#define EMBER_KEY_TABLE_SIZE 4
#define EMBER_ZLL_GROUP_ADDRESSES 0
#define EMBER_ZLL_RSSI_THRESHOLD -40
#define EMBER_TRANSIENT_KEY_TIMEOUT_S 180
#define EMBER_APS_UNICAST_MESSAGE_COUNT 10
#define EMBER_BROADCAST_TABLE_SIZE 15
#define EMBER_NEIGHBOR_TABLE_SIZE 16
#define EMBER_GP_PROXY_TABLE_SIZE 5
#define EMBER_GP_SINK_TABLE_SIZE 0

// Use this macro to check if Network Creator plugin is included
#define EMBER_AF_PLUGIN_NETWORK_CREATOR
// User options for plugin Network Creator
#define EMBER_AF_PLUGIN_NETWORK_CREATOR_SCAN_DURATION 4
#define EMBER_AF_PLUGIN_NETWORK_CREATOR_CHANNEL_MASK 0x02108800
#define EMBER_AF_PLUGIN_NETWORK_CREATOR_CHANNEL_BEACONS_THRESHOLD 20
#define EMBER_AF_PLUGIN_NETWORK_CREATOR_RADIO_POWER -2

// Use this macro to check if Network Creator Security plugin is included
#define EMBER_AF_PLUGIN_NETWORK_CREATOR_SECURITY
// User options for plugin Network Creator Security
#define EMBER_AF_PLUGIN_NETWORK_CREATOR_SECURITY_NETWORK_OPEN_TIME_S 180
#define EMBER_AF_PLUGIN_NETWORK_CREATOR_SECURITY_TRUST_CENTER_SUPPORT
#define EMBER_AF_PLUGIN_NETWORK_CREATOR_SECURITY_ALLOW_HA_DEVICES_TO_STAY

// Use this macro to check if Network Find plugin is included
#define EMBER_AF_PLUGIN_NETWORK_FIND
#define EMBER_AF_DISABLE_FORM_AND_JOIN_TICK
// User options for plugin Network Find
#define EMBER_AF_PLUGIN_NETWORK_FIND_CHANNEL_MASK 0x0318C800
#define EMBER_AF_PLUGIN_NETWORK_FIND_CUT_OFF_VALUE -48
#define EMBER_AF_PLUGIN_NETWORK_FIND_RADIO_TX_POWER 3
#define EMBER_AF_PLUGIN_NETWORK_FIND_EXTENDED_PAN_ID { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
#define EMBER_AF_PLUGIN_NETWORK_FIND_DURATION 5
#define EMBER_AF_PLUGIN_NETWORK_FIND_JOINABLE_SCAN_TIMEOUT_MINUTES 1

// Use this macro to check if Network Find (Sub-GHz) plugin is included
#define EMBER_AF_PLUGIN_NETWORK_FIND_SUB_GHZ
// User options for plugin Network Find (Sub-GHz)
#define EMBER_AF_PLUGIN_NETWORK_FIND_SUB_GHZ_CHANNEL_MASK { 0x07FFFFFF, 0x000000FF, 0x00003FFF, 0x00001FFF}
#define EMBER_AF_PLUGIN_NETWORK_FIND_SUB_GHZ_CUT_OFF_VALUE -48
#define EMBER_AF_PLUGIN_NETWORK_FIND_SUB_GHZ_ALL_CHANNELS_MASK { 0x07FFFFFF, 0x000000FF, 0x00003FFF, 0x00001FFF}
#define EMBER_AF_PLUGIN_NETWORK_FIND_SUB_GHZ_RADIO_TX_POWER 3

// Use this macro to check if Network Steering plugin is included
#define EMBER_AF_PLUGIN_NETWORK_STEERING
// User options for plugin Network Steering
#define EMBER_AF_PLUGIN_NETWORK_STEERING_CHANNEL_MASK 0x0318C800
#define EMBER_AF_PLUGIN_NETWORK_STEERING_RADIO_TX_POWER 3
#define EMBER_AF_PLUGIN_NETWORK_STEERING_SCAN_DURATION 5
#define EMBER_AF_PLUGIN_NETWORK_STEERING_COMMISSIONING_TIME_S 180

// Use this macro to check if Partner Link Key Exchange plugin is included
#define EMBER_AF_PLUGIN_PARTNER_LINK_KEY_EXCHANGE
// User options for plugin Partner Link Key Exchange
#define EMBER_AF_PLUGIN_PARTNER_LINK_KEY_EXCHANGE_TIMEOUT_SECONDS 5

// Use this macro to check if Permit Join Manager plugin is included
#define EMBER_AF_PLUGIN_PERMIT_JOIN_MANAGER
// User options for plugin Permit Join Manager
#define EMBER_AF_PLUGIN_PERMIT_JOIN_MANAGER_PERMIT_JOINS_DURATION 40
#define EMBER_AF_PLUGIN_PERMIT_JOIN_MANAGER_JOINING_DEVICES_QUEUE_LENGTH 4
#define EMBER_AF_PLUGIN_PERMIT_JOIN_MANAGER_DEVICE_ANNOUNCE_TIMEOUT 1000

// Use this macro to check if Price Client plugin is included
#define EMBER_AF_PLUGIN_PRICE_CLIENT
// User options for plugin Price Client
#define EMBER_AF_PLUGIN_PRICE_CLIENT_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_CONSOLIDATED_BILL_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_TIER_LABELS_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_MAX_TIERS_PER_TARIFF 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_CREDIT_PAYMENT_TABLE_SIZE 5
#define EMBER_AF_PLUGIN_PRICE_CLIENT_CURRENCY_CONVERSION_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_CO2_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_CONVERSION_FACTOR_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_CALORIFIC_VALUE_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_BILLING_PERIOD_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_BLOCK_PERIOD_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_BLOCK_THRESHOLD_TABLE_SIZE 2
#define EMBER_AF_PLUGIN_PRICE_CLIENT_MAX_NUMBER_BLOCK_THRESHOLDS 4
#define EMBER_AF_PLUGIN_PRICE_CLIENT_MAX_NUMBER_TIERS 5

// Use this macro to check if Price Common plugin is included
#define EMBER_AF_PLUGIN_PRICE_COMMON

// Use this macro to check if Reporting plugin is included
#define EMBER_AF_PLUGIN_REPORTING
// User options for plugin Reporting
#define EMBER_AF_PLUGIN_REPORTING_TABLE_SIZE 10
#define EMBER_AF_PLUGIN_REPORTING_ENABLE_GROUP_BOUND_REPORTS

// Use this macro to check if Scan Dispatch plugin is included
#define EMBER_AF_PLUGIN_SCAN_DISPATCH
// User options for plugin Scan Dispatch
#define EMBER_AF_PLUGIN_SCAN_DISPATCH_SCAN_QUEUE_SIZE 10

// Use this macro to check if EZSP Secure Protocol Stub plugin is included
#define EMBER_AF_PLUGIN_SECURE_EZSP_STUB

// Use this macro to check if Simple Main plugin is included
#define EMBER_AF_PLUGIN_SIMPLE_MAIN

// Use this macro to check if Simple Metering Client plugin is included
#define EMBER_AF_PLUGIN_SIMPLE_METERING_CLIENT
// User options for plugin Simple Metering Client
#define EMBER_AF_PLUGIN_SIMPLE_METERING_CLIENT_NUMBER_OF_INTERVALS_SUPPORTED 4

// Use this macro to check if Smart Energy Registration plugin is included
#define EMBER_AF_PLUGIN_SMART_ENERGY_REGISTRATION
// User options for plugin Smart Energy Registration
#define EMBER_AF_PLUGIN_SMART_ENERGY_REGISTRATION_ESI_REDISCOVERY
#define EMBER_AF_PLUGIN_SMART_ENERGY_REGISTRATION_ESI_DISCOVERY_PERIOD 3
#define EMBER_AF_PLUGIN_SMART_ENERGY_REGISTRATION_ALLOW_NON_ESI_TIME_SERVERS

// Use this macro to check if Trust Center Network Key Update Broadcast plugin is included
#define EMBER_AF_PLUGIN_TRUST_CENTER_NWK_KEY_UPDATE_BROADCAST

// Use this macro to check if Trust Center Network Key Update Periodic plugin is included
#define EMBER_AF_PLUGIN_TRUST_CENTER_NWK_KEY_UPDATE_PERIODIC
// User options for plugin Trust Center Network Key Update Periodic
#define EMBER_AF_PLUGIN_TRUST_CENTER_NWK_KEY_UPDATE_PERIODIC_KEY_UPDATE_PERIOD 30
#define EMBER_AF_PLUGIN_TRUST_CENTER_NWK_KEY_UPDATE_PERIODIC_KEY_UPDATE_UNITS MINUTES

// Use this macro to check if Trust Center Network Key Update Unicast plugin is included
#define EMBER_AF_PLUGIN_TRUST_CENTER_NWK_KEY_UPDATE_UNICAST

// Use this macro to check if Unix Library plugin is included
#define EMBER_AF_PLUGIN_UNIX_LIBRARY
// User options for plugin Unix Library

// Use this macro to check if Unix Printf plugin is included
#define EMBER_AF_PLUGIN_UNIX_PRINTF

// Use this macro to check if Update TC Link Key plugin is included
#define EMBER_AF_PLUGIN_UPDATE_TC_LINK_KEY
// User options for plugin Update TC Link Key
#define EMBER_AF_PLUGIN_UPDATE_TC_LINK_KEY_MAX_ATTEMPTS 3

// Use this macro to check if ZCL Framework Core plugin is included
#define EMBER_AF_PLUGIN_ZCL_FRAMEWORK_CORE
// User options for plugin ZCL Framework Core
#define EMBER_AF_PLUGIN_ZCL_FRAMEWORK_CORE_CLI_ENABLED
#define ZA_CLI_FULL


// Generated API headers

// API ezsp-protocol from EZSP Common plugin
#define EMBER_AF_API_EZSP_PROTOCOL "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp-protocol.h"

// API ezsp from EZSP Common plugin
#define EMBER_AF_API_EZSP "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/ezsp.h"

// API linked-list from Linked List plugin
#define EMBER_AF_API_LINKED_LIST "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/util/plugin/plugin-common/linked-list/linked-list.h"

// API network-creator from Network Creator plugin
#define EMBER_AF_API_NETWORK_CREATOR "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator/network-creator.h"

// API network-creator-security from Network Creator Security plugin
#define EMBER_AF_API_NETWORK_CREATOR_SECURITY "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.h"

// API network-steering from Network Steering plugin
#define EMBER_AF_API_NETWORK_STEERING "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/network-steering/network-steering.h"

// API scan-dispatch from Scan Dispatch plugin
#define EMBER_AF_API_SCAN_DISPATCH "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.h"

// API ezsp-secure from EZSP Secure Protocol Stub plugin
#define EMBER_AF_API_EZSP_SECURE "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/ezsp/secure-ezsp-protocol.h"

// API crc from Unix Library plugin
#define EMBER_AF_API_CRC "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/crc.h"

// API endian from Unix Library plugin
#define EMBER_AF_API_ENDIAN "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/endian.h"

// API hal from Unix Library plugin
#define EMBER_AF_API_HAL "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/hal.h"

// API random from Unix Library plugin
#define EMBER_AF_API_RANDOM "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/random.h"

// API system-timer from Unix Library plugin
#define EMBER_AF_API_SYSTEM_TIMER "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/platform/base/hal/micro/system-timer.h"

// API update-tc-link-key from Update TC Link Key plugin
#define EMBER_AF_API_UPDATE_TC_LINK_KEY "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.h"

// API command-interpreter2 from ZCL Framework Core plugin
#define EMBER_AF_API_COMMAND_INTERPRETER2 "../../../../../SiliconLabs/SimplicityStudio/v4_3/developer/sdks/gecko_sdk_suite/v2.6/protocol/zigbee/app/util/serial/command-interpreter2.h"


// Custom macros
#ifdef APP_SERIAL
#undef APP_SERIAL
#endif
#define APP_SERIAL 1

#ifdef EMBER_ASSERT_SERIAL_PORT
#undef EMBER_ASSERT_SERIAL_PORT
#endif
#define EMBER_ASSERT_SERIAL_PORT 1

#ifdef EMBER_AF_BAUD_RATE
#undef EMBER_AF_BAUD_RATE
#endif
#define EMBER_AF_BAUD_RATE 19200

#ifdef EMBER_AF_SERIAL_PORT_INIT
#undef EMBER_AF_SERIAL_PORT_INIT
#endif
#define EMBER_AF_SERIAL_PORT_INIT() \
  do { \
    emberSerialInit(1, BAUD_19200, PARITY_NONE, 1); \
  } while (0)



#endif // SILABS_ZNET_CONFIG
