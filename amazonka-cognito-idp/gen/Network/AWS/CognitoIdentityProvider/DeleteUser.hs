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
-- Module      : Network.AWS.CognitoIdentityProvider.DeleteUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows a user to delete himself or herself.
module Network.AWS.CognitoIdentityProvider.DeleteUser
  ( -- * Creating a Request
    DeleteUser (..),
    newDeleteUser,

    -- * Request Lenses
    deleteUser_accessToken,

    -- * Destructuring the Response
    DeleteUserResponse (..),
    newDeleteUserResponse,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to delete a user.
--
-- /See:/ 'newDeleteUser' smart constructor.
data DeleteUser = DeleteUser'
  { -- | The access token from a request to delete a user.
    accessToken :: Core.Sensitive Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessToken', 'deleteUser_accessToken' - The access token from a request to delete a user.
newDeleteUser ::
  -- | 'accessToken'
  Core.Text ->
  DeleteUser
newDeleteUser pAccessToken_ =
  DeleteUser'
    { accessToken =
        Core._Sensitive Lens.# pAccessToken_
    }

-- | The access token from a request to delete a user.
deleteUser_accessToken :: Lens.Lens' DeleteUser Core.Text
deleteUser_accessToken = Lens.lens (\DeleteUser' {accessToken} -> accessToken) (\s@DeleteUser' {} a -> s {accessToken = a} :: DeleteUser) Core.. Core._Sensitive

instance Core.AWSRequest DeleteUser where
  type AWSResponse DeleteUser = DeleteUserResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull DeleteUserResponse'

instance Core.Hashable DeleteUser

instance Core.NFData DeleteUser

instance Core.ToHeaders DeleteUser where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.DeleteUser" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteUser where
  toJSON DeleteUser' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("AccessToken" Core..= accessToken)]
      )

instance Core.ToPath DeleteUser where
  toPath = Core.const "/"

instance Core.ToQuery DeleteUser where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteUserResponse' smart constructor.
data DeleteUserResponse = DeleteUserResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteUserResponse ::
  DeleteUserResponse
newDeleteUserResponse = DeleteUserResponse'

instance Core.NFData DeleteUserResponse
