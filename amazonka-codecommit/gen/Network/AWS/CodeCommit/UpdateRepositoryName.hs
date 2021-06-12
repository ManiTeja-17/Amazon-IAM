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
-- Module      : Network.AWS.CodeCommit.UpdateRepositoryName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Renames a repository. The repository name must be unique across the
-- calling AWS account. Repository names are limited to 100 alphanumeric,
-- dash, and underscore characters, and cannot include certain characters.
-- The suffix .git is prohibited. For more information about the limits on
-- repository names, see
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html Limits>
-- in the AWS CodeCommit User Guide.
module Network.AWS.CodeCommit.UpdateRepositoryName
  ( -- * Creating a Request
    UpdateRepositoryName (..),
    newUpdateRepositoryName,

    -- * Request Lenses
    updateRepositoryName_oldName,
    updateRepositoryName_newName,

    -- * Destructuring the Response
    UpdateRepositoryNameResponse (..),
    newUpdateRepositoryNameResponse,
  )
where

import Network.AWS.CodeCommit.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of an update repository description operation.
--
-- /See:/ 'newUpdateRepositoryName' smart constructor.
data UpdateRepositoryName = UpdateRepositoryName'
  { -- | The current name of the repository.
    oldName :: Core.Text,
    -- | The new name for the repository.
    newName' :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateRepositoryName' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'oldName', 'updateRepositoryName_oldName' - The current name of the repository.
--
-- 'newName'', 'updateRepositoryName_newName' - The new name for the repository.
newUpdateRepositoryName ::
  -- | 'oldName'
  Core.Text ->
  -- | 'newName''
  Core.Text ->
  UpdateRepositoryName
newUpdateRepositoryName pOldName_ pNewName_ =
  UpdateRepositoryName'
    { oldName = pOldName_,
      newName' = pNewName_
    }

-- | The current name of the repository.
updateRepositoryName_oldName :: Lens.Lens' UpdateRepositoryName Core.Text
updateRepositoryName_oldName = Lens.lens (\UpdateRepositoryName' {oldName} -> oldName) (\s@UpdateRepositoryName' {} a -> s {oldName = a} :: UpdateRepositoryName)

-- | The new name for the repository.
updateRepositoryName_newName :: Lens.Lens' UpdateRepositoryName Core.Text
updateRepositoryName_newName = Lens.lens (\UpdateRepositoryName' {newName'} -> newName') (\s@UpdateRepositoryName' {} a -> s {newName' = a} :: UpdateRepositoryName)

instance Core.AWSRequest UpdateRepositoryName where
  type
    AWSResponse UpdateRepositoryName =
      UpdateRepositoryNameResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull UpdateRepositoryNameResponse'

instance Core.Hashable UpdateRepositoryName

instance Core.NFData UpdateRepositoryName

instance Core.ToHeaders UpdateRepositoryName where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeCommit_20150413.UpdateRepositoryName" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateRepositoryName where
  toJSON UpdateRepositoryName' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("oldName" Core..= oldName),
            Core.Just ("newName" Core..= newName')
          ]
      )

instance Core.ToPath UpdateRepositoryName where
  toPath = Core.const "/"

instance Core.ToQuery UpdateRepositoryName where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateRepositoryNameResponse' smart constructor.
data UpdateRepositoryNameResponse = UpdateRepositoryNameResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateRepositoryNameResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateRepositoryNameResponse ::
  UpdateRepositoryNameResponse
newUpdateRepositoryNameResponse =
  UpdateRepositoryNameResponse'

instance Core.NFData UpdateRepositoryNameResponse
