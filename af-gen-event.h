// This file is generated by Simplicity Studio.  Please do not edit manually.
//
//

// Enclosing macro to prevent multiple inclusion
#ifndef __AF_GEN_EVENT__
#define __AF_GEN_EVENT__


// Code used to configure the cluster event mechanism
#define EMBER_AF_GENERATED_EVENT_CODE \
  EmberEventControl emberAfIdentifyClusterServerTickCallbackControl1; \
  EmberEventControl emberAfPriceClusterClientTickCallbackControl1; \
  EmberEventControl emberAfKeyEstablishmentClusterServerTickCallbackControl1; \
  extern EmberEventControl emberAfPluginConcentratorUpdateEventControl; \
  extern EmberEventControl emberAfPluginEzmodeCommissioningStateEventControl; \
  extern EmberEventControl emberAfPluginFormAndJoinCleanupEventControl; \
  extern EmberEventControl emberAfPluginIdentifyFeedbackProvideFeedbackEventControl; \
  extern EmberEventControl emberAfPluginKeyEstablishmentApsDuplicateDetectionEventControl; \
  extern EmberEventControl emberAfPluginNetworkCreatorSecurityOpenNetworkEventControl; \
  extern EmberEventControl emberAfPluginNetworkFindTickEventControl; \
  extern EmberEventControl emberAfPluginNetworkSteeringFinishSteeringEventControl; \
  extern EmberEventControl emberAfPluginReportingTickEventControl; \
  extern EmberEventControl emberAfPluginScanDispatchScanEventControl; \
  extern EmberEventControl emberAfPluginTrustCenterNwkKeyUpdateBroadcastMyEventControl; \
  extern EmberEventControl emberAfPluginTrustCenterNwkKeyUpdatePeriodicMyEventControl; \
  extern EmberEventControl emberAfPluginTrustCenterNwkKeyUpdateUnicastMyEventControl; \
  extern EmberEventControl emberAfPluginUpdateTcLinkKeyBeginTcLinkKeyUpdateEventControl; \
  extern void emberAfPluginConcentratorUpdateEventHandler(void); \
  extern void emberAfPluginEzmodeCommissioningStateEventHandler(void); \
  extern void emberAfPluginFormAndJoinCleanupEventHandler(void); \
  extern void emberAfPluginIdentifyFeedbackProvideFeedbackEventHandler(void); \
  extern void emberAfPluginKeyEstablishmentApsDuplicateDetectionEventHandler(void); \
  extern void emberAfPluginNetworkCreatorSecurityOpenNetworkEventHandler(void); \
  extern void emberAfPluginNetworkFindTickEventHandler(void); \
  extern void emberAfPluginNetworkSteeringFinishSteeringEventHandler(void); \
  extern void emberAfPluginReportingTickEventHandler(void); \
  extern void emberAfPluginScanDispatchScanEventHandler(void); \
  extern void emberAfPluginTrustCenterNwkKeyUpdateBroadcastMyEventHandler(void); \
  extern void emberAfPluginTrustCenterNwkKeyUpdatePeriodicMyEventHandler(void); \
  extern void emberAfPluginTrustCenterNwkKeyUpdateUnicastMyEventHandler(void); \
  extern void emberAfPluginUpdateTcLinkKeyBeginTcLinkKeyUpdateEventHandler(void); \
  static void networkEventWrapper(EmberEventControl *control, EmberAfNetworkEventHandler handler, uint8_t networkIndex) \
  { \
    emberAfPushNetworkIndex(networkIndex); \
    emberEventControlSetInactive(*control); \
    (*handler)(); \
    emberAfPopNetworkIndex(); \
  } \
  EmberEventControl emberAfPluginPartnerLinkKeyExchangeTimeoutNetworkEventControls[1]; \
  extern void emberAfPluginPartnerLinkKeyExchangeTimeoutNetworkEventHandler(void); \
  void emberAfPluginPartnerLinkKeyExchangeTimeoutNetworkEventWrapper0(void) { networkEventWrapper(&emberAfPluginPartnerLinkKeyExchangeTimeoutNetworkEventControls[0], emberAfPluginPartnerLinkKeyExchangeTimeoutNetworkEventHandler, 0); } \
  EmberEventControl emberAfPluginPermitJoinManagerTimeoutNetworkEventControls[1]; \
  extern void emberAfPluginPermitJoinManagerTimeoutNetworkEventHandler(void); \
  void emberAfPluginPermitJoinManagerTimeoutNetworkEventWrapper0(void) { networkEventWrapper(&emberAfPluginPermitJoinManagerTimeoutNetworkEventControls[0], emberAfPluginPermitJoinManagerTimeoutNetworkEventHandler, 0); } \
  static void clusterTickWrapper(EmberEventControl *control, EmberAfTickFunction callback, uint8_t endpoint) \
  { \
    emberAfPushEndpointNetworkIndex(endpoint); \
    emberEventControlSetInactive(*control); \
    (*callback)(endpoint); \
    emberAfPopNetworkIndex(); \
  } \
  void emberAfIdentifyClusterServerTickCallbackWrapperFunction1(void) { clusterTickWrapper(&emberAfIdentifyClusterServerTickCallbackControl1, emberAfIdentifyClusterServerTickCallback, 1); } \
  void emberAfPriceClusterClientTickCallbackWrapperFunction1(void) { clusterTickWrapper(&emberAfPriceClusterClientTickCallbackControl1, emberAfPriceClusterClientTickCallback, 1); } \
  void emberAfKeyEstablishmentClusterServerTickCallbackWrapperFunction1(void) { clusterTickWrapper(&emberAfKeyEstablishmentClusterServerTickCallbackControl1, emberAfKeyEstablishmentClusterServerTickCallback, 1); } \


