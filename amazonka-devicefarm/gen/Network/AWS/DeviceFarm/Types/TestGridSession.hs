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
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestGridSession where

import qualified Network.AWS.Core as Core
import Network.AWS.DeviceFarm.Types.TestGridSessionStatus
import qualified Network.AWS.Lens as Lens

-- | A TestGridSession is a single instance of a browser launched from the
-- URL provided by a call to CreateTestGridUrl.
--
-- /See:/ 'newTestGridSession' smart constructor.
data TestGridSession = TestGridSession'
  { -- | The state of the session.
    status :: Core.Maybe TestGridSessionStatus,
    -- | The ARN of the session.
    arn :: Core.Maybe Core.Text,
    -- | A JSON object of options and parameters passed to the Selenium
    -- WebDriver.
    seleniumProperties :: Core.Maybe Core.Text,
    -- | The number of billed minutes that were used for this session.
    billingMinutes :: Core.Maybe Core.Double,
    -- | The time the session ended.
    ended :: Core.Maybe Core.POSIX,
    -- | The time that the session was started.
    created :: Core.Maybe Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TestGridSession' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'testGridSession_status' - The state of the session.
--
-- 'arn', 'testGridSession_arn' - The ARN of the session.
--
-- 'seleniumProperties', 'testGridSession_seleniumProperties' - A JSON object of options and parameters passed to the Selenium
-- WebDriver.
--
-- 'billingMinutes', 'testGridSession_billingMinutes' - The number of billed minutes that were used for this session.
--
-- 'ended', 'testGridSession_ended' - The time the session ended.
--
-- 'created', 'testGridSession_created' - The time that the session was started.
newTestGridSession ::
  TestGridSession
newTestGridSession =
  TestGridSession'
    { status = Core.Nothing,
      arn = Core.Nothing,
      seleniumProperties = Core.Nothing,
      billingMinutes = Core.Nothing,
      ended = Core.Nothing,
      created = Core.Nothing
    }

-- | The state of the session.
testGridSession_status :: Lens.Lens' TestGridSession (Core.Maybe TestGridSessionStatus)
testGridSession_status = Lens.lens (\TestGridSession' {status} -> status) (\s@TestGridSession' {} a -> s {status = a} :: TestGridSession)

-- | The ARN of the session.
testGridSession_arn :: Lens.Lens' TestGridSession (Core.Maybe Core.Text)
testGridSession_arn = Lens.lens (\TestGridSession' {arn} -> arn) (\s@TestGridSession' {} a -> s {arn = a} :: TestGridSession)

-- | A JSON object of options and parameters passed to the Selenium
-- WebDriver.
testGridSession_seleniumProperties :: Lens.Lens' TestGridSession (Core.Maybe Core.Text)
testGridSession_seleniumProperties = Lens.lens (\TestGridSession' {seleniumProperties} -> seleniumProperties) (\s@TestGridSession' {} a -> s {seleniumProperties = a} :: TestGridSession)

-- | The number of billed minutes that were used for this session.
testGridSession_billingMinutes :: Lens.Lens' TestGridSession (Core.Maybe Core.Double)
testGridSession_billingMinutes = Lens.lens (\TestGridSession' {billingMinutes} -> billingMinutes) (\s@TestGridSession' {} a -> s {billingMinutes = a} :: TestGridSession)

-- | The time the session ended.
testGridSession_ended :: Lens.Lens' TestGridSession (Core.Maybe Core.UTCTime)
testGridSession_ended = Lens.lens (\TestGridSession' {ended} -> ended) (\s@TestGridSession' {} a -> s {ended = a} :: TestGridSession) Core.. Lens.mapping Core._Time

-- | The time that the session was started.
testGridSession_created :: Lens.Lens' TestGridSession (Core.Maybe Core.UTCTime)
testGridSession_created = Lens.lens (\TestGridSession' {created} -> created) (\s@TestGridSession' {} a -> s {created = a} :: TestGridSession) Core.. Lens.mapping Core._Time

instance Core.FromJSON TestGridSession where
  parseJSON =
    Core.withObject
      "TestGridSession"
      ( \x ->
          TestGridSession'
            Core.<$> (x Core..:? "status")
            Core.<*> (x Core..:? "arn")
            Core.<*> (x Core..:? "seleniumProperties")
            Core.<*> (x Core..:? "billingMinutes")
            Core.<*> (x Core..:? "ended")
            Core.<*> (x Core..:? "created")
      )

instance Core.Hashable TestGridSession

instance Core.NFData TestGridSession
