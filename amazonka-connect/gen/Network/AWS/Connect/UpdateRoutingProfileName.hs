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
-- Module      : Network.AWS.Connect.UpdateRoutingProfileName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the name and description of a routing profile. The request
-- accepts the following data in JSON format. At least @Name@ or
-- @Description@ must be provided.
module Network.AWS.Connect.UpdateRoutingProfileName
  ( -- * Creating a Request
    UpdateRoutingProfileName (..),
    newUpdateRoutingProfileName,

    -- * Request Lenses
    updateRoutingProfileName_name,
    updateRoutingProfileName_description,
    updateRoutingProfileName_instanceId,
    updateRoutingProfileName_routingProfileId,

    -- * Destructuring the Response
    UpdateRoutingProfileNameResponse (..),
    newUpdateRoutingProfileNameResponse,
  )
where

import Network.AWS.Connect.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateRoutingProfileName' smart constructor.
data UpdateRoutingProfileName = UpdateRoutingProfileName'
  { -- | The name of the routing profile. Must not be more than 127 characters.
    name :: Core.Maybe Core.Text,
    -- | The description of the routing profile. Must not be more than 250
    -- characters.
    description :: Core.Maybe Core.Text,
    -- | The identifier of the Amazon Connect instance.
    instanceId :: Core.Text,
    -- | The identifier of the routing profile.
    routingProfileId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateRoutingProfileName' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateRoutingProfileName_name' - The name of the routing profile. Must not be more than 127 characters.
--
-- 'description', 'updateRoutingProfileName_description' - The description of the routing profile. Must not be more than 250
-- characters.
--
-- 'instanceId', 'updateRoutingProfileName_instanceId' - The identifier of the Amazon Connect instance.
--
-- 'routingProfileId', 'updateRoutingProfileName_routingProfileId' - The identifier of the routing profile.
newUpdateRoutingProfileName ::
  -- | 'instanceId'
  Core.Text ->
  -- | 'routingProfileId'
  Core.Text ->
  UpdateRoutingProfileName
newUpdateRoutingProfileName
  pInstanceId_
  pRoutingProfileId_ =
    UpdateRoutingProfileName'
      { name = Core.Nothing,
        description = Core.Nothing,
        instanceId = pInstanceId_,
        routingProfileId = pRoutingProfileId_
      }

-- | The name of the routing profile. Must not be more than 127 characters.
updateRoutingProfileName_name :: Lens.Lens' UpdateRoutingProfileName (Core.Maybe Core.Text)
updateRoutingProfileName_name = Lens.lens (\UpdateRoutingProfileName' {name} -> name) (\s@UpdateRoutingProfileName' {} a -> s {name = a} :: UpdateRoutingProfileName)

-- | The description of the routing profile. Must not be more than 250
-- characters.
updateRoutingProfileName_description :: Lens.Lens' UpdateRoutingProfileName (Core.Maybe Core.Text)
updateRoutingProfileName_description = Lens.lens (\UpdateRoutingProfileName' {description} -> description) (\s@UpdateRoutingProfileName' {} a -> s {description = a} :: UpdateRoutingProfileName)

-- | The identifier of the Amazon Connect instance.
updateRoutingProfileName_instanceId :: Lens.Lens' UpdateRoutingProfileName Core.Text
updateRoutingProfileName_instanceId = Lens.lens (\UpdateRoutingProfileName' {instanceId} -> instanceId) (\s@UpdateRoutingProfileName' {} a -> s {instanceId = a} :: UpdateRoutingProfileName)

-- | The identifier of the routing profile.
updateRoutingProfileName_routingProfileId :: Lens.Lens' UpdateRoutingProfileName Core.Text
updateRoutingProfileName_routingProfileId = Lens.lens (\UpdateRoutingProfileName' {routingProfileId} -> routingProfileId) (\s@UpdateRoutingProfileName' {} a -> s {routingProfileId = a} :: UpdateRoutingProfileName)

instance Core.AWSRequest UpdateRoutingProfileName where
  type
    AWSResponse UpdateRoutingProfileName =
      UpdateRoutingProfileNameResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      UpdateRoutingProfileNameResponse'

instance Core.Hashable UpdateRoutingProfileName

instance Core.NFData UpdateRoutingProfileName

instance Core.ToHeaders UpdateRoutingProfileName where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateRoutingProfileName where
  toJSON UpdateRoutingProfileName' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Name" Core..=) Core.<$> name,
            ("Description" Core..=) Core.<$> description
          ]
      )

instance Core.ToPath UpdateRoutingProfileName where
  toPath UpdateRoutingProfileName' {..} =
    Core.mconcat
      [ "/routing-profiles/",
        Core.toBS instanceId,
        "/",
        Core.toBS routingProfileId,
        "/name"
      ]

instance Core.ToQuery UpdateRoutingProfileName where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateRoutingProfileNameResponse' smart constructor.
data UpdateRoutingProfileNameResponse = UpdateRoutingProfileNameResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateRoutingProfileNameResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateRoutingProfileNameResponse ::
  UpdateRoutingProfileNameResponse
newUpdateRoutingProfileNameResponse =
  UpdateRoutingProfileNameResponse'

instance Core.NFData UpdateRoutingProfileNameResponse
