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
-- Module      : Network.AWS.Greengrass.CreateGroupCertificateAuthority
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a CA for the group. If a CA already exists, it will rotate the
-- existing CA.
module Network.AWS.Greengrass.CreateGroupCertificateAuthority
  ( -- * Creating a Request
    CreateGroupCertificateAuthority (..),
    newCreateGroupCertificateAuthority,

    -- * Request Lenses
    createGroupCertificateAuthority_amznClientToken,
    createGroupCertificateAuthority_groupId,

    -- * Destructuring the Response
    CreateGroupCertificateAuthorityResponse (..),
    newCreateGroupCertificateAuthorityResponse,

    -- * Response Lenses
    createGroupCertificateAuthorityResponse_groupCertificateAuthorityArn,
    createGroupCertificateAuthorityResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Greengrass.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateGroupCertificateAuthority' smart constructor.
data CreateGroupCertificateAuthority = CreateGroupCertificateAuthority'
  { -- | A client token used to correlate requests and responses.
    amznClientToken :: Core.Maybe Core.Text,
    -- | The ID of the Greengrass group.
    groupId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateGroupCertificateAuthority' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'amznClientToken', 'createGroupCertificateAuthority_amznClientToken' - A client token used to correlate requests and responses.
--
-- 'groupId', 'createGroupCertificateAuthority_groupId' - The ID of the Greengrass group.
newCreateGroupCertificateAuthority ::
  -- | 'groupId'
  Core.Text ->
  CreateGroupCertificateAuthority
newCreateGroupCertificateAuthority pGroupId_ =
  CreateGroupCertificateAuthority'
    { amznClientToken =
        Core.Nothing,
      groupId = pGroupId_
    }

-- | A client token used to correlate requests and responses.
createGroupCertificateAuthority_amznClientToken :: Lens.Lens' CreateGroupCertificateAuthority (Core.Maybe Core.Text)
createGroupCertificateAuthority_amznClientToken = Lens.lens (\CreateGroupCertificateAuthority' {amznClientToken} -> amznClientToken) (\s@CreateGroupCertificateAuthority' {} a -> s {amznClientToken = a} :: CreateGroupCertificateAuthority)

-- | The ID of the Greengrass group.
createGroupCertificateAuthority_groupId :: Lens.Lens' CreateGroupCertificateAuthority Core.Text
createGroupCertificateAuthority_groupId = Lens.lens (\CreateGroupCertificateAuthority' {groupId} -> groupId) (\s@CreateGroupCertificateAuthority' {} a -> s {groupId = a} :: CreateGroupCertificateAuthority)

instance
  Core.AWSRequest
    CreateGroupCertificateAuthority
  where
  type
    AWSResponse CreateGroupCertificateAuthority =
      CreateGroupCertificateAuthorityResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateGroupCertificateAuthorityResponse'
            Core.<$> (x Core..?> "GroupCertificateAuthorityArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    CreateGroupCertificateAuthority

instance Core.NFData CreateGroupCertificateAuthority

instance
  Core.ToHeaders
    CreateGroupCertificateAuthority
  where
  toHeaders CreateGroupCertificateAuthority' {..} =
    Core.mconcat
      [ "X-Amzn-Client-Token" Core.=# amznClientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
      ]

instance Core.ToJSON CreateGroupCertificateAuthority where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath CreateGroupCertificateAuthority where
  toPath CreateGroupCertificateAuthority' {..} =
    Core.mconcat
      [ "/greengrass/groups/",
        Core.toBS groupId,
        "/certificateauthorities"
      ]

instance Core.ToQuery CreateGroupCertificateAuthority where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateGroupCertificateAuthorityResponse' smart constructor.
data CreateGroupCertificateAuthorityResponse = CreateGroupCertificateAuthorityResponse'
  { -- | The ARN of the group certificate authority.
    groupCertificateAuthorityArn :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateGroupCertificateAuthorityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupCertificateAuthorityArn', 'createGroupCertificateAuthorityResponse_groupCertificateAuthorityArn' - The ARN of the group certificate authority.
--
-- 'httpStatus', 'createGroupCertificateAuthorityResponse_httpStatus' - The response's http status code.
newCreateGroupCertificateAuthorityResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateGroupCertificateAuthorityResponse
newCreateGroupCertificateAuthorityResponse
  pHttpStatus_ =
    CreateGroupCertificateAuthorityResponse'
      { groupCertificateAuthorityArn =
          Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The ARN of the group certificate authority.
createGroupCertificateAuthorityResponse_groupCertificateAuthorityArn :: Lens.Lens' CreateGroupCertificateAuthorityResponse (Core.Maybe Core.Text)
createGroupCertificateAuthorityResponse_groupCertificateAuthorityArn = Lens.lens (\CreateGroupCertificateAuthorityResponse' {groupCertificateAuthorityArn} -> groupCertificateAuthorityArn) (\s@CreateGroupCertificateAuthorityResponse' {} a -> s {groupCertificateAuthorityArn = a} :: CreateGroupCertificateAuthorityResponse)

-- | The response's http status code.
createGroupCertificateAuthorityResponse_httpStatus :: Lens.Lens' CreateGroupCertificateAuthorityResponse Core.Int
createGroupCertificateAuthorityResponse_httpStatus = Lens.lens (\CreateGroupCertificateAuthorityResponse' {httpStatus} -> httpStatus) (\s@CreateGroupCertificateAuthorityResponse' {} a -> s {httpStatus = a} :: CreateGroupCertificateAuthorityResponse)

instance
  Core.NFData
    CreateGroupCertificateAuthorityResponse
