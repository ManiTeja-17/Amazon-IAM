{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Synthetics.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Synthetics.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ValidationException,
    _ConflictException,
    _InternalServerException,
    _ResourceNotFoundException,

    -- * CanaryRunState
    CanaryRunState (..),

    -- * CanaryRunStateReasonCode
    CanaryRunStateReasonCode (..),

    -- * CanaryState
    CanaryState (..),

    -- * CanaryStateReasonCode
    CanaryStateReasonCode (..),

    -- * EncryptionMode
    EncryptionMode (..),

    -- * ArtifactConfigInput
    ArtifactConfigInput (..),
    newArtifactConfigInput,
    artifactConfigInput_s3Encryption,

    -- * ArtifactConfigOutput
    ArtifactConfigOutput (..),
    newArtifactConfigOutput,
    artifactConfigOutput_s3Encryption,

    -- * BaseScreenshot
    BaseScreenshot (..),
    newBaseScreenshot,
    baseScreenshot_ignoreCoordinates,
    baseScreenshot_screenshotName,

    -- * Canary
    Canary (..),
    newCanary,
    canary_status,
    canary_successRetentionPeriodInDays,
    canary_schedule,
    canary_artifactS3Location,
    canary_runConfig,
    canary_executionRoleArn,
    canary_runtimeVersion,
    canary_failureRetentionPeriodInDays,
    canary_artifactConfig,
    canary_vpcConfig,
    canary_visualReference,
    canary_name,
    canary_id,
    canary_code,
    canary_timeline,
    canary_engineArn,
    canary_tags,

    -- * CanaryCodeInput
    CanaryCodeInput (..),
    newCanaryCodeInput,
    canaryCodeInput_s3Key,
    canaryCodeInput_s3Version,
    canaryCodeInput_zipFile,
    canaryCodeInput_s3Bucket,
    canaryCodeInput_handler,

    -- * CanaryCodeOutput
    CanaryCodeOutput (..),
    newCanaryCodeOutput,
    canaryCodeOutput_sourceLocationArn,
    canaryCodeOutput_handler,

    -- * CanaryLastRun
    CanaryLastRun (..),
    newCanaryLastRun,
    canaryLastRun_canaryName,
    canaryLastRun_lastRun,

    -- * CanaryRun
    CanaryRun (..),
    newCanaryRun,
    canaryRun_status,
    canaryRun_artifactS3Location,
    canaryRun_name,
    canaryRun_id,
    canaryRun_timeline,

    -- * CanaryRunConfigInput
    CanaryRunConfigInput (..),
    newCanaryRunConfigInput,
    canaryRunConfigInput_timeoutInSeconds,
    canaryRunConfigInput_environmentVariables,
    canaryRunConfigInput_activeTracing,
    canaryRunConfigInput_memoryInMB,

    -- * CanaryRunConfigOutput
    CanaryRunConfigOutput (..),
    newCanaryRunConfigOutput,
    canaryRunConfigOutput_timeoutInSeconds,
    canaryRunConfigOutput_activeTracing,
    canaryRunConfigOutput_memoryInMB,

    -- * CanaryRunStatus
    CanaryRunStatus (..),
    newCanaryRunStatus,
    canaryRunStatus_state,
    canaryRunStatus_stateReason,
    canaryRunStatus_stateReasonCode,

    -- * CanaryRunTimeline
    CanaryRunTimeline (..),
    newCanaryRunTimeline,
    canaryRunTimeline_completed,
    canaryRunTimeline_started,

    -- * CanaryScheduleInput
    CanaryScheduleInput (..),
    newCanaryScheduleInput,
    canaryScheduleInput_durationInSeconds,
    canaryScheduleInput_expression,

    -- * CanaryScheduleOutput
    CanaryScheduleOutput (..),
    newCanaryScheduleOutput,
    canaryScheduleOutput_durationInSeconds,
    canaryScheduleOutput_expression,

    -- * CanaryStatus
    CanaryStatus (..),
    newCanaryStatus,
    canaryStatus_state,
    canaryStatus_stateReason,
    canaryStatus_stateReasonCode,

    -- * CanaryTimeline
    CanaryTimeline (..),
    newCanaryTimeline,
    canaryTimeline_created,
    canaryTimeline_lastStarted,
    canaryTimeline_lastStopped,
    canaryTimeline_lastModified,

    -- * RuntimeVersion
    RuntimeVersion (..),
    newRuntimeVersion,
    runtimeVersion_versionName,
    runtimeVersion_deprecationDate,
    runtimeVersion_releaseDate,
    runtimeVersion_description,

    -- * S3EncryptionConfig
    S3EncryptionConfig (..),
    newS3EncryptionConfig,
    s3EncryptionConfig_kmsKeyArn,
    s3EncryptionConfig_encryptionMode,

    -- * VisualReferenceInput
    VisualReferenceInput (..),
    newVisualReferenceInput,
    visualReferenceInput_baseScreenshots,
    visualReferenceInput_baseCanaryRunId,

    -- * VisualReferenceOutput
    VisualReferenceOutput (..),
    newVisualReferenceOutput,
    visualReferenceOutput_baseScreenshots,
    visualReferenceOutput_baseCanaryRunId,

    -- * VpcConfigInput
    VpcConfigInput (..),
    newVpcConfigInput,
    vpcConfigInput_securityGroupIds,
    vpcConfigInput_subnetIds,

    -- * VpcConfigOutput
    VpcConfigOutput (..),
    newVpcConfigOutput,
    vpcConfigOutput_securityGroupIds,
    vpcConfigOutput_subnetIds,
    vpcConfigOutput_vpcId,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign
import Amazonka.Synthetics.Types.ArtifactConfigInput
import Amazonka.Synthetics.Types.ArtifactConfigOutput
import Amazonka.Synthetics.Types.BaseScreenshot
import Amazonka.Synthetics.Types.Canary
import Amazonka.Synthetics.Types.CanaryCodeInput
import Amazonka.Synthetics.Types.CanaryCodeOutput
import Amazonka.Synthetics.Types.CanaryLastRun
import Amazonka.Synthetics.Types.CanaryRun
import Amazonka.Synthetics.Types.CanaryRunConfigInput
import Amazonka.Synthetics.Types.CanaryRunConfigOutput
import Amazonka.Synthetics.Types.CanaryRunState
import Amazonka.Synthetics.Types.CanaryRunStateReasonCode
import Amazonka.Synthetics.Types.CanaryRunStatus
import Amazonka.Synthetics.Types.CanaryRunTimeline
import Amazonka.Synthetics.Types.CanaryScheduleInput
import Amazonka.Synthetics.Types.CanaryScheduleOutput
import Amazonka.Synthetics.Types.CanaryState
import Amazonka.Synthetics.Types.CanaryStateReasonCode
import Amazonka.Synthetics.Types.CanaryStatus
import Amazonka.Synthetics.Types.CanaryTimeline
import Amazonka.Synthetics.Types.EncryptionMode
import Amazonka.Synthetics.Types.RuntimeVersion
import Amazonka.Synthetics.Types.S3EncryptionConfig
import Amazonka.Synthetics.Types.VisualReferenceInput
import Amazonka.Synthetics.Types.VisualReferenceOutput
import Amazonka.Synthetics.Types.VpcConfigInput
import Amazonka.Synthetics.Types.VpcConfigOutput

-- | API version @2017-10-11@ of the Amazon Synthetics SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Synthetics",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "synthetics",
      Core._serviceSigningName = "synthetics",
      Core._serviceVersion = "2017-10-11",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "Synthetics",
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

-- | A parameter could not be validated.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

-- | A conflicting operation is already in progress.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | An unknown internal error occurred.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | One of the specified resources was not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404
