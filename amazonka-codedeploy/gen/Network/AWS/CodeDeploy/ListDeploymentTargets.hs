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
-- Module      : Network.AWS.CodeDeploy.ListDeploymentTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of target IDs that are associated a deployment.
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListDeploymentTargets
  ( -- * Creating a Request
    ListDeploymentTargets (..),
    newListDeploymentTargets,

    -- * Request Lenses
    listDeploymentTargets_deploymentId,
    listDeploymentTargets_nextToken,
    listDeploymentTargets_targetFilters,

    -- * Destructuring the Response
    ListDeploymentTargetsResponse (..),
    newListDeploymentTargetsResponse,

    -- * Response Lenses
    listDeploymentTargetsResponse_targetIds,
    listDeploymentTargetsResponse_nextToken,
    listDeploymentTargetsResponse_httpStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDeploymentTargets' smart constructor.
data ListDeploymentTargets = ListDeploymentTargets'
  { -- | The unique ID of a deployment.
    deploymentId :: Core.Maybe Core.Text,
    -- | A token identifier returned from the previous @ListDeploymentTargets@
    -- call. It can be used to return the next set of deployment targets in the
    -- list.
    nextToken :: Core.Maybe Core.Text,
    -- | A key used to filter the returned targets. The two valid values are:
    --
    -- -   @TargetStatus@ - A @TargetStatus@ filter string can be @Failed@,
    --     @InProgress@, @Pending@, @Ready@, @Skipped@, @Succeeded@, or
    --     @Unknown@.
    --
    -- -   @ServerInstanceLabel@ - A @ServerInstanceLabel@ filter string can be
    --     @Blue@ or @Green@.
    targetFilters :: Core.Maybe (Core.HashMap TargetFilterName [Core.Text])
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListDeploymentTargets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentId', 'listDeploymentTargets_deploymentId' - The unique ID of a deployment.
--
-- 'nextToken', 'listDeploymentTargets_nextToken' - A token identifier returned from the previous @ListDeploymentTargets@
-- call. It can be used to return the next set of deployment targets in the
-- list.
--
-- 'targetFilters', 'listDeploymentTargets_targetFilters' - A key used to filter the returned targets. The two valid values are:
--
-- -   @TargetStatus@ - A @TargetStatus@ filter string can be @Failed@,
--     @InProgress@, @Pending@, @Ready@, @Skipped@, @Succeeded@, or
--     @Unknown@.
--
-- -   @ServerInstanceLabel@ - A @ServerInstanceLabel@ filter string can be
--     @Blue@ or @Green@.
newListDeploymentTargets ::
  ListDeploymentTargets
newListDeploymentTargets =
  ListDeploymentTargets'
    { deploymentId = Core.Nothing,
      nextToken = Core.Nothing,
      targetFilters = Core.Nothing
    }

-- | The unique ID of a deployment.
listDeploymentTargets_deploymentId :: Lens.Lens' ListDeploymentTargets (Core.Maybe Core.Text)
listDeploymentTargets_deploymentId = Lens.lens (\ListDeploymentTargets' {deploymentId} -> deploymentId) (\s@ListDeploymentTargets' {} a -> s {deploymentId = a} :: ListDeploymentTargets)

-- | A token identifier returned from the previous @ListDeploymentTargets@
-- call. It can be used to return the next set of deployment targets in the
-- list.
listDeploymentTargets_nextToken :: Lens.Lens' ListDeploymentTargets (Core.Maybe Core.Text)
listDeploymentTargets_nextToken = Lens.lens (\ListDeploymentTargets' {nextToken} -> nextToken) (\s@ListDeploymentTargets' {} a -> s {nextToken = a} :: ListDeploymentTargets)

-- | A key used to filter the returned targets. The two valid values are:
--
-- -   @TargetStatus@ - A @TargetStatus@ filter string can be @Failed@,
--     @InProgress@, @Pending@, @Ready@, @Skipped@, @Succeeded@, or
--     @Unknown@.
--
-- -   @ServerInstanceLabel@ - A @ServerInstanceLabel@ filter string can be
--     @Blue@ or @Green@.
listDeploymentTargets_targetFilters :: Lens.Lens' ListDeploymentTargets (Core.Maybe (Core.HashMap TargetFilterName [Core.Text]))
listDeploymentTargets_targetFilters = Lens.lens (\ListDeploymentTargets' {targetFilters} -> targetFilters) (\s@ListDeploymentTargets' {} a -> s {targetFilters = a} :: ListDeploymentTargets) Core.. Lens.mapping Lens._Coerce

instance Core.AWSPager ListDeploymentTargets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDeploymentTargetsResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listDeploymentTargetsResponse_targetIds
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listDeploymentTargets_nextToken
          Lens..~ rs
          Lens.^? listDeploymentTargetsResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest ListDeploymentTargets where
  type
    AWSResponse ListDeploymentTargets =
      ListDeploymentTargetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDeploymentTargetsResponse'
            Core.<$> (x Core..?> "targetIds" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListDeploymentTargets

instance Core.NFData ListDeploymentTargets

instance Core.ToHeaders ListDeploymentTargets where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeDeploy_20141006.ListDeploymentTargets" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListDeploymentTargets where
  toJSON ListDeploymentTargets' {..} =
    Core.object
      ( Core.catMaybes
          [ ("deploymentId" Core..=) Core.<$> deploymentId,
            ("nextToken" Core..=) Core.<$> nextToken,
            ("targetFilters" Core..=) Core.<$> targetFilters
          ]
      )

instance Core.ToPath ListDeploymentTargets where
  toPath = Core.const "/"

instance Core.ToQuery ListDeploymentTargets where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListDeploymentTargetsResponse' smart constructor.
data ListDeploymentTargetsResponse = ListDeploymentTargetsResponse'
  { -- | The unique IDs of deployment targets.
    targetIds :: Core.Maybe [Core.Text],
    -- | If a large amount of information is returned, a token identifier is also
    -- returned. It can be used in a subsequent @ListDeploymentTargets@ call to
    -- return the next set of deployment targets in the list.
    nextToken :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListDeploymentTargetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetIds', 'listDeploymentTargetsResponse_targetIds' - The unique IDs of deployment targets.
--
-- 'nextToken', 'listDeploymentTargetsResponse_nextToken' - If a large amount of information is returned, a token identifier is also
-- returned. It can be used in a subsequent @ListDeploymentTargets@ call to
-- return the next set of deployment targets in the list.
--
-- 'httpStatus', 'listDeploymentTargetsResponse_httpStatus' - The response's http status code.
newListDeploymentTargetsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListDeploymentTargetsResponse
newListDeploymentTargetsResponse pHttpStatus_ =
  ListDeploymentTargetsResponse'
    { targetIds =
        Core.Nothing,
      nextToken = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique IDs of deployment targets.
listDeploymentTargetsResponse_targetIds :: Lens.Lens' ListDeploymentTargetsResponse (Core.Maybe [Core.Text])
listDeploymentTargetsResponse_targetIds = Lens.lens (\ListDeploymentTargetsResponse' {targetIds} -> targetIds) (\s@ListDeploymentTargetsResponse' {} a -> s {targetIds = a} :: ListDeploymentTargetsResponse) Core.. Lens.mapping Lens._Coerce

-- | If a large amount of information is returned, a token identifier is also
-- returned. It can be used in a subsequent @ListDeploymentTargets@ call to
-- return the next set of deployment targets in the list.
listDeploymentTargetsResponse_nextToken :: Lens.Lens' ListDeploymentTargetsResponse (Core.Maybe Core.Text)
listDeploymentTargetsResponse_nextToken = Lens.lens (\ListDeploymentTargetsResponse' {nextToken} -> nextToken) (\s@ListDeploymentTargetsResponse' {} a -> s {nextToken = a} :: ListDeploymentTargetsResponse)

-- | The response's http status code.
listDeploymentTargetsResponse_httpStatus :: Lens.Lens' ListDeploymentTargetsResponse Core.Int
listDeploymentTargetsResponse_httpStatus = Lens.lens (\ListDeploymentTargetsResponse' {httpStatus} -> httpStatus) (\s@ListDeploymentTargetsResponse' {} a -> s {httpStatus = a} :: ListDeploymentTargetsResponse)

instance Core.NFData ListDeploymentTargetsResponse
