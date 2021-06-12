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
-- Module      : Network.AWS.RDS.RemoveRoleFromDBCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates an AWS Identity and Access Management (IAM) role from an
-- Amazon Aurora DB cluster. For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html Authorizing Amazon Aurora MySQL to Access Other AWS Services on Your Behalf>
-- in the /Amazon Aurora User Guide/.
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.RemoveRoleFromDBCluster
  ( -- * Creating a Request
    RemoveRoleFromDBCluster (..),
    newRemoveRoleFromDBCluster,

    -- * Request Lenses
    removeRoleFromDBCluster_featureName,
    removeRoleFromDBCluster_dbClusterIdentifier,
    removeRoleFromDBCluster_roleArn,

    -- * Destructuring the Response
    RemoveRoleFromDBClusterResponse (..),
    newRemoveRoleFromDBClusterResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRemoveRoleFromDBCluster' smart constructor.
data RemoveRoleFromDBCluster = RemoveRoleFromDBCluster'
  { -- | The name of the feature for the DB cluster that the IAM role is to be
    -- disassociated from. For the list of supported feature names, see
    -- DBEngineVersion.
    featureName :: Core.Maybe Core.Text,
    -- | The name of the DB cluster to disassociate the IAM role from.
    dbClusterIdentifier :: Core.Text,
    -- | The Amazon Resource Name (ARN) of the IAM role to disassociate from the
    -- Aurora DB cluster, for example
    -- @arn:aws:iam::123456789012:role\/AuroraAccessRole@.
    roleArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RemoveRoleFromDBCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'featureName', 'removeRoleFromDBCluster_featureName' - The name of the feature for the DB cluster that the IAM role is to be
-- disassociated from. For the list of supported feature names, see
-- DBEngineVersion.
--
-- 'dbClusterIdentifier', 'removeRoleFromDBCluster_dbClusterIdentifier' - The name of the DB cluster to disassociate the IAM role from.
--
-- 'roleArn', 'removeRoleFromDBCluster_roleArn' - The Amazon Resource Name (ARN) of the IAM role to disassociate from the
-- Aurora DB cluster, for example
-- @arn:aws:iam::123456789012:role\/AuroraAccessRole@.
newRemoveRoleFromDBCluster ::
  -- | 'dbClusterIdentifier'
  Core.Text ->
  -- | 'roleArn'
  Core.Text ->
  RemoveRoleFromDBCluster
newRemoveRoleFromDBCluster
  pDBClusterIdentifier_
  pRoleArn_ =
    RemoveRoleFromDBCluster'
      { featureName =
          Core.Nothing,
        dbClusterIdentifier = pDBClusterIdentifier_,
        roleArn = pRoleArn_
      }

-- | The name of the feature for the DB cluster that the IAM role is to be
-- disassociated from. For the list of supported feature names, see
-- DBEngineVersion.
removeRoleFromDBCluster_featureName :: Lens.Lens' RemoveRoleFromDBCluster (Core.Maybe Core.Text)
removeRoleFromDBCluster_featureName = Lens.lens (\RemoveRoleFromDBCluster' {featureName} -> featureName) (\s@RemoveRoleFromDBCluster' {} a -> s {featureName = a} :: RemoveRoleFromDBCluster)

-- | The name of the DB cluster to disassociate the IAM role from.
removeRoleFromDBCluster_dbClusterIdentifier :: Lens.Lens' RemoveRoleFromDBCluster Core.Text
removeRoleFromDBCluster_dbClusterIdentifier = Lens.lens (\RemoveRoleFromDBCluster' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@RemoveRoleFromDBCluster' {} a -> s {dbClusterIdentifier = a} :: RemoveRoleFromDBCluster)

-- | The Amazon Resource Name (ARN) of the IAM role to disassociate from the
-- Aurora DB cluster, for example
-- @arn:aws:iam::123456789012:role\/AuroraAccessRole@.
removeRoleFromDBCluster_roleArn :: Lens.Lens' RemoveRoleFromDBCluster Core.Text
removeRoleFromDBCluster_roleArn = Lens.lens (\RemoveRoleFromDBCluster' {roleArn} -> roleArn) (\s@RemoveRoleFromDBCluster' {} a -> s {roleArn = a} :: RemoveRoleFromDBCluster)

instance Core.AWSRequest RemoveRoleFromDBCluster where
  type
    AWSResponse RemoveRoleFromDBCluster =
      RemoveRoleFromDBClusterResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull
      RemoveRoleFromDBClusterResponse'

instance Core.Hashable RemoveRoleFromDBCluster

instance Core.NFData RemoveRoleFromDBCluster

instance Core.ToHeaders RemoveRoleFromDBCluster where
  toHeaders = Core.const Core.mempty

instance Core.ToPath RemoveRoleFromDBCluster where
  toPath = Core.const "/"

instance Core.ToQuery RemoveRoleFromDBCluster where
  toQuery RemoveRoleFromDBCluster' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("RemoveRoleFromDBCluster" :: Core.ByteString),
        "Version" Core.=: ("2014-10-31" :: Core.ByteString),
        "FeatureName" Core.=: featureName,
        "DBClusterIdentifier" Core.=: dbClusterIdentifier,
        "RoleArn" Core.=: roleArn
      ]

-- | /See:/ 'newRemoveRoleFromDBClusterResponse' smart constructor.
data RemoveRoleFromDBClusterResponse = RemoveRoleFromDBClusterResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RemoveRoleFromDBClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRemoveRoleFromDBClusterResponse ::
  RemoveRoleFromDBClusterResponse
newRemoveRoleFromDBClusterResponse =
  RemoveRoleFromDBClusterResponse'

instance Core.NFData RemoveRoleFromDBClusterResponse
