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
-- Module      : Network.AWS.Greengrass.ResetDeployments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets a group\'s deployments.
module Network.AWS.Greengrass.ResetDeployments
  ( -- * Creating a Request
    ResetDeployments (..),
    newResetDeployments,

    -- * Request Lenses
    resetDeployments_force,
    resetDeployments_amznClientToken,
    resetDeployments_groupId,

    -- * Destructuring the Response
    ResetDeploymentsResponse (..),
    newResetDeploymentsResponse,

    -- * Response Lenses
    resetDeploymentsResponse_deploymentId,
    resetDeploymentsResponse_deploymentArn,
    resetDeploymentsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Greengrass.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Information needed to reset deployments.
--
-- /See:/ 'newResetDeployments' smart constructor.
data ResetDeployments = ResetDeployments'
  { -- | If true, performs a best-effort only core reset.
    force :: Core.Maybe Core.Bool,
    -- | A client token used to correlate requests and responses.
    amznClientToken :: Core.Maybe Core.Text,
    -- | The ID of the Greengrass group.
    groupId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResetDeployments' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'force', 'resetDeployments_force' - If true, performs a best-effort only core reset.
--
-- 'amznClientToken', 'resetDeployments_amznClientToken' - A client token used to correlate requests and responses.
--
-- 'groupId', 'resetDeployments_groupId' - The ID of the Greengrass group.
newResetDeployments ::
  -- | 'groupId'
  Core.Text ->
  ResetDeployments
newResetDeployments pGroupId_ =
  ResetDeployments'
    { force = Core.Nothing,
      amznClientToken = Core.Nothing,
      groupId = pGroupId_
    }

-- | If true, performs a best-effort only core reset.
resetDeployments_force :: Lens.Lens' ResetDeployments (Core.Maybe Core.Bool)
resetDeployments_force = Lens.lens (\ResetDeployments' {force} -> force) (\s@ResetDeployments' {} a -> s {force = a} :: ResetDeployments)

-- | A client token used to correlate requests and responses.
resetDeployments_amznClientToken :: Lens.Lens' ResetDeployments (Core.Maybe Core.Text)
resetDeployments_amznClientToken = Lens.lens (\ResetDeployments' {amznClientToken} -> amznClientToken) (\s@ResetDeployments' {} a -> s {amznClientToken = a} :: ResetDeployments)

-- | The ID of the Greengrass group.
resetDeployments_groupId :: Lens.Lens' ResetDeployments Core.Text
resetDeployments_groupId = Lens.lens (\ResetDeployments' {groupId} -> groupId) (\s@ResetDeployments' {} a -> s {groupId = a} :: ResetDeployments)

instance Core.AWSRequest ResetDeployments where
  type
    AWSResponse ResetDeployments =
      ResetDeploymentsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ResetDeploymentsResponse'
            Core.<$> (x Core..?> "DeploymentId")
            Core.<*> (x Core..?> "DeploymentArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ResetDeployments

instance Core.NFData ResetDeployments

instance Core.ToHeaders ResetDeployments where
  toHeaders ResetDeployments' {..} =
    Core.mconcat
      [ "X-Amzn-Client-Token" Core.=# amznClientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
      ]

instance Core.ToJSON ResetDeployments where
  toJSON ResetDeployments' {..} =
    Core.object
      (Core.catMaybes [("Force" Core..=) Core.<$> force])

instance Core.ToPath ResetDeployments where
  toPath ResetDeployments' {..} =
    Core.mconcat
      [ "/greengrass/groups/",
        Core.toBS groupId,
        "/deployments/$reset"
      ]

instance Core.ToQuery ResetDeployments where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newResetDeploymentsResponse' smart constructor.
data ResetDeploymentsResponse = ResetDeploymentsResponse'
  { -- | The ID of the deployment.
    deploymentId :: Core.Maybe Core.Text,
    -- | The ARN of the deployment.
    deploymentArn :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResetDeploymentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentId', 'resetDeploymentsResponse_deploymentId' - The ID of the deployment.
--
-- 'deploymentArn', 'resetDeploymentsResponse_deploymentArn' - The ARN of the deployment.
--
-- 'httpStatus', 'resetDeploymentsResponse_httpStatus' - The response's http status code.
newResetDeploymentsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ResetDeploymentsResponse
newResetDeploymentsResponse pHttpStatus_ =
  ResetDeploymentsResponse'
    { deploymentId =
        Core.Nothing,
      deploymentArn = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the deployment.
resetDeploymentsResponse_deploymentId :: Lens.Lens' ResetDeploymentsResponse (Core.Maybe Core.Text)
resetDeploymentsResponse_deploymentId = Lens.lens (\ResetDeploymentsResponse' {deploymentId} -> deploymentId) (\s@ResetDeploymentsResponse' {} a -> s {deploymentId = a} :: ResetDeploymentsResponse)

-- | The ARN of the deployment.
resetDeploymentsResponse_deploymentArn :: Lens.Lens' ResetDeploymentsResponse (Core.Maybe Core.Text)
resetDeploymentsResponse_deploymentArn = Lens.lens (\ResetDeploymentsResponse' {deploymentArn} -> deploymentArn) (\s@ResetDeploymentsResponse' {} a -> s {deploymentArn = a} :: ResetDeploymentsResponse)

-- | The response's http status code.
resetDeploymentsResponse_httpStatus :: Lens.Lens' ResetDeploymentsResponse Core.Int
resetDeploymentsResponse_httpStatus = Lens.lens (\ResetDeploymentsResponse' {httpStatus} -> httpStatus) (\s@ResetDeploymentsResponse' {} a -> s {httpStatus = a} :: ResetDeploymentsResponse)

instance Core.NFData ResetDeploymentsResponse
