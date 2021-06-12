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
-- Module      : Network.AWS.RDS.DeleteGlobalCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a global database cluster. The primary and secondary clusters
-- must already be detached or destroyed first.
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.DeleteGlobalCluster
  ( -- * Creating a Request
    DeleteGlobalCluster (..),
    newDeleteGlobalCluster,

    -- * Request Lenses
    deleteGlobalCluster_globalClusterIdentifier,

    -- * Destructuring the Response
    DeleteGlobalClusterResponse (..),
    newDeleteGlobalClusterResponse,

    -- * Response Lenses
    deleteGlobalClusterResponse_globalCluster,
    deleteGlobalClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteGlobalCluster' smart constructor.
data DeleteGlobalCluster = DeleteGlobalCluster'
  { -- | The cluster identifier of the global database cluster being deleted.
    globalClusterIdentifier :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteGlobalCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'globalClusterIdentifier', 'deleteGlobalCluster_globalClusterIdentifier' - The cluster identifier of the global database cluster being deleted.
newDeleteGlobalCluster ::
  -- | 'globalClusterIdentifier'
  Core.Text ->
  DeleteGlobalCluster
newDeleteGlobalCluster pGlobalClusterIdentifier_ =
  DeleteGlobalCluster'
    { globalClusterIdentifier =
        pGlobalClusterIdentifier_
    }

-- | The cluster identifier of the global database cluster being deleted.
deleteGlobalCluster_globalClusterIdentifier :: Lens.Lens' DeleteGlobalCluster Core.Text
deleteGlobalCluster_globalClusterIdentifier = Lens.lens (\DeleteGlobalCluster' {globalClusterIdentifier} -> globalClusterIdentifier) (\s@DeleteGlobalCluster' {} a -> s {globalClusterIdentifier = a} :: DeleteGlobalCluster)

instance Core.AWSRequest DeleteGlobalCluster where
  type
    AWSResponse DeleteGlobalCluster =
      DeleteGlobalClusterResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteGlobalClusterResult"
      ( \s h x ->
          DeleteGlobalClusterResponse'
            Core.<$> (x Core..@? "GlobalCluster")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteGlobalCluster

instance Core.NFData DeleteGlobalCluster

instance Core.ToHeaders DeleteGlobalCluster where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeleteGlobalCluster where
  toPath = Core.const "/"

instance Core.ToQuery DeleteGlobalCluster where
  toQuery DeleteGlobalCluster' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DeleteGlobalCluster" :: Core.ByteString),
        "Version" Core.=: ("2014-10-31" :: Core.ByteString),
        "GlobalClusterIdentifier"
          Core.=: globalClusterIdentifier
      ]

-- | /See:/ 'newDeleteGlobalClusterResponse' smart constructor.
data DeleteGlobalClusterResponse = DeleteGlobalClusterResponse'
  { globalCluster :: Core.Maybe GlobalCluster,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteGlobalClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'globalCluster', 'deleteGlobalClusterResponse_globalCluster' - Undocumented member.
--
-- 'httpStatus', 'deleteGlobalClusterResponse_httpStatus' - The response's http status code.
newDeleteGlobalClusterResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteGlobalClusterResponse
newDeleteGlobalClusterResponse pHttpStatus_ =
  DeleteGlobalClusterResponse'
    { globalCluster =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
deleteGlobalClusterResponse_globalCluster :: Lens.Lens' DeleteGlobalClusterResponse (Core.Maybe GlobalCluster)
deleteGlobalClusterResponse_globalCluster = Lens.lens (\DeleteGlobalClusterResponse' {globalCluster} -> globalCluster) (\s@DeleteGlobalClusterResponse' {} a -> s {globalCluster = a} :: DeleteGlobalClusterResponse)

-- | The response's http status code.
deleteGlobalClusterResponse_httpStatus :: Lens.Lens' DeleteGlobalClusterResponse Core.Int
deleteGlobalClusterResponse_httpStatus = Lens.lens (\DeleteGlobalClusterResponse' {httpStatus} -> httpStatus) (\s@DeleteGlobalClusterResponse' {} a -> s {httpStatus = a} :: DeleteGlobalClusterResponse)

instance Core.NFData DeleteGlobalClusterResponse
