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
-- Module      : Network.AWS.Config.Types.ConformancePackStatusDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConformancePackStatusDetail where

import Network.AWS.Config.Types.ConformancePackState
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Status details of a conformance pack.
--
-- /See:/ 'newConformancePackStatusDetail' smart constructor.
data ConformancePackStatusDetail = ConformancePackStatusDetail'
  { -- | The reason of conformance pack creation failure.
    conformancePackStatusReason :: Core.Maybe Core.Text,
    -- | Last time when conformation pack creation and update was successful.
    lastUpdateCompletedTime :: Core.Maybe Core.POSIX,
    -- | Name of the conformance pack.
    conformancePackName :: Core.Text,
    -- | ID of the conformance pack.
    conformancePackId :: Core.Text,
    -- | Amazon Resource Name (ARN) of comformance pack.
    conformancePackArn :: Core.Text,
    -- | Indicates deployment status of conformance pack.
    --
    -- AWS Config sets the state of the conformance pack to:
    --
    -- -   CREATE_IN_PROGRESS when a conformance pack creation is in progress
    --     for an account.
    --
    -- -   CREATE_COMPLETE when a conformance pack has been successfully
    --     created in your account.
    --
    -- -   CREATE_FAILED when a conformance pack creation failed in your
    --     account.
    --
    -- -   DELETE_IN_PROGRESS when a conformance pack deletion is in progress.
    --
    -- -   DELETE_FAILED when a conformance pack deletion failed in your
    --     account.
    conformancePackState :: ConformancePackState,
    -- | Amazon Resource Name (ARN) of AWS CloudFormation stack.
    stackArn :: Core.Text,
    -- | Last time when conformation pack creation and update was requested.
    lastUpdateRequestedTime :: Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ConformancePackStatusDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'conformancePackStatusReason', 'conformancePackStatusDetail_conformancePackStatusReason' - The reason of conformance pack creation failure.
--
-- 'lastUpdateCompletedTime', 'conformancePackStatusDetail_lastUpdateCompletedTime' - Last time when conformation pack creation and update was successful.
--
-- 'conformancePackName', 'conformancePackStatusDetail_conformancePackName' - Name of the conformance pack.
--
-- 'conformancePackId', 'conformancePackStatusDetail_conformancePackId' - ID of the conformance pack.
--
-- 'conformancePackArn', 'conformancePackStatusDetail_conformancePackArn' - Amazon Resource Name (ARN) of comformance pack.
--
-- 'conformancePackState', 'conformancePackStatusDetail_conformancePackState' - Indicates deployment status of conformance pack.
--
-- AWS Config sets the state of the conformance pack to:
--
-- -   CREATE_IN_PROGRESS when a conformance pack creation is in progress
--     for an account.
--
-- -   CREATE_COMPLETE when a conformance pack has been successfully
--     created in your account.
--
-- -   CREATE_FAILED when a conformance pack creation failed in your
--     account.
--
-- -   DELETE_IN_PROGRESS when a conformance pack deletion is in progress.
--
-- -   DELETE_FAILED when a conformance pack deletion failed in your
--     account.
--
-- 'stackArn', 'conformancePackStatusDetail_stackArn' - Amazon Resource Name (ARN) of AWS CloudFormation stack.
--
-- 'lastUpdateRequestedTime', 'conformancePackStatusDetail_lastUpdateRequestedTime' - Last time when conformation pack creation and update was requested.
newConformancePackStatusDetail ::
  -- | 'conformancePackName'
  Core.Text ->
  -- | 'conformancePackId'
  Core.Text ->
  -- | 'conformancePackArn'
  Core.Text ->
  -- | 'conformancePackState'
  ConformancePackState ->
  -- | 'stackArn'
  Core.Text ->
  -- | 'lastUpdateRequestedTime'
  Core.UTCTime ->
  ConformancePackStatusDetail
newConformancePackStatusDetail
  pConformancePackName_
  pConformancePackId_
  pConformancePackArn_
  pConformancePackState_
  pStackArn_
  pLastUpdateRequestedTime_ =
    ConformancePackStatusDetail'
      { conformancePackStatusReason =
          Core.Nothing,
        lastUpdateCompletedTime = Core.Nothing,
        conformancePackName = pConformancePackName_,
        conformancePackId = pConformancePackId_,
        conformancePackArn = pConformancePackArn_,
        conformancePackState = pConformancePackState_,
        stackArn = pStackArn_,
        lastUpdateRequestedTime =
          Core._Time Lens.# pLastUpdateRequestedTime_
      }

-- | The reason of conformance pack creation failure.
conformancePackStatusDetail_conformancePackStatusReason :: Lens.Lens' ConformancePackStatusDetail (Core.Maybe Core.Text)
conformancePackStatusDetail_conformancePackStatusReason = Lens.lens (\ConformancePackStatusDetail' {conformancePackStatusReason} -> conformancePackStatusReason) (\s@ConformancePackStatusDetail' {} a -> s {conformancePackStatusReason = a} :: ConformancePackStatusDetail)

-- | Last time when conformation pack creation and update was successful.
conformancePackStatusDetail_lastUpdateCompletedTime :: Lens.Lens' ConformancePackStatusDetail (Core.Maybe Core.UTCTime)
conformancePackStatusDetail_lastUpdateCompletedTime = Lens.lens (\ConformancePackStatusDetail' {lastUpdateCompletedTime} -> lastUpdateCompletedTime) (\s@ConformancePackStatusDetail' {} a -> s {lastUpdateCompletedTime = a} :: ConformancePackStatusDetail) Core.. Lens.mapping Core._Time

-- | Name of the conformance pack.
conformancePackStatusDetail_conformancePackName :: Lens.Lens' ConformancePackStatusDetail Core.Text
conformancePackStatusDetail_conformancePackName = Lens.lens (\ConformancePackStatusDetail' {conformancePackName} -> conformancePackName) (\s@ConformancePackStatusDetail' {} a -> s {conformancePackName = a} :: ConformancePackStatusDetail)

-- | ID of the conformance pack.
conformancePackStatusDetail_conformancePackId :: Lens.Lens' ConformancePackStatusDetail Core.Text
conformancePackStatusDetail_conformancePackId = Lens.lens (\ConformancePackStatusDetail' {conformancePackId} -> conformancePackId) (\s@ConformancePackStatusDetail' {} a -> s {conformancePackId = a} :: ConformancePackStatusDetail)

-- | Amazon Resource Name (ARN) of comformance pack.
conformancePackStatusDetail_conformancePackArn :: Lens.Lens' ConformancePackStatusDetail Core.Text
conformancePackStatusDetail_conformancePackArn = Lens.lens (\ConformancePackStatusDetail' {conformancePackArn} -> conformancePackArn) (\s@ConformancePackStatusDetail' {} a -> s {conformancePackArn = a} :: ConformancePackStatusDetail)

-- | Indicates deployment status of conformance pack.
--
-- AWS Config sets the state of the conformance pack to:
--
-- -   CREATE_IN_PROGRESS when a conformance pack creation is in progress
--     for an account.
--
-- -   CREATE_COMPLETE when a conformance pack has been successfully
--     created in your account.
--
-- -   CREATE_FAILED when a conformance pack creation failed in your
--     account.
--
-- -   DELETE_IN_PROGRESS when a conformance pack deletion is in progress.
--
-- -   DELETE_FAILED when a conformance pack deletion failed in your
--     account.
conformancePackStatusDetail_conformancePackState :: Lens.Lens' ConformancePackStatusDetail ConformancePackState
conformancePackStatusDetail_conformancePackState = Lens.lens (\ConformancePackStatusDetail' {conformancePackState} -> conformancePackState) (\s@ConformancePackStatusDetail' {} a -> s {conformancePackState = a} :: ConformancePackStatusDetail)

-- | Amazon Resource Name (ARN) of AWS CloudFormation stack.
conformancePackStatusDetail_stackArn :: Lens.Lens' ConformancePackStatusDetail Core.Text
conformancePackStatusDetail_stackArn = Lens.lens (\ConformancePackStatusDetail' {stackArn} -> stackArn) (\s@ConformancePackStatusDetail' {} a -> s {stackArn = a} :: ConformancePackStatusDetail)

-- | Last time when conformation pack creation and update was requested.
conformancePackStatusDetail_lastUpdateRequestedTime :: Lens.Lens' ConformancePackStatusDetail Core.UTCTime
conformancePackStatusDetail_lastUpdateRequestedTime = Lens.lens (\ConformancePackStatusDetail' {lastUpdateRequestedTime} -> lastUpdateRequestedTime) (\s@ConformancePackStatusDetail' {} a -> s {lastUpdateRequestedTime = a} :: ConformancePackStatusDetail) Core.. Core._Time

instance Core.FromJSON ConformancePackStatusDetail where
  parseJSON =
    Core.withObject
      "ConformancePackStatusDetail"
      ( \x ->
          ConformancePackStatusDetail'
            Core.<$> (x Core..:? "ConformancePackStatusReason")
            Core.<*> (x Core..:? "LastUpdateCompletedTime")
            Core.<*> (x Core..: "ConformancePackName")
            Core.<*> (x Core..: "ConformancePackId")
            Core.<*> (x Core..: "ConformancePackArn")
            Core.<*> (x Core..: "ConformancePackState")
            Core.<*> (x Core..: "StackArn")
            Core.<*> (x Core..: "LastUpdateRequestedTime")
      )

instance Core.Hashable ConformancePackStatusDetail

instance Core.NFData ConformancePackStatusDetail
