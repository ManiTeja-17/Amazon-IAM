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
-- Module      : Network.AWS.IoT.AttachSecurityProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a Device Defender security profile with a thing group or this
-- account. Each thing group or account can have up to five security
-- profiles associated with it.
module Network.AWS.IoT.AttachSecurityProfile
  ( -- * Creating a Request
    AttachSecurityProfile (..),
    newAttachSecurityProfile,

    -- * Request Lenses
    attachSecurityProfile_securityProfileName,
    attachSecurityProfile_securityProfileTargetArn,

    -- * Destructuring the Response
    AttachSecurityProfileResponse (..),
    newAttachSecurityProfileResponse,

    -- * Response Lenses
    attachSecurityProfileResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAttachSecurityProfile' smart constructor.
data AttachSecurityProfile = AttachSecurityProfile'
  { -- | The security profile that is attached.
    securityProfileName :: Core.Text,
    -- | The ARN of the target (thing group) to which the security profile is
    -- attached.
    securityProfileTargetArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AttachSecurityProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityProfileName', 'attachSecurityProfile_securityProfileName' - The security profile that is attached.
--
-- 'securityProfileTargetArn', 'attachSecurityProfile_securityProfileTargetArn' - The ARN of the target (thing group) to which the security profile is
-- attached.
newAttachSecurityProfile ::
  -- | 'securityProfileName'
  Core.Text ->
  -- | 'securityProfileTargetArn'
  Core.Text ->
  AttachSecurityProfile
newAttachSecurityProfile
  pSecurityProfileName_
  pSecurityProfileTargetArn_ =
    AttachSecurityProfile'
      { securityProfileName =
          pSecurityProfileName_,
        securityProfileTargetArn =
          pSecurityProfileTargetArn_
      }

-- | The security profile that is attached.
attachSecurityProfile_securityProfileName :: Lens.Lens' AttachSecurityProfile Core.Text
attachSecurityProfile_securityProfileName = Lens.lens (\AttachSecurityProfile' {securityProfileName} -> securityProfileName) (\s@AttachSecurityProfile' {} a -> s {securityProfileName = a} :: AttachSecurityProfile)

-- | The ARN of the target (thing group) to which the security profile is
-- attached.
attachSecurityProfile_securityProfileTargetArn :: Lens.Lens' AttachSecurityProfile Core.Text
attachSecurityProfile_securityProfileTargetArn = Lens.lens (\AttachSecurityProfile' {securityProfileTargetArn} -> securityProfileTargetArn) (\s@AttachSecurityProfile' {} a -> s {securityProfileTargetArn = a} :: AttachSecurityProfile)

instance Core.AWSRequest AttachSecurityProfile where
  type
    AWSResponse AttachSecurityProfile =
      AttachSecurityProfileResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AttachSecurityProfileResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable AttachSecurityProfile

instance Core.NFData AttachSecurityProfile

instance Core.ToHeaders AttachSecurityProfile where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON AttachSecurityProfile where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath AttachSecurityProfile where
  toPath AttachSecurityProfile' {..} =
    Core.mconcat
      [ "/security-profiles/",
        Core.toBS securityProfileName,
        "/targets"
      ]

instance Core.ToQuery AttachSecurityProfile where
  toQuery AttachSecurityProfile' {..} =
    Core.mconcat
      [ "securityProfileTargetArn"
          Core.=: securityProfileTargetArn
      ]

-- | /See:/ 'newAttachSecurityProfileResponse' smart constructor.
data AttachSecurityProfileResponse = AttachSecurityProfileResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AttachSecurityProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'attachSecurityProfileResponse_httpStatus' - The response's http status code.
newAttachSecurityProfileResponse ::
  -- | 'httpStatus'
  Core.Int ->
  AttachSecurityProfileResponse
newAttachSecurityProfileResponse pHttpStatus_ =
  AttachSecurityProfileResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
attachSecurityProfileResponse_httpStatus :: Lens.Lens' AttachSecurityProfileResponse Core.Int
attachSecurityProfileResponse_httpStatus = Lens.lens (\AttachSecurityProfileResponse' {httpStatus} -> httpStatus) (\s@AttachSecurityProfileResponse' {} a -> s {httpStatus = a} :: AttachSecurityProfileResponse)

instance Core.NFData AttachSecurityProfileResponse
