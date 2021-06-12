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
-- Module      : Network.AWS.SageMaker.DeleteUserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user profile. When a user profile is deleted, the user loses
-- access to their EFS volume, including data, notebooks, and other
-- artifacts.
module Network.AWS.SageMaker.DeleteUserProfile
  ( -- * Creating a Request
    DeleteUserProfile (..),
    newDeleteUserProfile,

    -- * Request Lenses
    deleteUserProfile_domainId,
    deleteUserProfile_userProfileName,

    -- * Destructuring the Response
    DeleteUserProfileResponse (..),
    newDeleteUserProfileResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newDeleteUserProfile' smart constructor.
data DeleteUserProfile = DeleteUserProfile'
  { -- | The domain ID.
    domainId :: Core.Text,
    -- | The user profile name.
    userProfileName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteUserProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainId', 'deleteUserProfile_domainId' - The domain ID.
--
-- 'userProfileName', 'deleteUserProfile_userProfileName' - The user profile name.
newDeleteUserProfile ::
  -- | 'domainId'
  Core.Text ->
  -- | 'userProfileName'
  Core.Text ->
  DeleteUserProfile
newDeleteUserProfile pDomainId_ pUserProfileName_ =
  DeleteUserProfile'
    { domainId = pDomainId_,
      userProfileName = pUserProfileName_
    }

-- | The domain ID.
deleteUserProfile_domainId :: Lens.Lens' DeleteUserProfile Core.Text
deleteUserProfile_domainId = Lens.lens (\DeleteUserProfile' {domainId} -> domainId) (\s@DeleteUserProfile' {} a -> s {domainId = a} :: DeleteUserProfile)

-- | The user profile name.
deleteUserProfile_userProfileName :: Lens.Lens' DeleteUserProfile Core.Text
deleteUserProfile_userProfileName = Lens.lens (\DeleteUserProfile' {userProfileName} -> userProfileName) (\s@DeleteUserProfile' {} a -> s {userProfileName = a} :: DeleteUserProfile)

instance Core.AWSRequest DeleteUserProfile where
  type
    AWSResponse DeleteUserProfile =
      DeleteUserProfileResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteUserProfileResponse'

instance Core.Hashable DeleteUserProfile

instance Core.NFData DeleteUserProfile

instance Core.ToHeaders DeleteUserProfile where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.DeleteUserProfile" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteUserProfile where
  toJSON DeleteUserProfile' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("DomainId" Core..= domainId),
            Core.Just
              ("UserProfileName" Core..= userProfileName)
          ]
      )

instance Core.ToPath DeleteUserProfile where
  toPath = Core.const "/"

instance Core.ToQuery DeleteUserProfile where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteUserProfileResponse' smart constructor.
data DeleteUserProfileResponse = DeleteUserProfileResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteUserProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteUserProfileResponse ::
  DeleteUserProfileResponse
newDeleteUserProfileResponse =
  DeleteUserProfileResponse'

instance Core.NFData DeleteUserProfileResponse
