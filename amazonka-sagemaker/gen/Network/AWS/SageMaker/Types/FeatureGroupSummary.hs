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
-- Module      : Network.AWS.SageMaker.Types.FeatureGroupSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureGroupSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SageMaker.Types.FeatureGroupStatus
import Network.AWS.SageMaker.Types.OfflineStoreStatus

-- | The name, Arn, @CreationTime@, @FeatureGroup@ values, @LastUpdatedTime@
-- and @EnableOnlineStorage@ status of a @FeatureGroup@.
--
-- /See:/ 'newFeatureGroupSummary' smart constructor.
data FeatureGroupSummary = FeatureGroupSummary'
  { -- | The status of a FeatureGroup. The status can be any of the following:
    -- @Creating@, @Created@, @CreateFail@, @Deleting@ or @DetailFail@.
    featureGroupStatus :: Core.Maybe FeatureGroupStatus,
    -- | Notifies you if replicating data into the @OfflineStore@ has failed.
    -- Returns either: @Active@ or @Blocked@.
    offlineStoreStatus :: Core.Maybe OfflineStoreStatus,
    -- | The name of @FeatureGroup@.
    featureGroupName :: Core.Text,
    -- | Unique identifier for the @FeatureGroup@.
    featureGroupArn :: Core.Text,
    -- | A timestamp indicating the time of creation time of the @FeatureGroup@.
    creationTime :: Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'FeatureGroupSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'featureGroupStatus', 'featureGroupSummary_featureGroupStatus' - The status of a FeatureGroup. The status can be any of the following:
-- @Creating@, @Created@, @CreateFail@, @Deleting@ or @DetailFail@.
--
-- 'offlineStoreStatus', 'featureGroupSummary_offlineStoreStatus' - Notifies you if replicating data into the @OfflineStore@ has failed.
-- Returns either: @Active@ or @Blocked@.
--
-- 'featureGroupName', 'featureGroupSummary_featureGroupName' - The name of @FeatureGroup@.
--
-- 'featureGroupArn', 'featureGroupSummary_featureGroupArn' - Unique identifier for the @FeatureGroup@.
--
-- 'creationTime', 'featureGroupSummary_creationTime' - A timestamp indicating the time of creation time of the @FeatureGroup@.
newFeatureGroupSummary ::
  -- | 'featureGroupName'
  Core.Text ->
  -- | 'featureGroupArn'
  Core.Text ->
  -- | 'creationTime'
  Core.UTCTime ->
  FeatureGroupSummary
newFeatureGroupSummary
  pFeatureGroupName_
  pFeatureGroupArn_
  pCreationTime_ =
    FeatureGroupSummary'
      { featureGroupStatus =
          Core.Nothing,
        offlineStoreStatus = Core.Nothing,
        featureGroupName = pFeatureGroupName_,
        featureGroupArn = pFeatureGroupArn_,
        creationTime = Core._Time Lens.# pCreationTime_
      }

-- | The status of a FeatureGroup. The status can be any of the following:
-- @Creating@, @Created@, @CreateFail@, @Deleting@ or @DetailFail@.
featureGroupSummary_featureGroupStatus :: Lens.Lens' FeatureGroupSummary (Core.Maybe FeatureGroupStatus)
featureGroupSummary_featureGroupStatus = Lens.lens (\FeatureGroupSummary' {featureGroupStatus} -> featureGroupStatus) (\s@FeatureGroupSummary' {} a -> s {featureGroupStatus = a} :: FeatureGroupSummary)

-- | Notifies you if replicating data into the @OfflineStore@ has failed.
-- Returns either: @Active@ or @Blocked@.
featureGroupSummary_offlineStoreStatus :: Lens.Lens' FeatureGroupSummary (Core.Maybe OfflineStoreStatus)
featureGroupSummary_offlineStoreStatus = Lens.lens (\FeatureGroupSummary' {offlineStoreStatus} -> offlineStoreStatus) (\s@FeatureGroupSummary' {} a -> s {offlineStoreStatus = a} :: FeatureGroupSummary)

-- | The name of @FeatureGroup@.
featureGroupSummary_featureGroupName :: Lens.Lens' FeatureGroupSummary Core.Text
featureGroupSummary_featureGroupName = Lens.lens (\FeatureGroupSummary' {featureGroupName} -> featureGroupName) (\s@FeatureGroupSummary' {} a -> s {featureGroupName = a} :: FeatureGroupSummary)

-- | Unique identifier for the @FeatureGroup@.
featureGroupSummary_featureGroupArn :: Lens.Lens' FeatureGroupSummary Core.Text
featureGroupSummary_featureGroupArn = Lens.lens (\FeatureGroupSummary' {featureGroupArn} -> featureGroupArn) (\s@FeatureGroupSummary' {} a -> s {featureGroupArn = a} :: FeatureGroupSummary)

-- | A timestamp indicating the time of creation time of the @FeatureGroup@.
featureGroupSummary_creationTime :: Lens.Lens' FeatureGroupSummary Core.UTCTime
featureGroupSummary_creationTime = Lens.lens (\FeatureGroupSummary' {creationTime} -> creationTime) (\s@FeatureGroupSummary' {} a -> s {creationTime = a} :: FeatureGroupSummary) Core.. Core._Time

instance Core.FromJSON FeatureGroupSummary where
  parseJSON =
    Core.withObject
      "FeatureGroupSummary"
      ( \x ->
          FeatureGroupSummary'
            Core.<$> (x Core..:? "FeatureGroupStatus")
            Core.<*> (x Core..:? "OfflineStoreStatus")
            Core.<*> (x Core..: "FeatureGroupName")
            Core.<*> (x Core..: "FeatureGroupArn")
            Core.<*> (x Core..: "CreationTime")
      )

instance Core.Hashable FeatureGroupSummary

instance Core.NFData FeatureGroupSummary