// EmberEventData structs used to populate the EmberEventData table
#define EMBER_AF_GENERATED_EVENTS   \
  { &emberAfIdentifyClusterServerTickCallbackControl1, emberAfIdentifyClusterServerTickCallbackWrapperFunction1 }, \
  { &emberAfPriceClusterClientTickCallbackControl1, emberAfPriceClusterClientTickCallbackWrapperFunction1 }, \
  { &emberAfKeyEstablishmentClusterServerTickCallbackControl1, emberAfKeyEstablishmentClusterServerTickCallbackWrapperFunction1 }, \
  { &emberAfPluginConcentratorUpdateEventControl, emberAfPluginConcentratorUpdateEventHandler }, \
  { &emberAfPluginEzmodeCommissioningStateEventControl, emberAfPluginEzmodeCommissioningStateEventHandler }, \
  { &emberAfPluginFormAndJoinCleanupEventControl, emberAfPluginFormAndJoinCleanupEventHandler }, \
  { &emberAfPluginIdentifyFeedbackProvideFeedbackEventControl, emberAfPluginIdentifyFeedbackProvideFeedbackEventHandler }, \
  { &emberAfPluginKeyEstablishmentApsDuplicateDetectionEventControl, emberAfPluginKeyEstablishmentApsDuplicateDetectionEventHandler }, \
  { &emberAfPluginNetworkCreatorSecurityOpenNetworkEventControl, emberAfPluginNetworkCreatorSecurityOpenNetworkEventHandler }, \
  { &emberAfPluginNetworkFindTickEventControl, emberAfPluginNetworkFindTickEventHandler }, \
  { &emberAfPluginNetworkSteeringFinishSteeringEventControl, emberAfPluginNetworkSteeringFinishSteeringEventHandler }, \
  { &emberAfPluginReportingTickEventControl, emberAfPluginReportingTickEventHandler }, \
  { &emberAfPluginScanDispatchScanEventControl, emberAfPluginScanDispatchScanEventHandler }, \
  { &emberAfPluginTrustCenterNwkKeyUpdateBroadcastMyEventControl, emberAfPluginTrustCenterNwkKeyUpdateBroadcastMyEventHandler }, \
  { &emberAfPluginTrustCenterNwkKeyUpdatePeriodicMyEventControl, emberAfPluginTrustCenterNwkKeyUpdatePeriodicMyEventHandler }, \
  { &emberAfPluginTrustCenterNwkKeyUpdateUnicastMyEventControl, emberAfPluginTrustCenterNwkKeyUpdateUnicastMyEventHandler }, \
  { &emberAfPluginUpdateTcLinkKeyBeginTcLinkKeyUpdateEventControl, emberAfPluginUpdateTcLinkKeyBeginTcLinkKeyUpdateEventHandler }, \
  { &emberAfPluginPartnerLinkKeyExchangeTimeoutNetworkEventControls[0], emberAfPluginPartnerLinkKeyExchangeTimeoutNetworkEventWrapper0 }, \
  { &emberAfPluginPermitJoinManagerTimeoutNetworkEventControls[0], emberAfPluginPermitJoinManagerTimeoutNetworkEventWrapper0 }, \


#define EMBER_AF_GENERATED_EVENT_STRINGS   \
  "Identify Cluster Server EP 1",  \
  "Price Cluster Client EP 1",  \
  "Key Establishment Cluster Server EP 1",  \
  "Concentrator Support Plugin Update",  \
  "EZ-Mode Commissioning Plugin State",  \
  "Form and Join Library Plugin Cleanup",  \
  "Identify Feedback Plugin ProvideFeedback",  \
  "Key Establishment Plugin ApsDuplicateDetection",  \
  "Network Creator Security Plugin OpenNetwork",  \
  "Network Find Plugin Tick",  \
  "Network Steering Plugin FinishSteering",  \
  "Reporting Plugin Tick",  \
  "Scan Dispatch Plugin Scan",  \
  "Trust Center Network Key Update Broadcast Plugin My",  \
  "Trust Center Network Key Update Periodic Plugin My",  \
  "Trust Center Network Key Update Unicast Plugin My",  \
  "Update TC Link Key Plugin BeginTcLinkKeyUpdate",  \
  "Partner Link Key Exchange Plugin Timeout NWK 0", \
  "Permit Join Manager Plugin Timeout NWK 0", \


// The length of the event context table used to track and retrieve cluster events
#define EMBER_AF_EVENT_CONTEXT_LENGTH 3

// EmberAfEventContext structs used to populate the EmberAfEventContext table
#define EMBER_AF_GENERATED_EVENT_CONTEXT { 0x1, 0x3, false, EMBER_AF_LONG_POLL, EMBER_AF_OK_TO_SLEEP, &emberAfIdentifyClusterServerTickCallbackControl1}, \
{ 0x1, 0x700, true, EMBER_AF_LONG_POLL, EMBER_AF_OK_TO_SLEEP, &emberAfPriceClusterClientTickCallbackControl1}, \
{ 0x1, 0x800, false, EMBER_AF_LONG_POLL, EMBER_AF_OK_TO_SLEEP, &emberAfKeyEstablishmentClusterServerTickCallbackControl1}


#endif // __AF_GEN_EVENT__
