{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AWSHealth.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AWSHealth.Lens
  ( -- * Operations

    -- ** EnableHealthServiceAccessForOrganization

    -- ** DescribeEntityAggregates
    describeEntityAggregates_eventArns,
    describeEntityAggregatesResponse_entityAggregates,
    describeEntityAggregatesResponse_httpStatus,

    -- ** DescribeEvents
    describeEvents_locale,
    describeEvents_nextToken,
    describeEvents_filter,
    describeEvents_maxResults,
    describeEventsResponse_nextToken,
    describeEventsResponse_events,
    describeEventsResponse_httpStatus,

    -- ** DescribeEventsForOrganization
    describeEventsForOrganization_locale,
    describeEventsForOrganization_nextToken,
    describeEventsForOrganization_filter,
    describeEventsForOrganization_maxResults,
    describeEventsForOrganizationResponse_nextToken,
    describeEventsForOrganizationResponse_events,
    describeEventsForOrganizationResponse_httpStatus,

    -- ** DescribeAffectedAccountsForOrganization
    describeAffectedAccountsForOrganization_nextToken,
    describeAffectedAccountsForOrganization_maxResults,
    describeAffectedAccountsForOrganization_eventArn,
    describeAffectedAccountsForOrganizationResponse_affectedAccounts,
    describeAffectedAccountsForOrganizationResponse_eventScopeCode,
    describeAffectedAccountsForOrganizationResponse_nextToken,
    describeAffectedAccountsForOrganizationResponse_httpStatus,

    -- ** DescribeEventDetails
    describeEventDetails_locale,
    describeEventDetails_eventArns,
    describeEventDetailsResponse_successfulSet,
    describeEventDetailsResponse_failedSet,
    describeEventDetailsResponse_httpStatus,

    -- ** DescribeEventAggregates
    describeEventAggregates_nextToken,
    describeEventAggregates_filter,
    describeEventAggregates_maxResults,
    describeEventAggregates_aggregateField,
    describeEventAggregatesResponse_nextToken,
    describeEventAggregatesResponse_eventAggregates,
    describeEventAggregatesResponse_httpStatus,

    -- ** DescribeAffectedEntities
    describeAffectedEntities_locale,
    describeAffectedEntities_nextToken,
    describeAffectedEntities_maxResults,
    describeAffectedEntities_filter,
    describeAffectedEntitiesResponse_entities,
    describeAffectedEntitiesResponse_nextToken,
    describeAffectedEntitiesResponse_httpStatus,

    -- ** DescribeEventTypes
    describeEventTypes_locale,
    describeEventTypes_nextToken,
    describeEventTypes_filter,
    describeEventTypes_maxResults,
    describeEventTypesResponse_eventTypes,
    describeEventTypesResponse_nextToken,
    describeEventTypesResponse_httpStatus,

    -- ** DescribeAffectedEntitiesForOrganization
    describeAffectedEntitiesForOrganization_locale,
    describeAffectedEntitiesForOrganization_nextToken,
    describeAffectedEntitiesForOrganization_maxResults,
    describeAffectedEntitiesForOrganization_organizationEntityFilters,
    describeAffectedEntitiesForOrganizationResponse_entities,
    describeAffectedEntitiesForOrganizationResponse_failedSet,
    describeAffectedEntitiesForOrganizationResponse_nextToken,
    describeAffectedEntitiesForOrganizationResponse_httpStatus,

    -- ** DescribeHealthServiceStatusForOrganization
    describeHealthServiceStatusForOrganizationResponse_healthServiceAccessStatusForOrganization,
    describeHealthServiceStatusForOrganizationResponse_httpStatus,

    -- ** DescribeEventDetailsForOrganization
    describeEventDetailsForOrganization_locale,
    describeEventDetailsForOrganization_organizationEventDetailFilters,
    describeEventDetailsForOrganizationResponse_successfulSet,
    describeEventDetailsForOrganizationResponse_failedSet,
    describeEventDetailsForOrganizationResponse_httpStatus,

    -- ** DisableHealthServiceAccessForOrganization

    -- * Types

    -- ** AffectedEntity
    affectedEntity_lastUpdatedTime,
    affectedEntity_entityValue,
    affectedEntity_entityUrl,
    affectedEntity_awsAccountId,
    affectedEntity_eventArn,
    affectedEntity_entityArn,
    affectedEntity_tags,
    affectedEntity_statusCode,

    -- ** DateTimeRange
    dateTimeRange_to,
    dateTimeRange_from,

    -- ** EntityAggregate
    entityAggregate_count,
    entityAggregate_eventArn,

    -- ** EntityFilter
    entityFilter_statusCodes,
    entityFilter_entityArns,
    entityFilter_entityValues,
    entityFilter_tags,
    entityFilter_lastUpdatedTimes,
    entityFilter_eventArns,

    -- ** Event
    event_lastUpdatedTime,
    event_arn,
    event_service,
    event_startTime,
    event_eventScopeCode,
    event_eventTypeCode,
    event_eventTypeCategory,
    event_availabilityZone,
    event_endTime,
    event_region,
    event_statusCode,

    -- ** EventAccountFilter
    eventAccountFilter_awsAccountId,
    eventAccountFilter_eventArn,

    -- ** EventAggregate
    eventAggregate_count,
    eventAggregate_aggregateValue,

    -- ** EventDescription
    eventDescription_latestDescription,

    -- ** EventDetails
    eventDetails_event,
    eventDetails_eventDescription,
    eventDetails_eventMetadata,

    -- ** EventDetailsErrorItem
    eventDetailsErrorItem_eventArn,
    eventDetailsErrorItem_errorName,
    eventDetailsErrorItem_errorMessage,

    -- ** EventFilter
    eventFilter_eventArns,
    eventFilter_eventTypeCategories,
    eventFilter_eventTypeCodes,
    eventFilter_regions,
    eventFilter_eventStatusCodes,
    eventFilter_endTimes,
    eventFilter_availabilityZones,
    eventFilter_entityArns,
    eventFilter_entityValues,
    eventFilter_startTimes,
    eventFilter_services,
    eventFilter_tags,
    eventFilter_lastUpdatedTimes,

    -- ** EventType
    eventType_service,
    eventType_category,
    eventType_code,

    -- ** EventTypeFilter
    eventTypeFilter_eventTypeCategories,
    eventTypeFilter_eventTypeCodes,
    eventTypeFilter_services,

    -- ** OrganizationAffectedEntitiesErrorItem
    organizationAffectedEntitiesErrorItem_awsAccountId,
    organizationAffectedEntitiesErrorItem_eventArn,
    organizationAffectedEntitiesErrorItem_errorName,
    organizationAffectedEntitiesErrorItem_errorMessage,

    -- ** OrganizationEvent
    organizationEvent_lastUpdatedTime,
    organizationEvent_arn,
    organizationEvent_service,
    organizationEvent_startTime,
    organizationEvent_eventScopeCode,
    organizationEvent_eventTypeCode,
    organizationEvent_eventTypeCategory,
    organizationEvent_endTime,
    organizationEvent_region,
    organizationEvent_statusCode,

    -- ** OrganizationEventDetails
    organizationEventDetails_event,
    organizationEventDetails_eventDescription,
    organizationEventDetails_awsAccountId,
    organizationEventDetails_eventMetadata,

    -- ** OrganizationEventDetailsErrorItem
    organizationEventDetailsErrorItem_awsAccountId,
    organizationEventDetailsErrorItem_eventArn,
    organizationEventDetailsErrorItem_errorName,
    organizationEventDetailsErrorItem_errorMessage,

    -- ** OrganizationEventFilter
    organizationEventFilter_lastUpdatedTime,
    organizationEventFilter_awsAccountIds,
    organizationEventFilter_eventTypeCategories,
    organizationEventFilter_eventTypeCodes,
    organizationEventFilter_startTime,
    organizationEventFilter_regions,
    organizationEventFilter_eventStatusCodes,
    organizationEventFilter_endTime,
    organizationEventFilter_entityArns,
    organizationEventFilter_entityValues,
    organizationEventFilter_services,
  )
where

import Amazonka.AWSHealth.DescribeAffectedAccountsForOrganization
import Amazonka.AWSHealth.DescribeAffectedEntities
import Amazonka.AWSHealth.DescribeAffectedEntitiesForOrganization
import Amazonka.AWSHealth.DescribeEntityAggregates
import Amazonka.AWSHealth.DescribeEventAggregates
import Amazonka.AWSHealth.DescribeEventDetails
import Amazonka.AWSHealth.DescribeEventDetailsForOrganization
import Amazonka.AWSHealth.DescribeEventTypes
import Amazonka.AWSHealth.DescribeEvents
import Amazonka.AWSHealth.DescribeEventsForOrganization
import Amazonka.AWSHealth.DescribeHealthServiceStatusForOrganization
import Amazonka.AWSHealth.DisableHealthServiceAccessForOrganization
import Amazonka.AWSHealth.EnableHealthServiceAccessForOrganization
import Amazonka.AWSHealth.Types.AffectedEntity
import Amazonka.AWSHealth.Types.DateTimeRange
import Amazonka.AWSHealth.Types.EntityAggregate
import Amazonka.AWSHealth.Types.EntityFilter
import Amazonka.AWSHealth.Types.Event
import Amazonka.AWSHealth.Types.EventAccountFilter
import Amazonka.AWSHealth.Types.EventAggregate
import Amazonka.AWSHealth.Types.EventDescription
import Amazonka.AWSHealth.Types.EventDetails
import Amazonka.AWSHealth.Types.EventDetailsErrorItem
import Amazonka.AWSHealth.Types.EventFilter
import Amazonka.AWSHealth.Types.EventType
import Amazonka.AWSHealth.Types.EventTypeFilter
import Amazonka.AWSHealth.Types.OrganizationAffectedEntitiesErrorItem
import Amazonka.AWSHealth.Types.OrganizationEvent
import Amazonka.AWSHealth.Types.OrganizationEventDetails
import Amazonka.AWSHealth.Types.OrganizationEventDetailsErrorItem
import Amazonka.AWSHealth.Types.OrganizationEventFilter
