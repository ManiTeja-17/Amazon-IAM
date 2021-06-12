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
-- Module      : Network.AWS.WorkDocs.RemoveAllResourcePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes all the permissions from the specified resource.
module Network.AWS.WorkDocs.RemoveAllResourcePermissions
  ( -- * Creating a Request
    RemoveAllResourcePermissions (..),
    newRemoveAllResourcePermissions,

    -- * Request Lenses
    removeAllResourcePermissions_authenticationToken,
    removeAllResourcePermissions_resourceId,

    -- * Destructuring the Response
    RemoveAllResourcePermissionsResponse (..),
    newRemoveAllResourcePermissionsResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'newRemoveAllResourcePermissions' smart constructor.
data RemoveAllResourcePermissions = RemoveAllResourcePermissions'
  { -- | Amazon WorkDocs authentication token. Not required when using AWS
    -- administrator credentials to access the API.
    authenticationToken :: Core.Maybe (Core.Sensitive Core.Text),
    -- | The ID of the resource.
    resourceId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'RemoveAllResourcePermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authenticationToken', 'removeAllResourcePermissions_authenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
--
-- 'resourceId', 'removeAllResourcePermissions_resourceId' - The ID of the resource.
newRemoveAllResourcePermissions ::
  -- | 'resourceId'
  Core.Text ->
  RemoveAllResourcePermissions
newRemoveAllResourcePermissions pResourceId_ =
  RemoveAllResourcePermissions'
    { authenticationToken =
        Core.Nothing,
      resourceId = pResourceId_
    }

-- | Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
removeAllResourcePermissions_authenticationToken :: Lens.Lens' RemoveAllResourcePermissions (Core.Maybe Core.Text)
removeAllResourcePermissions_authenticationToken = Lens.lens (\RemoveAllResourcePermissions' {authenticationToken} -> authenticationToken) (\s@RemoveAllResourcePermissions' {} a -> s {authenticationToken = a} :: RemoveAllResourcePermissions) Core.. Lens.mapping Core._Sensitive

-- | The ID of the resource.
removeAllResourcePermissions_resourceId :: Lens.Lens' RemoveAllResourcePermissions Core.Text
removeAllResourcePermissions_resourceId = Lens.lens (\RemoveAllResourcePermissions' {resourceId} -> resourceId) (\s@RemoveAllResourcePermissions' {} a -> s {resourceId = a} :: RemoveAllResourcePermissions)

instance Core.AWSRequest RemoveAllResourcePermissions where
  type
    AWSResponse RemoveAllResourcePermissions =
      RemoveAllResourcePermissionsResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      RemoveAllResourcePermissionsResponse'

instance Core.Hashable RemoveAllResourcePermissions

instance Core.NFData RemoveAllResourcePermissions

instance Core.ToHeaders RemoveAllResourcePermissions where
  toHeaders RemoveAllResourcePermissions' {..} =
    Core.mconcat
      [ "Authentication" Core.=# authenticationToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
      ]

instance Core.ToPath RemoveAllResourcePermissions where
  toPath RemoveAllResourcePermissions' {..} =
    Core.mconcat
      [ "/api/v1/resources/",
        Core.toBS resourceId,
        "/permissions"
      ]

instance Core.ToQuery RemoveAllResourcePermissions where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newRemoveAllResourcePermissionsResponse' smart constructor.
data RemoveAllResourcePermissionsResponse = RemoveAllResourcePermissionsResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RemoveAllResourcePermissionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRemoveAllResourcePermissionsResponse ::
  RemoveAllResourcePermissionsResponse
newRemoveAllResourcePermissionsResponse =
  RemoveAllResourcePermissionsResponse'

instance
  Core.NFData
    RemoveAllResourcePermissionsResponse
