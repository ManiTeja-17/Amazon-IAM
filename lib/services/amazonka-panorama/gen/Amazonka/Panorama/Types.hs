{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Panorama.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Panorama.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ValidationException,
    _AccessDeniedException,
    _ConflictException,
    _ServiceQuotaExceededException,
    _InternalServerException,
    _ResourceNotFoundException,

    -- * ApplicationInstanceHealthStatus
    ApplicationInstanceHealthStatus (..),

    -- * ApplicationInstanceStatus
    ApplicationInstanceStatus (..),

    -- * ConnectionType
    ConnectionType (..),

    -- * DeviceConnectionStatus
    DeviceConnectionStatus (..),

    -- * DeviceStatus
    DeviceStatus (..),

    -- * DeviceType
    DeviceType (..),

    -- * JobResourceType
    JobResourceType (..),

    -- * JobType
    JobType (..),

    -- * NetworkConnectionStatus
    NetworkConnectionStatus (..),

    -- * NodeCategory
    NodeCategory (..),

    -- * NodeFromTemplateJobStatus
    NodeFromTemplateJobStatus (..),

    -- * NodeInstanceStatus
    NodeInstanceStatus (..),

    -- * PackageImportJobStatus
    PackageImportJobStatus (..),

    -- * PackageImportJobType
    PackageImportJobType (..),

    -- * PackageVersionStatus
    PackageVersionStatus (..),

    -- * PortType
    PortType (..),

    -- * StatusFilter
    StatusFilter (..),

    -- * TemplateType
    TemplateType (..),

    -- * UpdateProgress
    UpdateProgress (..),

    -- * ApplicationInstance
    ApplicationInstance (..),
    newApplicationInstance,
    applicationInstance_status,
    applicationInstance_statusDescription,
    applicationInstance_arn,
    applicationInstance_createdTime,
    applicationInstance_defaultRuntimeContextDevice,
    applicationInstance_defaultRuntimeContextDeviceName,
    applicationInstance_name,
    applicationInstance_healthStatus,
    applicationInstance_applicationInstanceId,
    applicationInstance_description,
    applicationInstance_tags,

    -- * Device
    Device (..),
    newDevice,
    device_lastUpdatedTime,
    device_provisioningStatus,
    device_createdTime,
    device_name,
    device_deviceId,
    device_leaseExpirationTime,

    -- * DeviceJob
    DeviceJob (..),
    newDeviceJob,
    deviceJob_jobId,
    deviceJob_createdTime,
    deviceJob_deviceName,
    deviceJob_deviceId,

    -- * DeviceJobConfig
    DeviceJobConfig (..),
    newDeviceJobConfig,
    deviceJobConfig_oTAJobConfig,

    -- * EthernetPayload
    EthernetPayload (..),
    newEthernetPayload,
    ethernetPayload_staticIpConnectionInfo,
    ethernetPayload_connectionType,

    -- * EthernetStatus
    EthernetStatus (..),
    newEthernetStatus,
    ethernetStatus_ipAddress,
    ethernetStatus_connectionStatus,
    ethernetStatus_hwAddress,

    -- * Job
    Job (..),
    newJob,
    job_jobId,
    job_deviceId,

    -- * JobResourceTags
    JobResourceTags (..),
    newJobResourceTags,
    jobResourceTags_resourceType,
    jobResourceTags_tags,

    -- * ManifestOverridesPayload
    ManifestOverridesPayload (..),
    newManifestOverridesPayload,
    manifestOverridesPayload_payloadData,

    -- * ManifestPayload
    ManifestPayload (..),
    newManifestPayload,
    manifestPayload_payloadData,

    -- * NetworkPayload
    NetworkPayload (..),
    newNetworkPayload,
    networkPayload_ethernet1,
    networkPayload_ethernet0,

    -- * NetworkStatus
    NetworkStatus (..),
    newNetworkStatus,
    networkStatus_ethernet1Status,
    networkStatus_ethernet0Status,

    -- * Node
    Node (..),
    newNode,
    node_packageArn,
    node_ownerAccount,
    node_description,
    node_nodeId,
    node_name,
    node_category,
    node_packageName,
    node_packageId,
    node_packageVersion,
    node_patchVersion,
    node_createdTime,

    -- * NodeFromTemplateJob
    NodeFromTemplateJob (..),
    newNodeFromTemplateJob,
    nodeFromTemplateJob_status,
    nodeFromTemplateJob_jobId,
    nodeFromTemplateJob_createdTime,
    nodeFromTemplateJob_templateType,
    nodeFromTemplateJob_nodeName,
    nodeFromTemplateJob_statusMessage,

    -- * NodeInputPort
    NodeInputPort (..),
    newNodeInputPort,
    nodeInputPort_maxConnections,
    nodeInputPort_name,
    nodeInputPort_defaultValue,
    nodeInputPort_type,
    nodeInputPort_description,

    -- * NodeInstance
    NodeInstance (..),
    newNodeInstance,
    nodeInstance_packageName,
    nodeInstance_packageVersion,
    nodeInstance_packagePatchVersion,
    nodeInstance_nodeName,
    nodeInstance_nodeId,
    nodeInstance_nodeInstanceId,
    nodeInstance_currentStatus,

    -- * NodeInterface
    NodeInterface (..),
    newNodeInterface,
    nodeInterface_inputs,
    nodeInterface_outputs,

    -- * NodeOutputPort
    NodeOutputPort (..),
    newNodeOutputPort,
    nodeOutputPort_name,
    nodeOutputPort_type,
    nodeOutputPort_description,

    -- * OTAJobConfig
    OTAJobConfig (..),
    newOTAJobConfig,
    oTAJobConfig_imageVersion,

    -- * OutPutS3Location
    OutPutS3Location (..),
    newOutPutS3Location,
    outPutS3Location_bucketName,
    outPutS3Location_objectKey,

    -- * PackageImportJob
    PackageImportJob (..),
    newPackageImportJob,
    packageImportJob_status,
    packageImportJob_jobType,
    packageImportJob_lastUpdatedTime,
    packageImportJob_jobId,
    packageImportJob_createdTime,
    packageImportJob_statusMessage,

    -- * PackageImportJobInputConfig
    PackageImportJobInputConfig (..),
    newPackageImportJobInputConfig,
    packageImportJobInputConfig_packageVersionInputConfig,

    -- * PackageImportJobOutput
    PackageImportJobOutput (..),
    newPackageImportJobOutput,
    packageImportJobOutput_packageId,
    packageImportJobOutput_packageVersion,
    packageImportJobOutput_patchVersion,
    packageImportJobOutput_outputS3Location,

    -- * PackageImportJobOutputConfig
    PackageImportJobOutputConfig (..),
    newPackageImportJobOutputConfig,
    packageImportJobOutputConfig_packageVersionOutputConfig,

    -- * PackageListItem
    PackageListItem (..),
    newPackageListItem,
    packageListItem_packageId,
    packageListItem_arn,
    packageListItem_createdTime,
    packageListItem_packageName,
    packageListItem_tags,

    -- * PackageObject
    PackageObject (..),
    newPackageObject,
    packageObject_name,
    packageObject_packageVersion,
    packageObject_patchVersion,

    -- * PackageVersionInputConfig
    PackageVersionInputConfig (..),
    newPackageVersionInputConfig,
    packageVersionInputConfig_s3Location,

    -- * PackageVersionOutputConfig
    PackageVersionOutputConfig (..),
    newPackageVersionOutputConfig,
    packageVersionOutputConfig_markLatest,
    packageVersionOutputConfig_packageName,
    packageVersionOutputConfig_packageVersion,

    -- * S3Location
    S3Location (..),
    newS3Location,
    s3Location_region,
    s3Location_bucketName,
    s3Location_objectKey,

    -- * StaticIpConnectionInfo
    StaticIpConnectionInfo (..),
    newStaticIpConnectionInfo,
    staticIpConnectionInfo_ipAddress,
    staticIpConnectionInfo_mask,
    staticIpConnectionInfo_dns,
    staticIpConnectionInfo_defaultGateway,

    -- * StorageLocation
    StorageLocation (..),
    newStorageLocation,
    storageLocation_bucket,
    storageLocation_repoPrefixLocation,
    storageLocation_generatedPrefixLocation,
    storageLocation_binaryPrefixLocation,
    storageLocation_manifestPrefixLocation,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Panorama.Types.ApplicationInstance
import Amazonka.Panorama.Types.ApplicationInstanceHealthStatus
import Amazonka.Panorama.Types.ApplicationInstanceStatus
import Amazonka.Panorama.Types.ConnectionType
import Amazonka.Panorama.Types.Device
import Amazonka.Panorama.Types.DeviceConnectionStatus
import Amazonka.Panorama.Types.DeviceJob
import Amazonka.Panorama.Types.DeviceJobConfig
import Amazonka.Panorama.Types.DeviceStatus
import Amazonka.Panorama.Types.DeviceType
import Amazonka.Panorama.Types.EthernetPayload
import Amazonka.Panorama.Types.EthernetStatus
import Amazonka.Panorama.Types.Job
import Amazonka.Panorama.Types.JobResourceTags
import Amazonka.Panorama.Types.JobResourceType
import Amazonka.Panorama.Types.JobType
import Amazonka.Panorama.Types.ManifestOverridesPayload
import Amazonka.Panorama.Types.ManifestPayload
import Amazonka.Panorama.Types.NetworkConnectionStatus
import Amazonka.Panorama.Types.NetworkPayload
import Amazonka.Panorama.Types.NetworkStatus
import Amazonka.Panorama.Types.Node
import Amazonka.Panorama.Types.NodeCategory
import Amazonka.Panorama.Types.NodeFromTemplateJob
import Amazonka.Panorama.Types.NodeFromTemplateJobStatus
import Amazonka.Panorama.Types.NodeInputPort
import Amazonka.Panorama.Types.NodeInstance
import Amazonka.Panorama.Types.NodeInstanceStatus
import Amazonka.Panorama.Types.NodeInterface
import Amazonka.Panorama.Types.NodeOutputPort
import Amazonka.Panorama.Types.OTAJobConfig
import Amazonka.Panorama.Types.OutPutS3Location
import Amazonka.Panorama.Types.PackageImportJob
import Amazonka.Panorama.Types.PackageImportJobInputConfig
import Amazonka.Panorama.Types.PackageImportJobOutput
import Amazonka.Panorama.Types.PackageImportJobOutputConfig
import Amazonka.Panorama.Types.PackageImportJobStatus
import Amazonka.Panorama.Types.PackageImportJobType
import Amazonka.Panorama.Types.PackageListItem
import Amazonka.Panorama.Types.PackageObject
import Amazonka.Panorama.Types.PackageVersionInputConfig
import Amazonka.Panorama.Types.PackageVersionOutputConfig
import Amazonka.Panorama.Types.PackageVersionStatus
import Amazonka.Panorama.Types.PortType
import Amazonka.Panorama.Types.S3Location
import Amazonka.Panorama.Types.StaticIpConnectionInfo
import Amazonka.Panorama.Types.StatusFilter
import Amazonka.Panorama.Types.StorageLocation
import Amazonka.Panorama.Types.TemplateType
import Amazonka.Panorama.Types.UpdateProgress
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2019-07-24@ of the Amazon Panorama SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Panorama",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "panorama",
      Core._serviceSigningName = "panorama",
      Core._serviceVersion = "2019-07-24",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Panorama",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | The request contains an invalid parameter value.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

-- | The requestor does not have permission to access the target action or
-- resource.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | The target resource is in use.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request would cause a limit to be exceeded.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | An internal error occurred.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | The target resource was not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404
