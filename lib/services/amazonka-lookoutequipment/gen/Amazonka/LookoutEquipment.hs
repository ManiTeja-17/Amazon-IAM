{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.LookoutEquipment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2020-12-15@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon Lookout for Equipment is a machine learning service that uses
-- advanced analytics to identify anomalies in machines from sensor data
-- for use in predictive maintenance.
module Amazonka.LookoutEquipment
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ValidationException
    _ValidationException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ConflictException
    _ConflictException,

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** StartInferenceScheduler
    StartInferenceScheduler (StartInferenceScheduler'),
    newStartInferenceScheduler,
    StartInferenceSchedulerResponse (StartInferenceSchedulerResponse'),
    newStartInferenceSchedulerResponse,

    -- ** DescribeDataset
    DescribeDataset (DescribeDataset'),
    newDescribeDataset,
    DescribeDatasetResponse (DescribeDatasetResponse'),
    newDescribeDatasetResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** DescribeDataIngestionJob
    DescribeDataIngestionJob (DescribeDataIngestionJob'),
    newDescribeDataIngestionJob,
    DescribeDataIngestionJobResponse (DescribeDataIngestionJobResponse'),
    newDescribeDataIngestionJobResponse,

    -- ** CreateModel
    CreateModel (CreateModel'),
    newCreateModel,
    CreateModelResponse (CreateModelResponse'),
    newCreateModelResponse,

    -- ** DeleteDataset
    DeleteDataset (DeleteDataset'),
    newDeleteDataset,
    DeleteDatasetResponse (DeleteDatasetResponse'),
    newDeleteDatasetResponse,

    -- ** CreateDataset
    CreateDataset (CreateDataset'),
    newCreateDataset,
    CreateDatasetResponse (CreateDatasetResponse'),
    newCreateDatasetResponse,

    -- ** DeleteModel
    DeleteModel (DeleteModel'),
    newDeleteModel,
    DeleteModelResponse (DeleteModelResponse'),
    newDeleteModelResponse,

    -- ** ListModels
    ListModels (ListModels'),
    newListModels,
    ListModelsResponse (ListModelsResponse'),
    newListModelsResponse,

    -- ** StopInferenceScheduler
    StopInferenceScheduler (StopInferenceScheduler'),
    newStopInferenceScheduler,
    StopInferenceSchedulerResponse (StopInferenceSchedulerResponse'),
    newStopInferenceSchedulerResponse,

    -- ** ListDataIngestionJobs
    ListDataIngestionJobs (ListDataIngestionJobs'),
    newListDataIngestionJobs,
    ListDataIngestionJobsResponse (ListDataIngestionJobsResponse'),
    newListDataIngestionJobsResponse,

    -- ** DescribeModel
    DescribeModel (DescribeModel'),
    newDescribeModel,
    DescribeModelResponse (DescribeModelResponse'),
    newDescribeModelResponse,

    -- ** StartDataIngestionJob
    StartDataIngestionJob (StartDataIngestionJob'),
    newStartDataIngestionJob,
    StartDataIngestionJobResponse (StartDataIngestionJobResponse'),
    newStartDataIngestionJobResponse,

    -- ** ListInferenceSchedulers
    ListInferenceSchedulers (ListInferenceSchedulers'),
    newListInferenceSchedulers,
    ListInferenceSchedulersResponse (ListInferenceSchedulersResponse'),
    newListInferenceSchedulersResponse,

    -- ** UpdateInferenceScheduler
    UpdateInferenceScheduler (UpdateInferenceScheduler'),
    newUpdateInferenceScheduler,
    UpdateInferenceSchedulerResponse (UpdateInferenceSchedulerResponse'),
    newUpdateInferenceSchedulerResponse,

    -- ** DeleteInferenceScheduler
    DeleteInferenceScheduler (DeleteInferenceScheduler'),
    newDeleteInferenceScheduler,
    DeleteInferenceSchedulerResponse (DeleteInferenceSchedulerResponse'),
    newDeleteInferenceSchedulerResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** ListInferenceExecutions
    ListInferenceExecutions (ListInferenceExecutions'),
    newListInferenceExecutions,
    ListInferenceExecutionsResponse (ListInferenceExecutionsResponse'),
    newListInferenceExecutionsResponse,

    -- ** CreateInferenceScheduler
    CreateInferenceScheduler (CreateInferenceScheduler'),
    newCreateInferenceScheduler,
    CreateInferenceSchedulerResponse (CreateInferenceSchedulerResponse'),
    newCreateInferenceSchedulerResponse,

    -- ** ListDatasets
    ListDatasets (ListDatasets'),
    newListDatasets,
    ListDatasetsResponse (ListDatasetsResponse'),
    newListDatasetsResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** DescribeInferenceScheduler
    DescribeInferenceScheduler (DescribeInferenceScheduler'),
    newDescribeInferenceScheduler,
    DescribeInferenceSchedulerResponse (DescribeInferenceSchedulerResponse'),
    newDescribeInferenceSchedulerResponse,

    -- * Types

    -- ** DataUploadFrequency
    DataUploadFrequency (..),

    -- ** DatasetStatus
    DatasetStatus (..),

    -- ** InferenceExecutionStatus
    InferenceExecutionStatus (..),

    -- ** InferenceSchedulerStatus
    InferenceSchedulerStatus (..),

    -- ** IngestionJobStatus
    IngestionJobStatus (..),

    -- ** ModelStatus
    ModelStatus (..),

    -- ** TargetSamplingRate
    TargetSamplingRate (..),

    -- ** DataIngestionJobSummary
    DataIngestionJobSummary (DataIngestionJobSummary'),
    newDataIngestionJobSummary,

    -- ** DataPreProcessingConfiguration
    DataPreProcessingConfiguration (DataPreProcessingConfiguration'),
    newDataPreProcessingConfiguration,

    -- ** DatasetSchema
    DatasetSchema (DatasetSchema'),
    newDatasetSchema,

    -- ** DatasetSummary
    DatasetSummary (DatasetSummary'),
    newDatasetSummary,

    -- ** InferenceExecutionSummary
    InferenceExecutionSummary (InferenceExecutionSummary'),
    newInferenceExecutionSummary,

    -- ** InferenceInputConfiguration
    InferenceInputConfiguration (InferenceInputConfiguration'),
    newInferenceInputConfiguration,

    -- ** InferenceInputNameConfiguration
    InferenceInputNameConfiguration (InferenceInputNameConfiguration'),
    newInferenceInputNameConfiguration,

    -- ** InferenceOutputConfiguration
    InferenceOutputConfiguration (InferenceOutputConfiguration'),
    newInferenceOutputConfiguration,

    -- ** InferenceS3InputConfiguration
    InferenceS3InputConfiguration (InferenceS3InputConfiguration'),
    newInferenceS3InputConfiguration,

    -- ** InferenceS3OutputConfiguration
    InferenceS3OutputConfiguration (InferenceS3OutputConfiguration'),
    newInferenceS3OutputConfiguration,

    -- ** InferenceSchedulerSummary
    InferenceSchedulerSummary (InferenceSchedulerSummary'),
    newInferenceSchedulerSummary,

    -- ** IngestionInputConfiguration
    IngestionInputConfiguration (IngestionInputConfiguration'),
    newIngestionInputConfiguration,

    -- ** IngestionS3InputConfiguration
    IngestionS3InputConfiguration (IngestionS3InputConfiguration'),
    newIngestionS3InputConfiguration,

    -- ** LabelsInputConfiguration
    LabelsInputConfiguration (LabelsInputConfiguration'),
    newLabelsInputConfiguration,

    -- ** LabelsS3InputConfiguration
    LabelsS3InputConfiguration (LabelsS3InputConfiguration'),
    newLabelsS3InputConfiguration,

    -- ** ModelSummary
    ModelSummary (ModelSummary'),
    newModelSummary,

    -- ** S3Object
    S3Object (S3Object'),
    newS3Object,

    -- ** Tag
    Tag (Tag'),
    newTag,
  )
where

import Amazonka.LookoutEquipment.CreateDataset
import Amazonka.LookoutEquipment.CreateInferenceScheduler
import Amazonka.LookoutEquipment.CreateModel
import Amazonka.LookoutEquipment.DeleteDataset
import Amazonka.LookoutEquipment.DeleteInferenceScheduler
import Amazonka.LookoutEquipment.DeleteModel
import Amazonka.LookoutEquipment.DescribeDataIngestionJob
import Amazonka.LookoutEquipment.DescribeDataset
import Amazonka.LookoutEquipment.DescribeInferenceScheduler
import Amazonka.LookoutEquipment.DescribeModel
import Amazonka.LookoutEquipment.Lens
import Amazonka.LookoutEquipment.ListDataIngestionJobs
import Amazonka.LookoutEquipment.ListDatasets
import Amazonka.LookoutEquipment.ListInferenceExecutions
import Amazonka.LookoutEquipment.ListInferenceSchedulers
import Amazonka.LookoutEquipment.ListModels
import Amazonka.LookoutEquipment.ListTagsForResource
import Amazonka.LookoutEquipment.StartDataIngestionJob
import Amazonka.LookoutEquipment.StartInferenceScheduler
import Amazonka.LookoutEquipment.StopInferenceScheduler
import Amazonka.LookoutEquipment.TagResource
import Amazonka.LookoutEquipment.Types
import Amazonka.LookoutEquipment.UntagResource
import Amazonka.LookoutEquipment.UpdateInferenceScheduler
import Amazonka.LookoutEquipment.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'LookoutEquipment'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
