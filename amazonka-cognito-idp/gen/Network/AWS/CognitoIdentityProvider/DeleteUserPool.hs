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
-- Module      : Network.AWS.CognitoIdentityProvider.DeleteUserPool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Amazon Cognito user pool.
module Network.AWS.CognitoIdentityProvider.DeleteUserPool
  ( -- * Creating a Request
    DeleteUserPool (..),
    newDeleteUserPool,

    -- * Request Lenses
    deleteUserPool_userPoolId,

    -- * Destructuring the Response
    DeleteUserPoolResponse (..),
    newDeleteUserPoolResponse,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to delete a user pool.
--
-- /See:/ 'newDeleteUserPool' smart constructor.
data DeleteUserPool = DeleteUserPool'
  { -- | The user pool ID for the user pool you want to delete.
    userPoolId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteUserPool' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userPoolId', 'deleteUserPool_userPoolId' - The user pool ID for the user pool you want to delete.
newDeleteUserPool ::
  -- | 'userPoolId'
  Core.Text ->
  DeleteUserPool
newDeleteUserPool pUserPoolId_ =
  DeleteUserPool' {userPoolId = pUserPoolId_}

-- | The user pool ID for the user pool you want to delete.
deleteUserPool_userPoolId :: Lens.Lens' DeleteUserPool Core.Text
deleteUserPool_userPoolId = Lens.lens (\DeleteUserPool' {userPoolId} -> userPoolId) (\s@DeleteUserPool' {} a -> s {userPoolId = a} :: DeleteUserPool)

instance Core.AWSRequest DeleteUserPool where
  type
    AWSResponse DeleteUserPool =
      DeleteUserPoolResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteUserPoolResponse'

instance Core.Hashable DeleteUserPool

instance Core.NFData DeleteUserPool

instance Core.ToHeaders DeleteUserPool where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.DeleteUserPool" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteUserPool where
  toJSON DeleteUserPool' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("UserPoolId" Core..= userPoolId)]
      )

instance Core.ToPath DeleteUserPool where
  toPath = Core.const "/"

instance Core.ToQuery DeleteUserPool where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteUserPoolResponse' smart constructor.
data DeleteUserPoolResponse = DeleteUserPoolResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteUserPoolResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteUserPoolResponse ::
  DeleteUserPoolResponse
newDeleteUserPoolResponse = DeleteUserPoolResponse'

instance Core.NFData DeleteUserPoolResponse
