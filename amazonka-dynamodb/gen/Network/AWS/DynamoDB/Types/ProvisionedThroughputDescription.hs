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
-- Module      : Network.AWS.DynamoDB.Types.ProvisionedThroughputDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ProvisionedThroughputDescription where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Represents the provisioned throughput settings for the table, consisting
-- of read and write capacity units, along with data about increases and
-- decreases.
--
-- /See:/ 'newProvisionedThroughputDescription' smart constructor.
data ProvisionedThroughputDescription = ProvisionedThroughputDescription'
  { -- | The date and time of the last provisioned throughput decrease for this
    -- table.
    lastDecreaseDateTime :: Core.Maybe Core.POSIX,
    -- | The date and time of the last provisioned throughput increase for this
    -- table.
    lastIncreaseDateTime :: Core.Maybe Core.POSIX,
    -- | The maximum number of writes consumed per second before DynamoDB returns
    -- a @ThrottlingException@.
    writeCapacityUnits :: Core.Maybe Core.Natural,
    -- | The number of provisioned throughput decreases for this table during
    -- this UTC calendar day. For current maximums on provisioned throughput
    -- decreases, see
    -- <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html Service, Account, and Table Quotas>
    -- in the /Amazon DynamoDB Developer Guide/.
    numberOfDecreasesToday :: Core.Maybe Core.Natural,
    -- | The maximum number of strongly consistent reads consumed per second
    -- before DynamoDB returns a @ThrottlingException@. Eventually consistent
    -- reads require less effort than strongly consistent reads, so a setting
    -- of 50 @ReadCapacityUnits@ per second provides 100 eventually consistent
    -- @ReadCapacityUnits@ per second.
    readCapacityUnits :: Core.Maybe Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ProvisionedThroughputDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastDecreaseDateTime', 'provisionedThroughputDescription_lastDecreaseDateTime' - The date and time of the last provisioned throughput decrease for this
-- table.
--
-- 'lastIncreaseDateTime', 'provisionedThroughputDescription_lastIncreaseDateTime' - The date and time of the last provisioned throughput increase for this
-- table.
--
-- 'writeCapacityUnits', 'provisionedThroughputDescription_writeCapacityUnits' - The maximum number of writes consumed per second before DynamoDB returns
-- a @ThrottlingException@.
--
-- 'numberOfDecreasesToday', 'provisionedThroughputDescription_numberOfDecreasesToday' - The number of provisioned throughput decreases for this table during
-- this UTC calendar day. For current maximums on provisioned throughput
-- decreases, see
-- <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html Service, Account, and Table Quotas>
-- in the /Amazon DynamoDB Developer Guide/.
--
-- 'readCapacityUnits', 'provisionedThroughputDescription_readCapacityUnits' - The maximum number of strongly consistent reads consumed per second
-- before DynamoDB returns a @ThrottlingException@. Eventually consistent
-- reads require less effort than strongly consistent reads, so a setting
-- of 50 @ReadCapacityUnits@ per second provides 100 eventually consistent
-- @ReadCapacityUnits@ per second.
newProvisionedThroughputDescription ::
  ProvisionedThroughputDescription
newProvisionedThroughputDescription =
  ProvisionedThroughputDescription'
    { lastDecreaseDateTime =
        Core.Nothing,
      lastIncreaseDateTime = Core.Nothing,
      writeCapacityUnits = Core.Nothing,
      numberOfDecreasesToday = Core.Nothing,
      readCapacityUnits = Core.Nothing
    }

-- | The date and time of the last provisioned throughput decrease for this
-- table.
provisionedThroughputDescription_lastDecreaseDateTime :: Lens.Lens' ProvisionedThroughputDescription (Core.Maybe Core.UTCTime)
provisionedThroughputDescription_lastDecreaseDateTime = Lens.lens (\ProvisionedThroughputDescription' {lastDecreaseDateTime} -> lastDecreaseDateTime) (\s@ProvisionedThroughputDescription' {} a -> s {lastDecreaseDateTime = a} :: ProvisionedThroughputDescription) Core.. Lens.mapping Core._Time

-- | The date and time of the last provisioned throughput increase for this
-- table.
provisionedThroughputDescription_lastIncreaseDateTime :: Lens.Lens' ProvisionedThroughputDescription (Core.Maybe Core.UTCTime)
provisionedThroughputDescription_lastIncreaseDateTime = Lens.lens (\ProvisionedThroughputDescription' {lastIncreaseDateTime} -> lastIncreaseDateTime) (\s@ProvisionedThroughputDescription' {} a -> s {lastIncreaseDateTime = a} :: ProvisionedThroughputDescription) Core.. Lens.mapping Core._Time

-- | The maximum number of writes consumed per second before DynamoDB returns
-- a @ThrottlingException@.
provisionedThroughputDescription_writeCapacityUnits :: Lens.Lens' ProvisionedThroughputDescription (Core.Maybe Core.Natural)
provisionedThroughputDescription_writeCapacityUnits = Lens.lens (\ProvisionedThroughputDescription' {writeCapacityUnits} -> writeCapacityUnits) (\s@ProvisionedThroughputDescription' {} a -> s {writeCapacityUnits = a} :: ProvisionedThroughputDescription)

-- | The number of provisioned throughput decreases for this table during
-- this UTC calendar day. For current maximums on provisioned throughput
-- decreases, see
-- <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html Service, Account, and Table Quotas>
-- in the /Amazon DynamoDB Developer Guide/.
provisionedThroughputDescription_numberOfDecreasesToday :: Lens.Lens' ProvisionedThroughputDescription (Core.Maybe Core.Natural)
provisionedThroughputDescription_numberOfDecreasesToday = Lens.lens (\ProvisionedThroughputDescription' {numberOfDecreasesToday} -> numberOfDecreasesToday) (\s@ProvisionedThroughputDescription' {} a -> s {numberOfDecreasesToday = a} :: ProvisionedThroughputDescription)

-- | The maximum number of strongly consistent reads consumed per second
-- before DynamoDB returns a @ThrottlingException@. Eventually consistent
-- reads require less effort than strongly consistent reads, so a setting
-- of 50 @ReadCapacityUnits@ per second provides 100 eventually consistent
-- @ReadCapacityUnits@ per second.
provisionedThroughputDescription_readCapacityUnits :: Lens.Lens' ProvisionedThroughputDescription (Core.Maybe Core.Natural)
provisionedThroughputDescription_readCapacityUnits = Lens.lens (\ProvisionedThroughputDescription' {readCapacityUnits} -> readCapacityUnits) (\s@ProvisionedThroughputDescription' {} a -> s {readCapacityUnits = a} :: ProvisionedThroughputDescription)

instance
  Core.FromJSON
    ProvisionedThroughputDescription
  where
  parseJSON =
    Core.withObject
      "ProvisionedThroughputDescription"
      ( \x ->
          ProvisionedThroughputDescription'
            Core.<$> (x Core..:? "LastDecreaseDateTime")
            Core.<*> (x Core..:? "LastIncreaseDateTime")
            Core.<*> (x Core..:? "WriteCapacityUnits")
            Core.<*> (x Core..:? "NumberOfDecreasesToday")
            Core.<*> (x Core..:? "ReadCapacityUnits")
      )

instance
  Core.Hashable
    ProvisionedThroughputDescription

instance Core.NFData ProvisionedThroughputDescription
