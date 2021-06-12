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
-- Module      : Network.AWS.EC2.DeleteFlowLogs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more flow logs.
module Network.AWS.EC2.DeleteFlowLogs
  ( -- * Creating a Request
    DeleteFlowLogs (..),
    newDeleteFlowLogs,

    -- * Request Lenses
    deleteFlowLogs_dryRun,
    deleteFlowLogs_flowLogIds,

    -- * Destructuring the Response
    DeleteFlowLogsResponse (..),
    newDeleteFlowLogsResponse,

    -- * Response Lenses
    deleteFlowLogsResponse_unsuccessful,
    deleteFlowLogsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteFlowLogs' smart constructor.
data DeleteFlowLogs = DeleteFlowLogs'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Core.Maybe Core.Bool,
    -- | One or more flow log IDs.
    --
    -- Constraint: Maximum of 1000 flow log IDs.
    flowLogIds :: [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteFlowLogs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'deleteFlowLogs_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'flowLogIds', 'deleteFlowLogs_flowLogIds' - One or more flow log IDs.
--
-- Constraint: Maximum of 1000 flow log IDs.
newDeleteFlowLogs ::
  DeleteFlowLogs
newDeleteFlowLogs =
  DeleteFlowLogs'
    { dryRun = Core.Nothing,
      flowLogIds = Core.mempty
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
deleteFlowLogs_dryRun :: Lens.Lens' DeleteFlowLogs (Core.Maybe Core.Bool)
deleteFlowLogs_dryRun = Lens.lens (\DeleteFlowLogs' {dryRun} -> dryRun) (\s@DeleteFlowLogs' {} a -> s {dryRun = a} :: DeleteFlowLogs)

-- | One or more flow log IDs.
--
-- Constraint: Maximum of 1000 flow log IDs.
deleteFlowLogs_flowLogIds :: Lens.Lens' DeleteFlowLogs [Core.Text]
deleteFlowLogs_flowLogIds = Lens.lens (\DeleteFlowLogs' {flowLogIds} -> flowLogIds) (\s@DeleteFlowLogs' {} a -> s {flowLogIds = a} :: DeleteFlowLogs) Core.. Lens._Coerce

instance Core.AWSRequest DeleteFlowLogs where
  type
    AWSResponse DeleteFlowLogs =
      DeleteFlowLogsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DeleteFlowLogsResponse'
            Core.<$> ( x Core..@? "unsuccessful" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "item")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteFlowLogs

instance Core.NFData DeleteFlowLogs

instance Core.ToHeaders DeleteFlowLogs where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeleteFlowLogs where
  toPath = Core.const "/"

instance Core.ToQuery DeleteFlowLogs where
  toQuery DeleteFlowLogs' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DeleteFlowLogs" :: Core.ByteString),
        "Version" Core.=: ("2016-11-15" :: Core.ByteString),
        "DryRun" Core.=: dryRun,
        Core.toQueryList "FlowLogId" flowLogIds
      ]

-- | /See:/ 'newDeleteFlowLogsResponse' smart constructor.
data DeleteFlowLogsResponse = DeleteFlowLogsResponse'
  { -- | Information about the flow logs that could not be deleted successfully.
    unsuccessful :: Core.Maybe [UnsuccessfulItem],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteFlowLogsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unsuccessful', 'deleteFlowLogsResponse_unsuccessful' - Information about the flow logs that could not be deleted successfully.
--
-- 'httpStatus', 'deleteFlowLogsResponse_httpStatus' - The response's http status code.
newDeleteFlowLogsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteFlowLogsResponse
newDeleteFlowLogsResponse pHttpStatus_ =
  DeleteFlowLogsResponse'
    { unsuccessful =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the flow logs that could not be deleted successfully.
deleteFlowLogsResponse_unsuccessful :: Lens.Lens' DeleteFlowLogsResponse (Core.Maybe [UnsuccessfulItem])
deleteFlowLogsResponse_unsuccessful = Lens.lens (\DeleteFlowLogsResponse' {unsuccessful} -> unsuccessful) (\s@DeleteFlowLogsResponse' {} a -> s {unsuccessful = a} :: DeleteFlowLogsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
deleteFlowLogsResponse_httpStatus :: Lens.Lens' DeleteFlowLogsResponse Core.Int
deleteFlowLogsResponse_httpStatus = Lens.lens (\DeleteFlowLogsResponse' {httpStatus} -> httpStatus) (\s@DeleteFlowLogsResponse' {} a -> s {httpStatus = a} :: DeleteFlowLogsResponse)

instance Core.NFData DeleteFlowLogsResponse
