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
-- Module      : Network.AWS.IoTAnalytics.Types.DatastoreSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatastoreSummary where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types.DatastoreStatus
import Network.AWS.IoTAnalytics.Types.DatastoreStorageSummary
import Network.AWS.IoTAnalytics.Types.FileFormatType
import qualified Network.AWS.Lens as Lens

-- | A summary of information about a data store.
--
-- /See:/ 'newDatastoreSummary' smart constructor.
data DatastoreSummary = DatastoreSummary'
  { -- | The last time when a new message arrived in the data store.
    --
    -- AWS IoT Analytics updates this value at most once per minute for one
    -- data store. Hence, the @lastMessageArrivalTime@ value is an
    -- approximation.
    --
    -- This feature only applies to messages that arrived in the data store
    -- after October 23, 2020.
    lastMessageArrivalTime :: Core.Maybe Core.POSIX,
    -- | The status of the data store.
    status :: Core.Maybe DatastoreStatus,
    -- | When the data store was created.
    creationTime :: Core.Maybe Core.POSIX,
    -- | Where data store data is stored.
    datastoreStorage :: Core.Maybe DatastoreStorageSummary,
    -- | The last time the data store was updated.
    lastUpdateTime :: Core.Maybe Core.POSIX,
    -- | The file format of the data in the data store.
    fileFormatType :: Core.Maybe FileFormatType,
    -- | The name of the data store.
    datastoreName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DatastoreSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastMessageArrivalTime', 'datastoreSummary_lastMessageArrivalTime' - The last time when a new message arrived in the data store.
--
-- AWS IoT Analytics updates this value at most once per minute for one
-- data store. Hence, the @lastMessageArrivalTime@ value is an
-- approximation.
--
-- This feature only applies to messages that arrived in the data store
-- after October 23, 2020.
--
-- 'status', 'datastoreSummary_status' - The status of the data store.
--
-- 'creationTime', 'datastoreSummary_creationTime' - When the data store was created.
--
-- 'datastoreStorage', 'datastoreSummary_datastoreStorage' - Where data store data is stored.
--
-- 'lastUpdateTime', 'datastoreSummary_lastUpdateTime' - The last time the data store was updated.
--
-- 'fileFormatType', 'datastoreSummary_fileFormatType' - The file format of the data in the data store.
--
-- 'datastoreName', 'datastoreSummary_datastoreName' - The name of the data store.
newDatastoreSummary ::
  DatastoreSummary
newDatastoreSummary =
  DatastoreSummary'
    { lastMessageArrivalTime =
        Core.Nothing,
      status = Core.Nothing,
      creationTime = Core.Nothing,
      datastoreStorage = Core.Nothing,
      lastUpdateTime = Core.Nothing,
      fileFormatType = Core.Nothing,
      datastoreName = Core.Nothing
    }

-- | The last time when a new message arrived in the data store.
--
-- AWS IoT Analytics updates this value at most once per minute for one
-- data store. Hence, the @lastMessageArrivalTime@ value is an
-- approximation.
--
-- This feature only applies to messages that arrived in the data store
-- after October 23, 2020.
datastoreSummary_lastMessageArrivalTime :: Lens.Lens' DatastoreSummary (Core.Maybe Core.UTCTime)
datastoreSummary_lastMessageArrivalTime = Lens.lens (\DatastoreSummary' {lastMessageArrivalTime} -> lastMessageArrivalTime) (\s@DatastoreSummary' {} a -> s {lastMessageArrivalTime = a} :: DatastoreSummary) Core.. Lens.mapping Core._Time

-- | The status of the data store.
datastoreSummary_status :: Lens.Lens' DatastoreSummary (Core.Maybe DatastoreStatus)
datastoreSummary_status = Lens.lens (\DatastoreSummary' {status} -> status) (\s@DatastoreSummary' {} a -> s {status = a} :: DatastoreSummary)

-- | When the data store was created.
datastoreSummary_creationTime :: Lens.Lens' DatastoreSummary (Core.Maybe Core.UTCTime)
datastoreSummary_creationTime = Lens.lens (\DatastoreSummary' {creationTime} -> creationTime) (\s@DatastoreSummary' {} a -> s {creationTime = a} :: DatastoreSummary) Core.. Lens.mapping Core._Time

-- | Where data store data is stored.
datastoreSummary_datastoreStorage :: Lens.Lens' DatastoreSummary (Core.Maybe DatastoreStorageSummary)
datastoreSummary_datastoreStorage = Lens.lens (\DatastoreSummary' {datastoreStorage} -> datastoreStorage) (\s@DatastoreSummary' {} a -> s {datastoreStorage = a} :: DatastoreSummary)

-- | The last time the data store was updated.
datastoreSummary_lastUpdateTime :: Lens.Lens' DatastoreSummary (Core.Maybe Core.UTCTime)
datastoreSummary_lastUpdateTime = Lens.lens (\DatastoreSummary' {lastUpdateTime} -> lastUpdateTime) (\s@DatastoreSummary' {} a -> s {lastUpdateTime = a} :: DatastoreSummary) Core.. Lens.mapping Core._Time

-- | The file format of the data in the data store.
datastoreSummary_fileFormatType :: Lens.Lens' DatastoreSummary (Core.Maybe FileFormatType)
datastoreSummary_fileFormatType = Lens.lens (\DatastoreSummary' {fileFormatType} -> fileFormatType) (\s@DatastoreSummary' {} a -> s {fileFormatType = a} :: DatastoreSummary)

-- | The name of the data store.
datastoreSummary_datastoreName :: Lens.Lens' DatastoreSummary (Core.Maybe Core.Text)
datastoreSummary_datastoreName = Lens.lens (\DatastoreSummary' {datastoreName} -> datastoreName) (\s@DatastoreSummary' {} a -> s {datastoreName = a} :: DatastoreSummary)

instance Core.FromJSON DatastoreSummary where
  parseJSON =
    Core.withObject
      "DatastoreSummary"
      ( \x ->
          DatastoreSummary'
            Core.<$> (x Core..:? "lastMessageArrivalTime")
            Core.<*> (x Core..:? "status")
            Core.<*> (x Core..:? "creationTime")
            Core.<*> (x Core..:? "datastoreStorage")
            Core.<*> (x Core..:? "lastUpdateTime")
            Core.<*> (x Core..:? "fileFormatType")
            Core.<*> (x Core..:? "datastoreName")
      )

instance Core.Hashable DatastoreSummary

instance Core.NFData DatastoreSummary
