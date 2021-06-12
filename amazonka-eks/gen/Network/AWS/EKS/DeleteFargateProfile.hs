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
-- Module      : Network.AWS.EKS.DeleteFargateProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an AWS Fargate profile.
--
-- When you delete a Fargate profile, any pods running on Fargate that were
-- created with the profile are deleted. If those pods match another
-- Fargate profile, then they are scheduled on Fargate with that profile.
-- If they no longer match any Fargate profiles, then they are not
-- scheduled on Fargate and they may remain in a pending state.
--
-- Only one Fargate profile in a cluster can be in the @DELETING@ status at
-- a time. You must wait for a Fargate profile to finish deleting before
-- you can delete any other profiles in that cluster.
module Network.AWS.EKS.DeleteFargateProfile
  ( -- * Creating a Request
    DeleteFargateProfile (..),
    newDeleteFargateProfile,

    -- * Request Lenses
    deleteFargateProfile_clusterName,
    deleteFargateProfile_fargateProfileName,

    -- * Destructuring the Response
    DeleteFargateProfileResponse (..),
    newDeleteFargateProfileResponse,

    -- * Response Lenses
    deleteFargateProfileResponse_fargateProfile,
    deleteFargateProfileResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EKS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteFargateProfile' smart constructor.
data DeleteFargateProfile = DeleteFargateProfile'
  { -- | The name of the Amazon EKS cluster associated with the Fargate profile
    -- to delete.
    clusterName :: Core.Text,
    -- | The name of the Fargate profile to delete.
    fargateProfileName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteFargateProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterName', 'deleteFargateProfile_clusterName' - The name of the Amazon EKS cluster associated with the Fargate profile
-- to delete.
--
-- 'fargateProfileName', 'deleteFargateProfile_fargateProfileName' - The name of the Fargate profile to delete.
newDeleteFargateProfile ::
  -- | 'clusterName'
  Core.Text ->
  -- | 'fargateProfileName'
  Core.Text ->
  DeleteFargateProfile
newDeleteFargateProfile
  pClusterName_
  pFargateProfileName_ =
    DeleteFargateProfile'
      { clusterName = pClusterName_,
        fargateProfileName = pFargateProfileName_
      }

-- | The name of the Amazon EKS cluster associated with the Fargate profile
-- to delete.
deleteFargateProfile_clusterName :: Lens.Lens' DeleteFargateProfile Core.Text
deleteFargateProfile_clusterName = Lens.lens (\DeleteFargateProfile' {clusterName} -> clusterName) (\s@DeleteFargateProfile' {} a -> s {clusterName = a} :: DeleteFargateProfile)

-- | The name of the Fargate profile to delete.
deleteFargateProfile_fargateProfileName :: Lens.Lens' DeleteFargateProfile Core.Text
deleteFargateProfile_fargateProfileName = Lens.lens (\DeleteFargateProfile' {fargateProfileName} -> fargateProfileName) (\s@DeleteFargateProfile' {} a -> s {fargateProfileName = a} :: DeleteFargateProfile)

instance Core.AWSRequest DeleteFargateProfile where
  type
    AWSResponse DeleteFargateProfile =
      DeleteFargateProfileResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteFargateProfileResponse'
            Core.<$> (x Core..?> "fargateProfile")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteFargateProfile

instance Core.NFData DeleteFargateProfile

instance Core.ToHeaders DeleteFargateProfile where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToPath DeleteFargateProfile where
  toPath DeleteFargateProfile' {..} =
    Core.mconcat
      [ "/clusters/",
        Core.toBS clusterName,
        "/fargate-profiles/",
        Core.toBS fargateProfileName
      ]

instance Core.ToQuery DeleteFargateProfile where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteFargateProfileResponse' smart constructor.
data DeleteFargateProfileResponse = DeleteFargateProfileResponse'
  { -- | The deleted Fargate profile.
    fargateProfile :: Core.Maybe FargateProfile,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteFargateProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fargateProfile', 'deleteFargateProfileResponse_fargateProfile' - The deleted Fargate profile.
--
-- 'httpStatus', 'deleteFargateProfileResponse_httpStatus' - The response's http status code.
newDeleteFargateProfileResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteFargateProfileResponse
newDeleteFargateProfileResponse pHttpStatus_ =
  DeleteFargateProfileResponse'
    { fargateProfile =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The deleted Fargate profile.
deleteFargateProfileResponse_fargateProfile :: Lens.Lens' DeleteFargateProfileResponse (Core.Maybe FargateProfile)
deleteFargateProfileResponse_fargateProfile = Lens.lens (\DeleteFargateProfileResponse' {fargateProfile} -> fargateProfile) (\s@DeleteFargateProfileResponse' {} a -> s {fargateProfile = a} :: DeleteFargateProfileResponse)

-- | The response's http status code.
deleteFargateProfileResponse_httpStatus :: Lens.Lens' DeleteFargateProfileResponse Core.Int
deleteFargateProfileResponse_httpStatus = Lens.lens (\DeleteFargateProfileResponse' {httpStatus} -> httpStatus) (\s@DeleteFargateProfileResponse' {} a -> s {httpStatus = a} :: DeleteFargateProfileResponse)

instance Core.NFData DeleteFargateProfileResponse
