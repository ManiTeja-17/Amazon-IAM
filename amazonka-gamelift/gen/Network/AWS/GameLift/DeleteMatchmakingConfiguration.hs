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
-- Module      : Network.AWS.GameLift.DeleteMatchmakingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently removes a FlexMatch matchmaking configuration. To delete,
-- specify the configuration name. A matchmaking configuration cannot be
-- deleted if it is being used in any active matchmaking tickets.
--
-- __Related operations__
--
-- -   CreateMatchmakingConfiguration
--
-- -   DescribeMatchmakingConfigurations
--
-- -   UpdateMatchmakingConfiguration
--
-- -   DeleteMatchmakingConfiguration
--
-- -   CreateMatchmakingRuleSet
--
-- -   DescribeMatchmakingRuleSets
--
-- -   ValidateMatchmakingRuleSet
--
-- -   DeleteMatchmakingRuleSet
module Network.AWS.GameLift.DeleteMatchmakingConfiguration
  ( -- * Creating a Request
    DeleteMatchmakingConfiguration (..),
    newDeleteMatchmakingConfiguration,

    -- * Request Lenses
    deleteMatchmakingConfiguration_name,

    -- * Destructuring the Response
    DeleteMatchmakingConfigurationResponse (..),
    newDeleteMatchmakingConfigurationResponse,

    -- * Response Lenses
    deleteMatchmakingConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GameLift.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input for a request operation.
--
-- /See:/ 'newDeleteMatchmakingConfiguration' smart constructor.
data DeleteMatchmakingConfiguration = DeleteMatchmakingConfiguration'
  { -- | A unique identifier for a matchmaking configuration. You can use either
    -- the configuration name or ARN value.
    name :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteMatchmakingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteMatchmakingConfiguration_name' - A unique identifier for a matchmaking configuration. You can use either
-- the configuration name or ARN value.
newDeleteMatchmakingConfiguration ::
  -- | 'name'
  Core.Text ->
  DeleteMatchmakingConfiguration
newDeleteMatchmakingConfiguration pName_ =
  DeleteMatchmakingConfiguration' {name = pName_}

-- | A unique identifier for a matchmaking configuration. You can use either
-- the configuration name or ARN value.
deleteMatchmakingConfiguration_name :: Lens.Lens' DeleteMatchmakingConfiguration Core.Text
deleteMatchmakingConfiguration_name = Lens.lens (\DeleteMatchmakingConfiguration' {name} -> name) (\s@DeleteMatchmakingConfiguration' {} a -> s {name = a} :: DeleteMatchmakingConfiguration)

instance
  Core.AWSRequest
    DeleteMatchmakingConfiguration
  where
  type
    AWSResponse DeleteMatchmakingConfiguration =
      DeleteMatchmakingConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteMatchmakingConfigurationResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteMatchmakingConfiguration

instance Core.NFData DeleteMatchmakingConfiguration

instance
  Core.ToHeaders
    DeleteMatchmakingConfiguration
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GameLift.DeleteMatchmakingConfiguration" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteMatchmakingConfiguration where
  toJSON DeleteMatchmakingConfiguration' {..} =
    Core.object
      (Core.catMaybes [Core.Just ("Name" Core..= name)])

instance Core.ToPath DeleteMatchmakingConfiguration where
  toPath = Core.const "/"

instance Core.ToQuery DeleteMatchmakingConfiguration where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteMatchmakingConfigurationResponse' smart constructor.
data DeleteMatchmakingConfigurationResponse = DeleteMatchmakingConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteMatchmakingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteMatchmakingConfigurationResponse_httpStatus' - The response's http status code.
newDeleteMatchmakingConfigurationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteMatchmakingConfigurationResponse
newDeleteMatchmakingConfigurationResponse
  pHttpStatus_ =
    DeleteMatchmakingConfigurationResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
deleteMatchmakingConfigurationResponse_httpStatus :: Lens.Lens' DeleteMatchmakingConfigurationResponse Core.Int
deleteMatchmakingConfigurationResponse_httpStatus = Lens.lens (\DeleteMatchmakingConfigurationResponse' {httpStatus} -> httpStatus) (\s@DeleteMatchmakingConfigurationResponse' {} a -> s {httpStatus = a} :: DeleteMatchmakingConfigurationResponse)

instance
  Core.NFData
    DeleteMatchmakingConfigurationResponse
