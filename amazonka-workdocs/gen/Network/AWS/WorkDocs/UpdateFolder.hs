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
-- Module      : Network.AWS.WorkDocs.UpdateFolder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified attributes of the specified folder. The user must
-- have access to both the folder and its parent folder, if applicable.
module Network.AWS.WorkDocs.UpdateFolder
  ( -- * Creating a Request
    UpdateFolder (..),
    newUpdateFolder,

    -- * Request Lenses
    updateFolder_parentFolderId,
    updateFolder_name,
    updateFolder_authenticationToken,
    updateFolder_resourceState,
    updateFolder_folderId,

    -- * Destructuring the Response
    UpdateFolderResponse (..),
    newUpdateFolderResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'newUpdateFolder' smart constructor.
data UpdateFolder = UpdateFolder'
  { -- | The ID of the parent folder.
    parentFolderId :: Core.Maybe Core.Text,
    -- | The name of the folder.
    name :: Core.Maybe Core.Text,
    -- | Amazon WorkDocs authentication token. Not required when using AWS
    -- administrator credentials to access the API.
    authenticationToken :: Core.Maybe (Core.Sensitive Core.Text),
    -- | The resource state of the folder. Only ACTIVE and RECYCLED are accepted
    -- values from the API.
    resourceState :: Core.Maybe ResourceStateType,
    -- | The ID of the folder.
    folderId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateFolder' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parentFolderId', 'updateFolder_parentFolderId' - The ID of the parent folder.
--
-- 'name', 'updateFolder_name' - The name of the folder.
--
-- 'authenticationToken', 'updateFolder_authenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
--
-- 'resourceState', 'updateFolder_resourceState' - The resource state of the folder. Only ACTIVE and RECYCLED are accepted
-- values from the API.
--
-- 'folderId', 'updateFolder_folderId' - The ID of the folder.
newUpdateFolder ::
  -- | 'folderId'
  Core.Text ->
  UpdateFolder
newUpdateFolder pFolderId_ =
  UpdateFolder'
    { parentFolderId = Core.Nothing,
      name = Core.Nothing,
      authenticationToken = Core.Nothing,
      resourceState = Core.Nothing,
      folderId = pFolderId_
    }

-- | The ID of the parent folder.
updateFolder_parentFolderId :: Lens.Lens' UpdateFolder (Core.Maybe Core.Text)
updateFolder_parentFolderId = Lens.lens (\UpdateFolder' {parentFolderId} -> parentFolderId) (\s@UpdateFolder' {} a -> s {parentFolderId = a} :: UpdateFolder)

-- | The name of the folder.
updateFolder_name :: Lens.Lens' UpdateFolder (Core.Maybe Core.Text)
updateFolder_name = Lens.lens (\UpdateFolder' {name} -> name) (\s@UpdateFolder' {} a -> s {name = a} :: UpdateFolder)

-- | Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
updateFolder_authenticationToken :: Lens.Lens' UpdateFolder (Core.Maybe Core.Text)
updateFolder_authenticationToken = Lens.lens (\UpdateFolder' {authenticationToken} -> authenticationToken) (\s@UpdateFolder' {} a -> s {authenticationToken = a} :: UpdateFolder) Core.. Lens.mapping Core._Sensitive

-- | The resource state of the folder. Only ACTIVE and RECYCLED are accepted
-- values from the API.
updateFolder_resourceState :: Lens.Lens' UpdateFolder (Core.Maybe ResourceStateType)
updateFolder_resourceState = Lens.lens (\UpdateFolder' {resourceState} -> resourceState) (\s@UpdateFolder' {} a -> s {resourceState = a} :: UpdateFolder)

-- | The ID of the folder.
updateFolder_folderId :: Lens.Lens' UpdateFolder Core.Text
updateFolder_folderId = Lens.lens (\UpdateFolder' {folderId} -> folderId) (\s@UpdateFolder' {} a -> s {folderId = a} :: UpdateFolder)

instance Core.AWSRequest UpdateFolder where
  type AWSResponse UpdateFolder = UpdateFolderResponse
  request = Request.patchJSON defaultService
  response = Response.receiveNull UpdateFolderResponse'

instance Core.Hashable UpdateFolder

instance Core.NFData UpdateFolder

instance Core.ToHeaders UpdateFolder where
  toHeaders UpdateFolder' {..} =
    Core.mconcat
      [ "Authentication" Core.=# authenticationToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
      ]

instance Core.ToJSON UpdateFolder where
  toJSON UpdateFolder' {..} =
    Core.object
      ( Core.catMaybes
          [ ("ParentFolderId" Core..=) Core.<$> parentFolderId,
            ("Name" Core..=) Core.<$> name,
            ("ResourceState" Core..=) Core.<$> resourceState
          ]
      )

instance Core.ToPath UpdateFolder where
  toPath UpdateFolder' {..} =
    Core.mconcat
      ["/api/v1/folders/", Core.toBS folderId]

instance Core.ToQuery UpdateFolder where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateFolderResponse' smart constructor.
data UpdateFolderResponse = UpdateFolderResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateFolderResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateFolderResponse ::
  UpdateFolderResponse
newUpdateFolderResponse = UpdateFolderResponse'

instance Core.NFData UpdateFolderResponse
