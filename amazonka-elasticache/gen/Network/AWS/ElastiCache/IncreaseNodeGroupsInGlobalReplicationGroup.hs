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
-- Module      : Network.AWS.ElastiCache.IncreaseNodeGroupsInGlobalReplicationGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Increase the number of node groups in the Global Datastore
module Network.AWS.ElastiCache.IncreaseNodeGroupsInGlobalReplicationGroup
  ( -- * Creating a Request
    IncreaseNodeGroupsInGlobalReplicationGroup (..),
    newIncreaseNodeGroupsInGlobalReplicationGroup,

    -- * Request Lenses
    increaseNodeGroupsInGlobalReplicationGroup_regionalConfigurations,
    increaseNodeGroupsInGlobalReplicationGroup_globalReplicationGroupId,
    increaseNodeGroupsInGlobalReplicationGroup_nodeGroupCount,
    increaseNodeGroupsInGlobalReplicationGroup_applyImmediately,

    -- * Destructuring the Response
    IncreaseNodeGroupsInGlobalReplicationGroupResponse (..),
    newIncreaseNodeGroupsInGlobalReplicationGroupResponse,

    -- * Response Lenses
    increaseNodeGroupsInGlobalReplicationGroupResponse_globalReplicationGroup,
    increaseNodeGroupsInGlobalReplicationGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ElastiCache.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newIncreaseNodeGroupsInGlobalReplicationGroup' smart constructor.
data IncreaseNodeGroupsInGlobalReplicationGroup = IncreaseNodeGroupsInGlobalReplicationGroup'
  { -- | Describes the replication group IDs, the AWS regions where they are
    -- stored and the shard configuration for each that comprise the Global
    -- Datastore
    regionalConfigurations :: Core.Maybe [RegionalConfiguration],
    -- | The name of the Global Datastore
    globalReplicationGroupId :: Core.Text,
    -- | The number of node groups you wish to add
    nodeGroupCount :: Core.Int,
    -- | Indicates that the process begins immediately. At present, the only
    -- permitted value for this parameter is true.
    applyImmediately :: Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'IncreaseNodeGroupsInGlobalReplicationGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'regionalConfigurations', 'increaseNodeGroupsInGlobalReplicationGroup_regionalConfigurations' - Describes the replication group IDs, the AWS regions where they are
-- stored and the shard configuration for each that comprise the Global
-- Datastore
--
-- 'globalReplicationGroupId', 'increaseNodeGroupsInGlobalReplicationGroup_globalReplicationGroupId' - The name of the Global Datastore
--
-- 'nodeGroupCount', 'increaseNodeGroupsInGlobalReplicationGroup_nodeGroupCount' - The number of node groups you wish to add
--
-- 'applyImmediately', 'increaseNodeGroupsInGlobalReplicationGroup_applyImmediately' - Indicates that the process begins immediately. At present, the only
-- permitted value for this parameter is true.
newIncreaseNodeGroupsInGlobalReplicationGroup ::
  -- | 'globalReplicationGroupId'
  Core.Text ->
  -- | 'nodeGroupCount'
  Core.Int ->
  -- | 'applyImmediately'
  Core.Bool ->
  IncreaseNodeGroupsInGlobalReplicationGroup
newIncreaseNodeGroupsInGlobalReplicationGroup
  pGlobalReplicationGroupId_
  pNodeGroupCount_
  pApplyImmediately_ =
    IncreaseNodeGroupsInGlobalReplicationGroup'
      { regionalConfigurations =
          Core.Nothing,
        globalReplicationGroupId =
          pGlobalReplicationGroupId_,
        nodeGroupCount =
          pNodeGroupCount_,
        applyImmediately =
          pApplyImmediately_
      }

-- | Describes the replication group IDs, the AWS regions where they are
-- stored and the shard configuration for each that comprise the Global
-- Datastore
increaseNodeGroupsInGlobalReplicationGroup_regionalConfigurations :: Lens.Lens' IncreaseNodeGroupsInGlobalReplicationGroup (Core.Maybe [RegionalConfiguration])
increaseNodeGroupsInGlobalReplicationGroup_regionalConfigurations = Lens.lens (\IncreaseNodeGroupsInGlobalReplicationGroup' {regionalConfigurations} -> regionalConfigurations) (\s@IncreaseNodeGroupsInGlobalReplicationGroup' {} a -> s {regionalConfigurations = a} :: IncreaseNodeGroupsInGlobalReplicationGroup) Core.. Lens.mapping Lens._Coerce

-- | The name of the Global Datastore
increaseNodeGroupsInGlobalReplicationGroup_globalReplicationGroupId :: Lens.Lens' IncreaseNodeGroupsInGlobalReplicationGroup Core.Text
increaseNodeGroupsInGlobalReplicationGroup_globalReplicationGroupId = Lens.lens (\IncreaseNodeGroupsInGlobalReplicationGroup' {globalReplicationGroupId} -> globalReplicationGroupId) (\s@IncreaseNodeGroupsInGlobalReplicationGroup' {} a -> s {globalReplicationGroupId = a} :: IncreaseNodeGroupsInGlobalReplicationGroup)

-- | The number of node groups you wish to add
increaseNodeGroupsInGlobalReplicationGroup_nodeGroupCount :: Lens.Lens' IncreaseNodeGroupsInGlobalReplicationGroup Core.Int
increaseNodeGroupsInGlobalReplicationGroup_nodeGroupCount = Lens.lens (\IncreaseNodeGroupsInGlobalReplicationGroup' {nodeGroupCount} -> nodeGroupCount) (\s@IncreaseNodeGroupsInGlobalReplicationGroup' {} a -> s {nodeGroupCount = a} :: IncreaseNodeGroupsInGlobalReplicationGroup)

-- | Indicates that the process begins immediately. At present, the only
-- permitted value for this parameter is true.
increaseNodeGroupsInGlobalReplicationGroup_applyImmediately :: Lens.Lens' IncreaseNodeGroupsInGlobalReplicationGroup Core.Bool
increaseNodeGroupsInGlobalReplicationGroup_applyImmediately = Lens.lens (\IncreaseNodeGroupsInGlobalReplicationGroup' {applyImmediately} -> applyImmediately) (\s@IncreaseNodeGroupsInGlobalReplicationGroup' {} a -> s {applyImmediately = a} :: IncreaseNodeGroupsInGlobalReplicationGroup)

instance
  Core.AWSRequest
    IncreaseNodeGroupsInGlobalReplicationGroup
  where
  type
    AWSResponse
      IncreaseNodeGroupsInGlobalReplicationGroup =
      IncreaseNodeGroupsInGlobalReplicationGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "IncreaseNodeGroupsInGlobalReplicationGroupResult"
      ( \s h x ->
          IncreaseNodeGroupsInGlobalReplicationGroupResponse'
            Core.<$> (x Core..@? "GlobalReplicationGroup")
              Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    IncreaseNodeGroupsInGlobalReplicationGroup

instance
  Core.NFData
    IncreaseNodeGroupsInGlobalReplicationGroup

instance
  Core.ToHeaders
    IncreaseNodeGroupsInGlobalReplicationGroup
  where
  toHeaders = Core.const Core.mempty

instance
  Core.ToPath
    IncreaseNodeGroupsInGlobalReplicationGroup
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    IncreaseNodeGroupsInGlobalReplicationGroup
  where
  toQuery
    IncreaseNodeGroupsInGlobalReplicationGroup' {..} =
      Core.mconcat
        [ "Action"
            Core.=: ( "IncreaseNodeGroupsInGlobalReplicationGroup" ::
                        Core.ByteString
                    ),
          "Version" Core.=: ("2015-02-02" :: Core.ByteString),
          "RegionalConfigurations"
            Core.=: Core.toQuery
              ( Core.toQueryList "RegionalConfiguration"
                  Core.<$> regionalConfigurations
              ),
          "GlobalReplicationGroupId"
            Core.=: globalReplicationGroupId,
          "NodeGroupCount" Core.=: nodeGroupCount,
          "ApplyImmediately" Core.=: applyImmediately
        ]

-- | /See:/ 'newIncreaseNodeGroupsInGlobalReplicationGroupResponse' smart constructor.
data IncreaseNodeGroupsInGlobalReplicationGroupResponse = IncreaseNodeGroupsInGlobalReplicationGroupResponse'
  { globalReplicationGroup :: Core.Maybe GlobalReplicationGroup,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'IncreaseNodeGroupsInGlobalReplicationGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'globalReplicationGroup', 'increaseNodeGroupsInGlobalReplicationGroupResponse_globalReplicationGroup' - Undocumented member.
--
-- 'httpStatus', 'increaseNodeGroupsInGlobalReplicationGroupResponse_httpStatus' - The response's http status code.
newIncreaseNodeGroupsInGlobalReplicationGroupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  IncreaseNodeGroupsInGlobalReplicationGroupResponse
newIncreaseNodeGroupsInGlobalReplicationGroupResponse
  pHttpStatus_ =
    IncreaseNodeGroupsInGlobalReplicationGroupResponse'
      { globalReplicationGroup =
          Core.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Undocumented member.
increaseNodeGroupsInGlobalReplicationGroupResponse_globalReplicationGroup :: Lens.Lens' IncreaseNodeGroupsInGlobalReplicationGroupResponse (Core.Maybe GlobalReplicationGroup)
increaseNodeGroupsInGlobalReplicationGroupResponse_globalReplicationGroup = Lens.lens (\IncreaseNodeGroupsInGlobalReplicationGroupResponse' {globalReplicationGroup} -> globalReplicationGroup) (\s@IncreaseNodeGroupsInGlobalReplicationGroupResponse' {} a -> s {globalReplicationGroup = a} :: IncreaseNodeGroupsInGlobalReplicationGroupResponse)

-- | The response's http status code.
increaseNodeGroupsInGlobalReplicationGroupResponse_httpStatus :: Lens.Lens' IncreaseNodeGroupsInGlobalReplicationGroupResponse Core.Int
increaseNodeGroupsInGlobalReplicationGroupResponse_httpStatus = Lens.lens (\IncreaseNodeGroupsInGlobalReplicationGroupResponse' {httpStatus} -> httpStatus) (\s@IncreaseNodeGroupsInGlobalReplicationGroupResponse' {} a -> s {httpStatus = a} :: IncreaseNodeGroupsInGlobalReplicationGroupResponse)

instance
  Core.NFData
    IncreaseNodeGroupsInGlobalReplicationGroupResponse
