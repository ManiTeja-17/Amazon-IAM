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
-- Module      : Network.AWS.CloudWatchEvents.Types.PartnerEventSourceAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.PartnerEventSourceAccount where

import Network.AWS.CloudWatchEvents.Types.EventSourceState
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The AWS account that a partner event source has been offered to.
--
-- /See:/ 'newPartnerEventSourceAccount' smart constructor.
data PartnerEventSourceAccount = PartnerEventSourceAccount'
  { -- | The date and time the event source was created.
    creationTime :: Core.Maybe Core.POSIX,
    -- | The date and time that the event source will expire, if the AWS account
    -- doesn\'t create a matching event bus for it.
    expirationTime :: Core.Maybe Core.POSIX,
    -- | The state of the event source. If it is ACTIVE, you have already created
    -- a matching event bus for this event source, and that event bus is
    -- active. If it is PENDING, either you haven\'t yet created a matching
    -- event bus, or that event bus is deactivated. If it is DELETED, you have
    -- created a matching event bus, but the event source has since been
    -- deleted.
    state :: Core.Maybe EventSourceState,
    -- | The AWS account ID that the partner event source was offered to.
    account :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PartnerEventSourceAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'partnerEventSourceAccount_creationTime' - The date and time the event source was created.
--
-- 'expirationTime', 'partnerEventSourceAccount_expirationTime' - The date and time that the event source will expire, if the AWS account
-- doesn\'t create a matching event bus for it.
--
-- 'state', 'partnerEventSourceAccount_state' - The state of the event source. If it is ACTIVE, you have already created
-- a matching event bus for this event source, and that event bus is
-- active. If it is PENDING, either you haven\'t yet created a matching
-- event bus, or that event bus is deactivated. If it is DELETED, you have
-- created a matching event bus, but the event source has since been
-- deleted.
--
-- 'account', 'partnerEventSourceAccount_account' - The AWS account ID that the partner event source was offered to.
newPartnerEventSourceAccount ::
  PartnerEventSourceAccount
newPartnerEventSourceAccount =
  PartnerEventSourceAccount'
    { creationTime =
        Core.Nothing,
      expirationTime = Core.Nothing,
      state = Core.Nothing,
      account = Core.Nothing
    }

-- | The date and time the event source was created.
partnerEventSourceAccount_creationTime :: Lens.Lens' PartnerEventSourceAccount (Core.Maybe Core.UTCTime)
partnerEventSourceAccount_creationTime = Lens.lens (\PartnerEventSourceAccount' {creationTime} -> creationTime) (\s@PartnerEventSourceAccount' {} a -> s {creationTime = a} :: PartnerEventSourceAccount) Core.. Lens.mapping Core._Time

-- | The date and time that the event source will expire, if the AWS account
-- doesn\'t create a matching event bus for it.
partnerEventSourceAccount_expirationTime :: Lens.Lens' PartnerEventSourceAccount (Core.Maybe Core.UTCTime)
partnerEventSourceAccount_expirationTime = Lens.lens (\PartnerEventSourceAccount' {expirationTime} -> expirationTime) (\s@PartnerEventSourceAccount' {} a -> s {expirationTime = a} :: PartnerEventSourceAccount) Core.. Lens.mapping Core._Time

-- | The state of the event source. If it is ACTIVE, you have already created
-- a matching event bus for this event source, and that event bus is
-- active. If it is PENDING, either you haven\'t yet created a matching
-- event bus, or that event bus is deactivated. If it is DELETED, you have
-- created a matching event bus, but the event source has since been
-- deleted.
partnerEventSourceAccount_state :: Lens.Lens' PartnerEventSourceAccount (Core.Maybe EventSourceState)
partnerEventSourceAccount_state = Lens.lens (\PartnerEventSourceAccount' {state} -> state) (\s@PartnerEventSourceAccount' {} a -> s {state = a} :: PartnerEventSourceAccount)

-- | The AWS account ID that the partner event source was offered to.
partnerEventSourceAccount_account :: Lens.Lens' PartnerEventSourceAccount (Core.Maybe Core.Text)
partnerEventSourceAccount_account = Lens.lens (\PartnerEventSourceAccount' {account} -> account) (\s@PartnerEventSourceAccount' {} a -> s {account = a} :: PartnerEventSourceAccount)

instance Core.FromJSON PartnerEventSourceAccount where
  parseJSON =
    Core.withObject
      "PartnerEventSourceAccount"
      ( \x ->
          PartnerEventSourceAccount'
            Core.<$> (x Core..:? "CreationTime")
            Core.<*> (x Core..:? "ExpirationTime")
            Core.<*> (x Core..:? "State")
            Core.<*> (x Core..:? "Account")
      )

instance Core.Hashable PartnerEventSourceAccount

instance Core.NFData PartnerEventSourceAccount
