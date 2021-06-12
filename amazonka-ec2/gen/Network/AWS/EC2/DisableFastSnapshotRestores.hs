{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DisableFastSnapshotRestores
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables fast snapshot restores for the specified snapshots in the
-- specified Availability Zones.
module Network.AWS.EC2.DisableFastSnapshotRestores
  ( -- * Creating a Request
    DisableFastSnapshotRestores (..),
    newDisableFastSnapshotRestores,

    -- * Request Lenses
    disableFastSnapshotRestores_dryRun,
    disableFastSnapshotRestores_availabilityZones,
    disableFastSnapshotRestores_sourceSnapshotIds,

    -- * Destructuring the Response
    DisableFastSnapshotRestoresResponse (..),
    newDisableFastSnapshotRestoresResponse,

    -- * Response Lenses
    disableFastSnapshotRestoresResponse_unsuccessful,
    disableFastSnapshotRestoresResponse_successful,
    disableFastSnapshotRestoresResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisableFastSnapshotRestores' smart constructor.
data DisableFastSnapshotRestores = DisableFastSnapshotRestores'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Core.Maybe Core.Bool,
    -- | One or more Availability Zones. For example, @us-east-2a@.
    availabilityZones :: [Core.Text],
    -- | The IDs of one or more snapshots. For example, @snap-1234567890abcdef0@.
    sourceSnapshotIds :: [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisableFastSnapshotRestores' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'disableFastSnapshotRestores_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'availabilityZones', 'disableFastSnapshotRestores_availabilityZones' - One or more Availability Zones. For example, @us-east-2a@.
--
-- 'sourceSnapshotIds', 'disableFastSnapshotRestores_sourceSnapshotIds' - The IDs of one or more snapshots. For example, @snap-1234567890abcdef0@.
newDisableFastSnapshotRestores ::
  DisableFastSnapshotRestores
newDisableFastSnapshotRestores =
  DisableFastSnapshotRestores'
    { dryRun = Core.Nothing,
      availabilityZones = Core.mempty,
      sourceSnapshotIds = Core.mempty
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
disableFastSnapshotRestores_dryRun :: Lens.Lens' DisableFastSnapshotRestores (Core.Maybe Core.Bool)
disableFastSnapshotRestores_dryRun = Lens.lens (\DisableFastSnapshotRestores' {dryRun} -> dryRun) (\s@DisableFastSnapshotRestores' {} a -> s {dryRun = a} :: DisableFastSnapshotRestores)

-- | One or more Availability Zones. For example, @us-east-2a@.
disableFastSnapshotRestores_availabilityZones :: Lens.Lens' DisableFastSnapshotRestores [Core.Text]
disableFastSnapshotRestores_availabilityZones = Lens.lens (\DisableFastSnapshotRestores' {availabilityZones} -> availabilityZones) (\s@DisableFastSnapshotRestores' {} a -> s {availabilityZones = a} :: DisableFastSnapshotRestores) Core.. Lens._Coerce

-- | The IDs of one or more snapshots. For example, @snap-1234567890abcdef0@.
disableFastSnapshotRestores_sourceSnapshotIds :: Lens.Lens' DisableFastSnapshotRestores [Core.Text]
disableFastSnapshotRestores_sourceSnapshotIds = Lens.lens (\DisableFastSnapshotRestores' {sourceSnapshotIds} -> sourceSnapshotIds) (\s@DisableFastSnapshotRestores' {} a -> s {sourceSnapshotIds = a} :: DisableFastSnapshotRestores) Core.. Lens._Coerce

instance Core.AWSRequest DisableFastSnapshotRestores where
  type
    AWSResponse DisableFastSnapshotRestores =
      DisableFastSnapshotRestoresResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DisableFastSnapshotRestoresResponse'
            Core.<$> ( x Core..@? "unsuccessful" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "item")
                     )
            Core.<*> ( x Core..@? "successful" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "item")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DisableFastSnapshotRestores

instance Core.NFData DisableFastSnapshotRestores

instance Core.ToHeaders DisableFastSnapshotRestores where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DisableFastSnapshotRestores where
  toPath = Core.const "/"

instance Core.ToQuery DisableFastSnapshotRestores where
  toQuery DisableFastSnapshotRestores' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DisableFastSnapshotRestores" :: Core.ByteString),
        "Version" Core.=: ("2016-11-15" :: Core.ByteString),
        "DryRun" Core.=: dryRun,
        Core.toQueryList
          "AvailabilityZone"
          availabilityZones,
        Core.toQueryList
          "SourceSnapshotId"
          sourceSnapshotIds
      ]

-- | /See:/ 'newDisableFastSnapshotRestoresResponse' smart constructor.
data DisableFastSnapshotRestoresResponse = DisableFastSnapshotRestoresResponse'
  { -- | Information about the snapshots for which fast snapshot restores could
    -- not be disabled.
    unsuccessful :: Core.Maybe [DisableFastSnapshotRestoreErrorItem],
    -- | Information about the snapshots for which fast snapshot restores were
    -- successfully disabled.
    successful :: Core.Maybe [DisableFastSnapshotRestoreSuccessItem],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisableFastSnapshotRestoresResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unsuccessful', 'disableFastSnapshotRestoresResponse_unsuccessful' - Information about the snapshots for which fast snapshot restores could
-- not be disabled.
--
-- 'successful', 'disableFastSnapshotRestoresResponse_successful' - Information about the snapshots for which fast snapshot restores were
-- successfully disabled.
--
-- 'httpStatus', 'disableFastSnapshotRestoresResponse_httpStatus' - The response's http status code.
newDisableFastSnapshotRestoresResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DisableFastSnapshotRestoresResponse
newDisableFastSnapshotRestoresResponse pHttpStatus_ =
  DisableFastSnapshotRestoresResponse'
    { unsuccessful =
        Core.Nothing,
      successful = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the snapshots for which fast snapshot restores could
-- not be disabled.
disableFastSnapshotRestoresResponse_unsuccessful :: Lens.Lens' DisableFastSnapshotRestoresResponse (Core.Maybe [DisableFastSnapshotRestoreErrorItem])
disableFastSnapshotRestoresResponse_unsuccessful = Lens.lens (\DisableFastSnapshotRestoresResponse' {unsuccessful} -> unsuccessful) (\s@DisableFastSnapshotRestoresResponse' {} a -> s {unsuccessful = a} :: DisableFastSnapshotRestoresResponse) Core.. Lens.mapping Lens._Coerce

-- | Information about the snapshots for which fast snapshot restores were
-- successfully disabled.
disableFastSnapshotRestoresResponse_successful :: Lens.Lens' DisableFastSnapshotRestoresResponse (Core.Maybe [DisableFastSnapshotRestoreSuccessItem])
disableFastSnapshotRestoresResponse_successful = Lens.lens (\DisableFastSnapshotRestoresResponse' {successful} -> successful) (\s@DisableFastSnapshotRestoresResponse' {} a -> s {successful = a} :: DisableFastSnapshotRestoresResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
disableFastSnapshotRestoresResponse_httpStatus :: Lens.Lens' DisableFastSnapshotRestoresResponse Core.Int
disableFastSnapshotRestoresResponse_httpStatus = Lens.lens (\DisableFastSnapshotRestoresResponse' {httpStatus} -> httpStatus) (\s@DisableFastSnapshotRestoresResponse' {} a -> s {httpStatus = a} :: DisableFastSnapshotRestoresResponse)

instance
  Core.NFData
    DisableFastSnapshotRestoresResponse
