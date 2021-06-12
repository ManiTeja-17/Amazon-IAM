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
-- Module      : Network.AWS.Pinpoint.Types.ActivityResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ActivityResponse where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Provides information about an activity that was performed by a campaign.
--
-- /See:/ 'newActivityResponse' smart constructor.
data ActivityResponse = ActivityResponse'
  { -- | The actual time, in ISO 8601 format, when the activity was marked
    -- CANCELLED or COMPLETED.
    end :: Core.Maybe Core.Text,
    -- | The total number of endpoints that the campaign successfully delivered
    -- messages to.
    successfulEndpointCount :: Core.Maybe Core.Int,
    -- | Specifies whether the activity succeeded. Possible values are SUCCESS
    -- and FAIL.
    result :: Core.Maybe Core.Text,
    -- | The total number of time zones that were completed.
    timezonesCompletedCount :: Core.Maybe Core.Int,
    -- | The current status of the activity. Possible values are: PENDING,
    -- INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.
    state :: Core.Maybe Core.Text,
    -- | The total number of unique time zones that are in the segment for the
    -- campaign.
    timezonesTotalCount :: Core.Maybe Core.Int,
    -- | The unique identifier for the campaign treatment that the activity
    -- applies to. A treatment is a variation of a campaign that\'s used for
    -- A\/B testing of a campaign.
    treatmentId :: Core.Maybe Core.Text,
    -- | The scheduled start time, in ISO 8601 format, for the activity.
    scheduledStart :: Core.Maybe Core.Text,
    -- | The actual start time, in ISO 8601 format, of the activity.
    start :: Core.Maybe Core.Text,
    -- | The total number of endpoints that the campaign attempted to deliver
    -- messages to.
    totalEndpointCount :: Core.Maybe Core.Int,
    -- | The unique identifier for the campaign that the activity applies to.
    campaignId :: Core.Text,
    -- | The unique identifier for the activity.
    id :: Core.Text,
    -- | The unique identifier for the application that the campaign applies to.
    applicationId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ActivityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'end', 'activityResponse_end' - The actual time, in ISO 8601 format, when the activity was marked
-- CANCELLED or COMPLETED.
--
-- 'successfulEndpointCount', 'activityResponse_successfulEndpointCount' - The total number of endpoints that the campaign successfully delivered
-- messages to.
--
-- 'result', 'activityResponse_result' - Specifies whether the activity succeeded. Possible values are SUCCESS
-- and FAIL.
--
-- 'timezonesCompletedCount', 'activityResponse_timezonesCompletedCount' - The total number of time zones that were completed.
--
-- 'state', 'activityResponse_state' - The current status of the activity. Possible values are: PENDING,
-- INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.
--
-- 'timezonesTotalCount', 'activityResponse_timezonesTotalCount' - The total number of unique time zones that are in the segment for the
-- campaign.
--
-- 'treatmentId', 'activityResponse_treatmentId' - The unique identifier for the campaign treatment that the activity
-- applies to. A treatment is a variation of a campaign that\'s used for
-- A\/B testing of a campaign.
--
-- 'scheduledStart', 'activityResponse_scheduledStart' - The scheduled start time, in ISO 8601 format, for the activity.
--
-- 'start', 'activityResponse_start' - The actual start time, in ISO 8601 format, of the activity.
--
-- 'totalEndpointCount', 'activityResponse_totalEndpointCount' - The total number of endpoints that the campaign attempted to deliver
-- messages to.
--
-- 'campaignId', 'activityResponse_campaignId' - The unique identifier for the campaign that the activity applies to.
--
-- 'id', 'activityResponse_id' - The unique identifier for the activity.
--
-- 'applicationId', 'activityResponse_applicationId' - The unique identifier for the application that the campaign applies to.
newActivityResponse ::
  -- | 'campaignId'
  Core.Text ->
  -- | 'id'
  Core.Text ->
  -- | 'applicationId'
  Core.Text ->
  ActivityResponse
newActivityResponse pCampaignId_ pId_ pApplicationId_ =
  ActivityResponse'
    { end = Core.Nothing,
      successfulEndpointCount = Core.Nothing,
      result = Core.Nothing,
      timezonesCompletedCount = Core.Nothing,
      state = Core.Nothing,
      timezonesTotalCount = Core.Nothing,
      treatmentId = Core.Nothing,
      scheduledStart = Core.Nothing,
      start = Core.Nothing,
      totalEndpointCount = Core.Nothing,
      campaignId = pCampaignId_,
      id = pId_,
      applicationId = pApplicationId_
    }

-- | The actual time, in ISO 8601 format, when the activity was marked
-- CANCELLED or COMPLETED.
activityResponse_end :: Lens.Lens' ActivityResponse (Core.Maybe Core.Text)
activityResponse_end = Lens.lens (\ActivityResponse' {end} -> end) (\s@ActivityResponse' {} a -> s {end = a} :: ActivityResponse)

-- | The total number of endpoints that the campaign successfully delivered
-- messages to.
activityResponse_successfulEndpointCount :: Lens.Lens' ActivityResponse (Core.Maybe Core.Int)
activityResponse_successfulEndpointCount = Lens.lens (\ActivityResponse' {successfulEndpointCount} -> successfulEndpointCount) (\s@ActivityResponse' {} a -> s {successfulEndpointCount = a} :: ActivityResponse)

-- | Specifies whether the activity succeeded. Possible values are SUCCESS
-- and FAIL.
activityResponse_result :: Lens.Lens' ActivityResponse (Core.Maybe Core.Text)
activityResponse_result = Lens.lens (\ActivityResponse' {result} -> result) (\s@ActivityResponse' {} a -> s {result = a} :: ActivityResponse)

-- | The total number of time zones that were completed.
activityResponse_timezonesCompletedCount :: Lens.Lens' ActivityResponse (Core.Maybe Core.Int)
activityResponse_timezonesCompletedCount = Lens.lens (\ActivityResponse' {timezonesCompletedCount} -> timezonesCompletedCount) (\s@ActivityResponse' {} a -> s {timezonesCompletedCount = a} :: ActivityResponse)

-- | The current status of the activity. Possible values are: PENDING,
-- INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.
activityResponse_state :: Lens.Lens' ActivityResponse (Core.Maybe Core.Text)
activityResponse_state = Lens.lens (\ActivityResponse' {state} -> state) (\s@ActivityResponse' {} a -> s {state = a} :: ActivityResponse)

-- | The total number of unique time zones that are in the segment for the
-- campaign.
activityResponse_timezonesTotalCount :: Lens.Lens' ActivityResponse (Core.Maybe Core.Int)
activityResponse_timezonesTotalCount = Lens.lens (\ActivityResponse' {timezonesTotalCount} -> timezonesTotalCount) (\s@ActivityResponse' {} a -> s {timezonesTotalCount = a} :: ActivityResponse)

-- | The unique identifier for the campaign treatment that the activity
-- applies to. A treatment is a variation of a campaign that\'s used for
-- A\/B testing of a campaign.
activityResponse_treatmentId :: Lens.Lens' ActivityResponse (Core.Maybe Core.Text)
activityResponse_treatmentId = Lens.lens (\ActivityResponse' {treatmentId} -> treatmentId) (\s@ActivityResponse' {} a -> s {treatmentId = a} :: ActivityResponse)

-- | The scheduled start time, in ISO 8601 format, for the activity.
activityResponse_scheduledStart :: Lens.Lens' ActivityResponse (Core.Maybe Core.Text)
activityResponse_scheduledStart = Lens.lens (\ActivityResponse' {scheduledStart} -> scheduledStart) (\s@ActivityResponse' {} a -> s {scheduledStart = a} :: ActivityResponse)

-- | The actual start time, in ISO 8601 format, of the activity.
activityResponse_start :: Lens.Lens' ActivityResponse (Core.Maybe Core.Text)
activityResponse_start = Lens.lens (\ActivityResponse' {start} -> start) (\s@ActivityResponse' {} a -> s {start = a} :: ActivityResponse)

-- | The total number of endpoints that the campaign attempted to deliver
-- messages to.
activityResponse_totalEndpointCount :: Lens.Lens' ActivityResponse (Core.Maybe Core.Int)
activityResponse_totalEndpointCount = Lens.lens (\ActivityResponse' {totalEndpointCount} -> totalEndpointCount) (\s@ActivityResponse' {} a -> s {totalEndpointCount = a} :: ActivityResponse)

-- | The unique identifier for the campaign that the activity applies to.
activityResponse_campaignId :: Lens.Lens' ActivityResponse Core.Text
activityResponse_campaignId = Lens.lens (\ActivityResponse' {campaignId} -> campaignId) (\s@ActivityResponse' {} a -> s {campaignId = a} :: ActivityResponse)

-- | The unique identifier for the activity.
activityResponse_id :: Lens.Lens' ActivityResponse Core.Text
activityResponse_id = Lens.lens (\ActivityResponse' {id} -> id) (\s@ActivityResponse' {} a -> s {id = a} :: ActivityResponse)

-- | The unique identifier for the application that the campaign applies to.
activityResponse_applicationId :: Lens.Lens' ActivityResponse Core.Text
activityResponse_applicationId = Lens.lens (\ActivityResponse' {applicationId} -> applicationId) (\s@ActivityResponse' {} a -> s {applicationId = a} :: ActivityResponse)

instance Core.FromJSON ActivityResponse where
  parseJSON =
    Core.withObject
      "ActivityResponse"
      ( \x ->
          ActivityResponse'
            Core.<$> (x Core..:? "End")
            Core.<*> (x Core..:? "SuccessfulEndpointCount")
            Core.<*> (x Core..:? "Result")
            Core.<*> (x Core..:? "TimezonesCompletedCount")
            Core.<*> (x Core..:? "State")
            Core.<*> (x Core..:? "TimezonesTotalCount")
            Core.<*> (x Core..:? "TreatmentId")
            Core.<*> (x Core..:? "ScheduledStart")
            Core.<*> (x Core..:? "Start")
            Core.<*> (x Core..:? "TotalEndpointCount")
            Core.<*> (x Core..: "CampaignId")
            Core.<*> (x Core..: "Id")
            Core.<*> (x Core..: "ApplicationId")
      )

instance Core.Hashable ActivityResponse

instance Core.NFData ActivityResponse
