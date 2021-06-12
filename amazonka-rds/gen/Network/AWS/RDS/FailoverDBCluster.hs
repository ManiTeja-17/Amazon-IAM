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
-- Module      : Network.AWS.RDS.FailoverDBCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Forces a failover for a DB cluster.
--
-- A failover for a DB cluster promotes one of the Aurora Replicas
-- (read-only instances) in the DB cluster to be the primary instance (the
-- cluster writer).
--
-- Amazon Aurora will automatically fail over to an Aurora Replica, if one
-- exists, when the primary instance fails. You can force a failover when
-- you want to simulate a failure of a primary instance for testing.
-- Because each instance in a DB cluster has its own endpoint address, you
-- will need to clean up and re-establish any existing connections that use
-- those endpoint addresses when the failover is complete.
--
-- For more information on Amazon Aurora, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?>
-- in the /Amazon Aurora User Guide./
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.FailoverDBCluster
  ( -- * Creating a Request
    FailoverDBCluster (..),
    newFailoverDBCluster,

    -- * Request Lenses
    failoverDBCluster_targetDBInstanceIdentifier,
    failoverDBCluster_dbClusterIdentifier,

    -- * Destructuring the Response
    FailoverDBClusterResponse (..),
    newFailoverDBClusterResponse,

    -- * Response Lenses
    failoverDBClusterResponse_dbCluster,
    failoverDBClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newFailoverDBCluster' smart constructor.
data FailoverDBCluster = FailoverDBCluster'
  { -- | The name of the instance to promote to the primary instance.
    --
    -- You must specify the instance identifier for an Aurora Replica in the DB
    -- cluster. For example, @mydbcluster-replica1@.
    targetDBInstanceIdentifier :: Core.Maybe Core.Text,
    -- | A DB cluster identifier to force a failover for. This parameter isn\'t
    -- case-sensitive.
    --
    -- Constraints:
    --
    -- -   Must match the identifier of an existing DBCluster.
    dbClusterIdentifier :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'FailoverDBCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetDBInstanceIdentifier', 'failoverDBCluster_targetDBInstanceIdentifier' - The name of the instance to promote to the primary instance.
--
-- You must specify the instance identifier for an Aurora Replica in the DB
-- cluster. For example, @mydbcluster-replica1@.
--
-- 'dbClusterIdentifier', 'failoverDBCluster_dbClusterIdentifier' - A DB cluster identifier to force a failover for. This parameter isn\'t
-- case-sensitive.
--
-- Constraints:
--
-- -   Must match the identifier of an existing DBCluster.
newFailoverDBCluster ::
  -- | 'dbClusterIdentifier'
  Core.Text ->
  FailoverDBCluster
newFailoverDBCluster pDBClusterIdentifier_ =
  FailoverDBCluster'
    { targetDBInstanceIdentifier =
        Core.Nothing,
      dbClusterIdentifier = pDBClusterIdentifier_
    }

-- | The name of the instance to promote to the primary instance.
--
-- You must specify the instance identifier for an Aurora Replica in the DB
-- cluster. For example, @mydbcluster-replica1@.
failoverDBCluster_targetDBInstanceIdentifier :: Lens.Lens' FailoverDBCluster (Core.Maybe Core.Text)
failoverDBCluster_targetDBInstanceIdentifier = Lens.lens (\FailoverDBCluster' {targetDBInstanceIdentifier} -> targetDBInstanceIdentifier) (\s@FailoverDBCluster' {} a -> s {targetDBInstanceIdentifier = a} :: FailoverDBCluster)

-- | A DB cluster identifier to force a failover for. This parameter isn\'t
-- case-sensitive.
--
-- Constraints:
--
-- -   Must match the identifier of an existing DBCluster.
failoverDBCluster_dbClusterIdentifier :: Lens.Lens' FailoverDBCluster Core.Text
failoverDBCluster_dbClusterIdentifier = Lens.lens (\FailoverDBCluster' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@FailoverDBCluster' {} a -> s {dbClusterIdentifier = a} :: FailoverDBCluster)

instance Core.AWSRequest FailoverDBCluster where
  type
    AWSResponse FailoverDBCluster =
      FailoverDBClusterResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "FailoverDBClusterResult"
      ( \s h x ->
          FailoverDBClusterResponse'
            Core.<$> (x Core..@? "DBCluster")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable FailoverDBCluster

instance Core.NFData FailoverDBCluster

instance Core.ToHeaders FailoverDBCluster where
  toHeaders = Core.const Core.mempty

instance Core.ToPath FailoverDBCluster where
  toPath = Core.const "/"

instance Core.ToQuery FailoverDBCluster where
  toQuery FailoverDBCluster' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("FailoverDBCluster" :: Core.ByteString),
        "Version" Core.=: ("2014-10-31" :: Core.ByteString),
        "TargetDBInstanceIdentifier"
          Core.=: targetDBInstanceIdentifier,
        "DBClusterIdentifier" Core.=: dbClusterIdentifier
      ]

-- | /See:/ 'newFailoverDBClusterResponse' smart constructor.
data FailoverDBClusterResponse = FailoverDBClusterResponse'
  { dbCluster :: Core.Maybe DBCluster,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'FailoverDBClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbCluster', 'failoverDBClusterResponse_dbCluster' - Undocumented member.
--
-- 'httpStatus', 'failoverDBClusterResponse_httpStatus' - The response's http status code.
newFailoverDBClusterResponse ::
  -- | 'httpStatus'
  Core.Int ->
  FailoverDBClusterResponse
newFailoverDBClusterResponse pHttpStatus_ =
  FailoverDBClusterResponse'
    { dbCluster =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
failoverDBClusterResponse_dbCluster :: Lens.Lens' FailoverDBClusterResponse (Core.Maybe DBCluster)
failoverDBClusterResponse_dbCluster = Lens.lens (\FailoverDBClusterResponse' {dbCluster} -> dbCluster) (\s@FailoverDBClusterResponse' {} a -> s {dbCluster = a} :: FailoverDBClusterResponse)

-- | The response's http status code.
failoverDBClusterResponse_httpStatus :: Lens.Lens' FailoverDBClusterResponse Core.Int
failoverDBClusterResponse_httpStatus = Lens.lens (\FailoverDBClusterResponse' {httpStatus} -> httpStatus) (\s@FailoverDBClusterResponse' {} a -> s {httpStatus = a} :: FailoverDBClusterResponse)

instance Core.NFData FailoverDBClusterResponse
