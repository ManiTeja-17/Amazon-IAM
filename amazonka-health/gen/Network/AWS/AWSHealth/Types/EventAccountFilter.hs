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
-- Module      : Network.AWS.AWSHealth.Types.EventAccountFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventAccountFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The values used to filter results from the
-- <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html DescribeEventDetailsForOrganization>
-- and
-- <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html DescribeAffectedEntitiesForOrganization>
-- operations.
--
-- /See:/ 'newEventAccountFilter' smart constructor.
data EventAccountFilter = EventAccountFilter'
  { -- | The 12-digit AWS account numbers that contains the affected entities.
    awsAccountId :: Core.Maybe Core.Text,
    -- | The unique identifier for the event. Format:
    -- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @.
    -- Example:
    -- @Example: arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
    eventArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EventAccountFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'eventAccountFilter_awsAccountId' - The 12-digit AWS account numbers that contains the affected entities.
--
-- 'eventArn', 'eventAccountFilter_eventArn' - The unique identifier for the event. Format:
-- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @.
-- Example:
-- @Example: arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
newEventAccountFilter ::
  -- | 'eventArn'
  Core.Text ->
  EventAccountFilter
newEventAccountFilter pEventArn_ =
  EventAccountFilter'
    { awsAccountId = Core.Nothing,
      eventArn = pEventArn_
    }

-- | The 12-digit AWS account numbers that contains the affected entities.
eventAccountFilter_awsAccountId :: Lens.Lens' EventAccountFilter (Core.Maybe Core.Text)
eventAccountFilter_awsAccountId = Lens.lens (\EventAccountFilter' {awsAccountId} -> awsAccountId) (\s@EventAccountFilter' {} a -> s {awsAccountId = a} :: EventAccountFilter)

-- | The unique identifier for the event. Format:
-- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @.
-- Example:
-- @Example: arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
eventAccountFilter_eventArn :: Lens.Lens' EventAccountFilter Core.Text
eventAccountFilter_eventArn = Lens.lens (\EventAccountFilter' {eventArn} -> eventArn) (\s@EventAccountFilter' {} a -> s {eventArn = a} :: EventAccountFilter)

instance Core.Hashable EventAccountFilter

instance Core.NFData EventAccountFilter

instance Core.ToJSON EventAccountFilter where
  toJSON EventAccountFilter' {..} =
    Core.object
      ( Core.catMaybes
          [ ("awsAccountId" Core..=) Core.<$> awsAccountId,
            Core.Just ("eventArn" Core..= eventArn)
          ]
      )
