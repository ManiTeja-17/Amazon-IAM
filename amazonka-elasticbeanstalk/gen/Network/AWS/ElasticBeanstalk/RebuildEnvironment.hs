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
-- Module      : Network.AWS.ElasticBeanstalk.RebuildEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes and recreates all of the AWS resources (for example: the Auto
-- Scaling group, load balancer, etc.) for a specified environment and
-- forces a restart.
module Network.AWS.ElasticBeanstalk.RebuildEnvironment
  ( -- * Creating a Request
    RebuildEnvironment (..),
    newRebuildEnvironment,

    -- * Request Lenses
    rebuildEnvironment_environmentId,
    rebuildEnvironment_environmentName,

    -- * Destructuring the Response
    RebuildEnvironmentResponse (..),
    newRebuildEnvironmentResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticBeanstalk.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newRebuildEnvironment' smart constructor.
data RebuildEnvironment = RebuildEnvironment'
  { -- | The ID of the environment to rebuild.
    --
    -- Condition: You must specify either this or an EnvironmentName, or both.
    -- If you do not specify either, AWS Elastic Beanstalk returns
    -- @MissingRequiredParameter@ error.
    environmentId :: Core.Maybe Core.Text,
    -- | The name of the environment to rebuild.
    --
    -- Condition: You must specify either this or an EnvironmentId, or both. If
    -- you do not specify either, AWS Elastic Beanstalk returns
    -- @MissingRequiredParameter@ error.
    environmentName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RebuildEnvironment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environmentId', 'rebuildEnvironment_environmentId' - The ID of the environment to rebuild.
--
-- Condition: You must specify either this or an EnvironmentName, or both.
-- If you do not specify either, AWS Elastic Beanstalk returns
-- @MissingRequiredParameter@ error.
--
-- 'environmentName', 'rebuildEnvironment_environmentName' - The name of the environment to rebuild.
--
-- Condition: You must specify either this or an EnvironmentId, or both. If
-- you do not specify either, AWS Elastic Beanstalk returns
-- @MissingRequiredParameter@ error.
newRebuildEnvironment ::
  RebuildEnvironment
newRebuildEnvironment =
  RebuildEnvironment'
    { environmentId = Core.Nothing,
      environmentName = Core.Nothing
    }

-- | The ID of the environment to rebuild.
--
-- Condition: You must specify either this or an EnvironmentName, or both.
-- If you do not specify either, AWS Elastic Beanstalk returns
-- @MissingRequiredParameter@ error.
rebuildEnvironment_environmentId :: Lens.Lens' RebuildEnvironment (Core.Maybe Core.Text)
rebuildEnvironment_environmentId = Lens.lens (\RebuildEnvironment' {environmentId} -> environmentId) (\s@RebuildEnvironment' {} a -> s {environmentId = a} :: RebuildEnvironment)

-- | The name of the environment to rebuild.
--
-- Condition: You must specify either this or an EnvironmentId, or both. If
-- you do not specify either, AWS Elastic Beanstalk returns
-- @MissingRequiredParameter@ error.
rebuildEnvironment_environmentName :: Lens.Lens' RebuildEnvironment (Core.Maybe Core.Text)
rebuildEnvironment_environmentName = Lens.lens (\RebuildEnvironment' {environmentName} -> environmentName) (\s@RebuildEnvironment' {} a -> s {environmentName = a} :: RebuildEnvironment)

instance Core.AWSRequest RebuildEnvironment where
  type
    AWSResponse RebuildEnvironment =
      RebuildEnvironmentResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull RebuildEnvironmentResponse'

instance Core.Hashable RebuildEnvironment

instance Core.NFData RebuildEnvironment

instance Core.ToHeaders RebuildEnvironment where
  toHeaders = Core.const Core.mempty

instance Core.ToPath RebuildEnvironment where
  toPath = Core.const "/"

instance Core.ToQuery RebuildEnvironment where
  toQuery RebuildEnvironment' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("RebuildEnvironment" :: Core.ByteString),
        "Version" Core.=: ("2010-12-01" :: Core.ByteString),
        "EnvironmentId" Core.=: environmentId,
        "EnvironmentName" Core.=: environmentName
      ]

-- | /See:/ 'newRebuildEnvironmentResponse' smart constructor.
data RebuildEnvironmentResponse = RebuildEnvironmentResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RebuildEnvironmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRebuildEnvironmentResponse ::
  RebuildEnvironmentResponse
newRebuildEnvironmentResponse =
  RebuildEnvironmentResponse'

instance Core.NFData RebuildEnvironmentResponse
