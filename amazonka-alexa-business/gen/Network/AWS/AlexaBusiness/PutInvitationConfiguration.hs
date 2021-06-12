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
-- Module      : Network.AWS.AlexaBusiness.PutInvitationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures the email template for the user enrollment invitation with
-- the specified attributes.
module Network.AWS.AlexaBusiness.PutInvitationConfiguration
  ( -- * Creating a Request
    PutInvitationConfiguration (..),
    newPutInvitationConfiguration,

    -- * Request Lenses
    putInvitationConfiguration_contactEmail,
    putInvitationConfiguration_privateSkillIds,
    putInvitationConfiguration_organizationName,

    -- * Destructuring the Response
    PutInvitationConfigurationResponse (..),
    newPutInvitationConfigurationResponse,

    -- * Response Lenses
    putInvitationConfigurationResponse_httpStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutInvitationConfiguration' smart constructor.
data PutInvitationConfiguration = PutInvitationConfiguration'
  { -- | The email ID of the organization or individual contact that the enrolled
    -- user can use.
    contactEmail :: Core.Maybe Core.Text,
    -- | The list of private skill IDs that you want to recommend to the user to
    -- enable in the invitation.
    privateSkillIds :: Core.Maybe [Core.Text],
    -- | The name of the organization sending the enrollment invite to a user.
    organizationName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutInvitationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contactEmail', 'putInvitationConfiguration_contactEmail' - The email ID of the organization or individual contact that the enrolled
-- user can use.
--
-- 'privateSkillIds', 'putInvitationConfiguration_privateSkillIds' - The list of private skill IDs that you want to recommend to the user to
-- enable in the invitation.
--
-- 'organizationName', 'putInvitationConfiguration_organizationName' - The name of the organization sending the enrollment invite to a user.
newPutInvitationConfiguration ::
  -- | 'organizationName'
  Core.Text ->
  PutInvitationConfiguration
newPutInvitationConfiguration pOrganizationName_ =
  PutInvitationConfiguration'
    { contactEmail =
        Core.Nothing,
      privateSkillIds = Core.Nothing,
      organizationName = pOrganizationName_
    }

-- | The email ID of the organization or individual contact that the enrolled
-- user can use.
putInvitationConfiguration_contactEmail :: Lens.Lens' PutInvitationConfiguration (Core.Maybe Core.Text)
putInvitationConfiguration_contactEmail = Lens.lens (\PutInvitationConfiguration' {contactEmail} -> contactEmail) (\s@PutInvitationConfiguration' {} a -> s {contactEmail = a} :: PutInvitationConfiguration)

-- | The list of private skill IDs that you want to recommend to the user to
-- enable in the invitation.
putInvitationConfiguration_privateSkillIds :: Lens.Lens' PutInvitationConfiguration (Core.Maybe [Core.Text])
putInvitationConfiguration_privateSkillIds = Lens.lens (\PutInvitationConfiguration' {privateSkillIds} -> privateSkillIds) (\s@PutInvitationConfiguration' {} a -> s {privateSkillIds = a} :: PutInvitationConfiguration) Core.. Lens.mapping Lens._Coerce

-- | The name of the organization sending the enrollment invite to a user.
putInvitationConfiguration_organizationName :: Lens.Lens' PutInvitationConfiguration Core.Text
putInvitationConfiguration_organizationName = Lens.lens (\PutInvitationConfiguration' {organizationName} -> organizationName) (\s@PutInvitationConfiguration' {} a -> s {organizationName = a} :: PutInvitationConfiguration)

instance Core.AWSRequest PutInvitationConfiguration where
  type
    AWSResponse PutInvitationConfiguration =
      PutInvitationConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutInvitationConfigurationResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable PutInvitationConfiguration

instance Core.NFData PutInvitationConfiguration

instance Core.ToHeaders PutInvitationConfiguration where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AlexaForBusiness.PutInvitationConfiguration" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON PutInvitationConfiguration where
  toJSON PutInvitationConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("ContactEmail" Core..=) Core.<$> contactEmail,
            ("PrivateSkillIds" Core..=) Core.<$> privateSkillIds,
            Core.Just
              ("OrganizationName" Core..= organizationName)
          ]
      )

instance Core.ToPath PutInvitationConfiguration where
  toPath = Core.const "/"

instance Core.ToQuery PutInvitationConfiguration where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newPutInvitationConfigurationResponse' smart constructor.
data PutInvitationConfigurationResponse = PutInvitationConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutInvitationConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putInvitationConfigurationResponse_httpStatus' - The response's http status code.
newPutInvitationConfigurationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  PutInvitationConfigurationResponse
newPutInvitationConfigurationResponse pHttpStatus_ =
  PutInvitationConfigurationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
putInvitationConfigurationResponse_httpStatus :: Lens.Lens' PutInvitationConfigurationResponse Core.Int
putInvitationConfigurationResponse_httpStatus = Lens.lens (\PutInvitationConfigurationResponse' {httpStatus} -> httpStatus) (\s@PutInvitationConfigurationResponse' {} a -> s {httpStatus = a} :: PutInvitationConfigurationResponse)

instance
  Core.NFData
    PutInvitationConfigurationResponse
