{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.OrganizationEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.OrganizationEvent where

import Network.AWS.AWSHealth.Types.EventScopeCode
import Network.AWS.AWSHealth.Types.EventStatusCode
import Network.AWS.AWSHealth.Types.EventTypeCategory
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Summary information about an event, returned by the
-- <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html DescribeEventsForOrganization>
-- operation.
--
-- /See:/ 'newOrganizationEvent' smart constructor.
data OrganizationEvent = OrganizationEvent'
  { -- | The category of the event type.
    eventTypeCategory :: Core.Maybe EventTypeCategory,
    -- | This parameter specifies if the AWS Health event is a public AWS service
    -- event or an account-specific event.
    --
    -- -   If the @eventScopeCode@ value is @PUBLIC@, then the
    --     @affectedAccounts@ value is always empty.
    --
    -- -   If the @eventScopeCode@ value is @ACCOUNT_SPECIFIC@, then the
    --     @affectedAccounts@ value lists the affected AWS accounts in your
    --     organization. For example, if an event affects a service such as
    --     Amazon Elastic Compute Cloud and you have AWS accounts that use that
    --     service, those account IDs appear in the response.
    --
    -- -   If the @eventScopeCode@ value is @NONE@, then the @eventArn@ that
    --     you specified in the request is invalid or doesn\'t exist.
    eventScopeCode :: Core.Maybe EventScopeCode,
    -- | The date and time that the event began.
    startTime :: Core.Maybe Core.POSIX,
    -- | The AWS service that is affected by the event. For example, EC2, RDS.
    service :: Core.Maybe Core.Text,
    -- | The unique identifier for the event. Format:
    -- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @.
    -- Example:
    -- @Example: arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
    arn :: Core.Maybe Core.Text,
    -- | The date and time that the event ended.
    endTime :: Core.Maybe Core.POSIX,
    -- | The most recent status of the event. Possible values are @open@,
    -- @closed@, and @upcoming@.
    statusCode :: Core.Maybe EventStatusCode,
    -- | The unique identifier for the event type. The format is
    -- @AWS_SERVICE_DESCRIPTION@. For example,
    -- @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@.
    eventTypeCode :: Core.Maybe Core.Text,
    -- | The AWS Region name of the event.
    region :: Core.Maybe Core.Text,
    -- | The most recent date and time that the event was updated.
    lastUpdatedTime :: Core.Maybe Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'OrganizationEvent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventTypeCategory', 'organizationEvent_eventTypeCategory' - The category of the event type.
--
-- 'eventScopeCode', 'organizationEvent_eventScopeCode' - This parameter specifies if the AWS Health event is a public AWS service
-- event or an account-specific event.
--
-- -   If the @eventScopeCode@ value is @PUBLIC@, then the
--     @affectedAccounts@ value is always empty.
--
-- -   If the @eventScopeCode@ value is @ACCOUNT_SPECIFIC@, then the
--     @affectedAccounts@ value lists the affected AWS accounts in your
--     organization. For example, if an event affects a service such as
--     Amazon Elastic Compute Cloud and you have AWS accounts that use that
--     service, those account IDs appear in the response.
--
-- -   If the @eventScopeCode@ value is @NONE@, then the @eventArn@ that
--     you specified in the request is invalid or doesn\'t exist.
--
-- 'startTime', 'organizationEvent_startTime' - The date and time that the event began.
--
-- 'service', 'organizationEvent_service' - The AWS service that is affected by the event. For example, EC2, RDS.
--
-- 'arn', 'organizationEvent_arn' - The unique identifier for the event. Format:
-- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @.
-- Example:
-- @Example: arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
--
-- 'endTime', 'organizationEvent_endTime' - The date and time that the event ended.
--
-- 'statusCode', 'organizationEvent_statusCode' - The most recent status of the event. Possible values are @open@,
-- @closed@, and @upcoming@.
--
-- 'eventTypeCode', 'organizationEvent_eventTypeCode' - The unique identifier for the event type. The format is
-- @AWS_SERVICE_DESCRIPTION@. For example,
-- @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@.
--
-- 'region', 'organizationEvent_region' - The AWS Region name of the event.
--
-- 'lastUpdatedTime', 'organizationEvent_lastUpdatedTime' - The most recent date and time that the event was updated.
newOrganizationEvent ::
  OrganizationEvent
newOrganizationEvent =
  OrganizationEvent'
    { eventTypeCategory =
        Core.Nothing,
      eventScopeCode = Core.Nothing,
      startTime = Core.Nothing,
      service = Core.Nothing,
      arn = Core.Nothing,
      endTime = Core.Nothing,
      statusCode = Core.Nothing,
      eventTypeCode = Core.Nothing,
      region = Core.Nothing,
      lastUpdatedTime = Core.Nothing
    }

-- | The category of the event type.
organizationEvent_eventTypeCategory :: Lens.Lens' OrganizationEvent (Core.Maybe EventTypeCategory)
organizationEvent_eventTypeCategory = Lens.lens (\OrganizationEvent' {eventTypeCategory} -> eventTypeCategory) (\s@OrganizationEvent' {} a -> s {eventTypeCategory = a} :: OrganizationEvent)

-- | This parameter specifies if the AWS Health event is a public AWS service
-- event or an account-specific event.
--
-- -   If the @eventScopeCode@ value is @PUBLIC@, then the
--     @affectedAccounts@ value is always empty.
--
-- -   If the @eventScopeCode@ value is @ACCOUNT_SPECIFIC@, then the
--     @affectedAccounts@ value lists the affected AWS accounts in your
--     organization. For example, if an event affects a service such as
--     Amazon Elastic Compute Cloud and you have AWS accounts that use that
--     service, those account IDs appear in the response.
--
-- -   If the @eventScopeCode@ value is @NONE@, then the @eventArn@ that
--     you specified in the request is invalid or doesn\'t exist.
organizationEvent_eventScopeCode :: Lens.Lens' OrganizationEvent (Core.Maybe EventScopeCode)
organizationEvent_eventScopeCode = Lens.lens (\OrganizationEvent' {eventScopeCode} -> eventScopeCode) (\s@OrganizationEvent' {} a -> s {eventScopeCode = a} :: OrganizationEvent)

-- | The date and time that the event began.
organizationEvent_startTime :: Lens.Lens' OrganizationEvent (Core.Maybe Core.UTCTime)
organizationEvent_startTime = Lens.lens (\OrganizationEvent' {startTime} -> startTime) (\s@OrganizationEvent' {} a -> s {startTime = a} :: OrganizationEvent) Core.. Lens.mapping Core._Time

-- | The AWS service that is affected by the event. For example, EC2, RDS.
organizationEvent_service :: Lens.Lens' OrganizationEvent (Core.Maybe Core.Text)
organizationEvent_service = Lens.lens (\OrganizationEvent' {service} -> service) (\s@OrganizationEvent' {} a -> s {service = a} :: OrganizationEvent)

-- | The unique identifier for the event. Format:
-- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @.
-- Example:
-- @Example: arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
organizationEvent_arn :: Lens.Lens' OrganizationEvent (Core.Maybe Core.Text)
organizationEvent_arn = Lens.lens (\OrganizationEvent' {arn} -> arn) (\s@OrganizationEvent' {} a -> s {arn = a} :: OrganizationEvent)

-- | The date and time that the event ended.
organizationEvent_endTime :: Lens.Lens' OrganizationEvent (Core.Maybe Core.UTCTime)
organizationEvent_endTime = Lens.lens (\OrganizationEvent' {endTime} -> endTime) (\s@OrganizationEvent' {} a -> s {endTime = a} :: OrganizationEvent) Core.. Lens.mapping Core._Time

-- | The most recent status of the event. Possible values are @open@,
-- @closed@, and @upcoming@.
organizationEvent_statusCode :: Lens.Lens' OrganizationEvent (Core.Maybe EventStatusCode)
organizationEvent_statusCode = Lens.lens (\OrganizationEvent' {statusCode} -> statusCode) (\s@OrganizationEvent' {} a -> s {statusCode = a} :: OrganizationEvent)

-- | The unique identifier for the event type. The format is
-- @AWS_SERVICE_DESCRIPTION@. For example,
-- @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@.
organizationEvent_eventTypeCode :: Lens.Lens' OrganizationEvent (Core.Maybe Core.Text)
organizationEvent_eventTypeCode = Lens.lens (\OrganizationEvent' {eventTypeCode} -> eventTypeCode) (\s@OrganizationEvent' {} a -> s {eventTypeCode = a} :: OrganizationEvent)

-- | The AWS Region name of the event.
organizationEvent_region :: Lens.Lens' OrganizationEvent (Core.Maybe Core.Text)
organizationEvent_region = Lens.lens (\OrganizationEvent' {region} -> region) (\s@OrganizationEvent' {} a -> s {region = a} :: OrganizationEvent)

-- | The most recent date and time that the event was updated.
organizationEvent_lastUpdatedTime :: Lens.Lens' OrganizationEvent (Core.Maybe Core.UTCTime)
organizationEvent_lastUpdatedTime = Lens.lens (\OrganizationEvent' {lastUpdatedTime} -> lastUpdatedTime) (\s@OrganizationEvent' {} a -> s {lastUpdatedTime = a} :: OrganizationEvent) Core.. Lens.mapping Core._Time

instance Core.FromJSON OrganizationEvent where
  parseJSON =
    Core.withObject
      "OrganizationEvent"
      ( \x ->
          OrganizationEvent'
            Core.<$> (x Core..:? "eventTypeCategory")
            Core.<*> (x Core..:? "eventScopeCode")
            Core.<*> (x Core..:? "startTime")
            Core.<*> (x Core..:? "service")
            Core.<*> (x Core..:? "arn")
            Core.<*> (x Core..:? "endTime")
            Core.<*> (x Core..:? "statusCode")
            Core.<*> (x Core..:? "eventTypeCode")
            Core.<*> (x Core..:? "region")
            Core.<*> (x Core..:? "lastUpdatedTime")
      )

instance Core.Hashable OrganizationEvent

instance Core.NFData OrganizationEvent
