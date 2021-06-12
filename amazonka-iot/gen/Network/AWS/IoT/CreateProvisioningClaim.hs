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
-- Module      : Network.AWS.IoT.CreateProvisioningClaim
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a provisioning claim.
module Network.AWS.IoT.CreateProvisioningClaim
  ( -- * Creating a Request
    CreateProvisioningClaim (..),
    newCreateProvisioningClaim,

    -- * Request Lenses
    createProvisioningClaim_templateName,

    -- * Destructuring the Response
    CreateProvisioningClaimResponse (..),
    newCreateProvisioningClaimResponse,

    -- * Response Lenses
    createProvisioningClaimResponse_expiration,
    createProvisioningClaimResponse_keyPair,
    createProvisioningClaimResponse_certificateId,
    createProvisioningClaimResponse_certificatePem,
    createProvisioningClaimResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateProvisioningClaim' smart constructor.
data CreateProvisioningClaim = CreateProvisioningClaim'
  { -- | The name of the provisioning template to use.
    templateName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateProvisioningClaim' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'templateName', 'createProvisioningClaim_templateName' - The name of the provisioning template to use.
newCreateProvisioningClaim ::
  -- | 'templateName'
  Core.Text ->
  CreateProvisioningClaim
newCreateProvisioningClaim pTemplateName_ =
  CreateProvisioningClaim'
    { templateName =
        pTemplateName_
    }

-- | The name of the provisioning template to use.
createProvisioningClaim_templateName :: Lens.Lens' CreateProvisioningClaim Core.Text
createProvisioningClaim_templateName = Lens.lens (\CreateProvisioningClaim' {templateName} -> templateName) (\s@CreateProvisioningClaim' {} a -> s {templateName = a} :: CreateProvisioningClaim)

instance Core.AWSRequest CreateProvisioningClaim where
  type
    AWSResponse CreateProvisioningClaim =
      CreateProvisioningClaimResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateProvisioningClaimResponse'
            Core.<$> (x Core..?> "expiration")
            Core.<*> (x Core..?> "keyPair")
            Core.<*> (x Core..?> "certificateId")
            Core.<*> (x Core..?> "certificatePem")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateProvisioningClaim

instance Core.NFData CreateProvisioningClaim

instance Core.ToHeaders CreateProvisioningClaim where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON CreateProvisioningClaim where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath CreateProvisioningClaim where
  toPath CreateProvisioningClaim' {..} =
    Core.mconcat
      [ "/provisioning-templates/",
        Core.toBS templateName,
        "/provisioning-claim"
      ]

instance Core.ToQuery CreateProvisioningClaim where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateProvisioningClaimResponse' smart constructor.
data CreateProvisioningClaimResponse = CreateProvisioningClaimResponse'
  { -- | The provisioning claim expiration time.
    expiration :: Core.Maybe Core.POSIX,
    -- | The provisioning claim key pair.
    keyPair :: Core.Maybe KeyPair,
    -- | The ID of the certificate.
    certificateId :: Core.Maybe Core.Text,
    -- | The provisioning claim certificate.
    certificatePem :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateProvisioningClaimResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expiration', 'createProvisioningClaimResponse_expiration' - The provisioning claim expiration time.
--
-- 'keyPair', 'createProvisioningClaimResponse_keyPair' - The provisioning claim key pair.
--
-- 'certificateId', 'createProvisioningClaimResponse_certificateId' - The ID of the certificate.
--
-- 'certificatePem', 'createProvisioningClaimResponse_certificatePem' - The provisioning claim certificate.
--
-- 'httpStatus', 'createProvisioningClaimResponse_httpStatus' - The response's http status code.
newCreateProvisioningClaimResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateProvisioningClaimResponse
newCreateProvisioningClaimResponse pHttpStatus_ =
  CreateProvisioningClaimResponse'
    { expiration =
        Core.Nothing,
      keyPair = Core.Nothing,
      certificateId = Core.Nothing,
      certificatePem = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The provisioning claim expiration time.
createProvisioningClaimResponse_expiration :: Lens.Lens' CreateProvisioningClaimResponse (Core.Maybe Core.UTCTime)
createProvisioningClaimResponse_expiration = Lens.lens (\CreateProvisioningClaimResponse' {expiration} -> expiration) (\s@CreateProvisioningClaimResponse' {} a -> s {expiration = a} :: CreateProvisioningClaimResponse) Core.. Lens.mapping Core._Time

-- | The provisioning claim key pair.
createProvisioningClaimResponse_keyPair :: Lens.Lens' CreateProvisioningClaimResponse (Core.Maybe KeyPair)
createProvisioningClaimResponse_keyPair = Lens.lens (\CreateProvisioningClaimResponse' {keyPair} -> keyPair) (\s@CreateProvisioningClaimResponse' {} a -> s {keyPair = a} :: CreateProvisioningClaimResponse)

-- | The ID of the certificate.
createProvisioningClaimResponse_certificateId :: Lens.Lens' CreateProvisioningClaimResponse (Core.Maybe Core.Text)
createProvisioningClaimResponse_certificateId = Lens.lens (\CreateProvisioningClaimResponse' {certificateId} -> certificateId) (\s@CreateProvisioningClaimResponse' {} a -> s {certificateId = a} :: CreateProvisioningClaimResponse)

-- | The provisioning claim certificate.
createProvisioningClaimResponse_certificatePem :: Lens.Lens' CreateProvisioningClaimResponse (Core.Maybe Core.Text)
createProvisioningClaimResponse_certificatePem = Lens.lens (\CreateProvisioningClaimResponse' {certificatePem} -> certificatePem) (\s@CreateProvisioningClaimResponse' {} a -> s {certificatePem = a} :: CreateProvisioningClaimResponse)

-- | The response's http status code.
createProvisioningClaimResponse_httpStatus :: Lens.Lens' CreateProvisioningClaimResponse Core.Int
createProvisioningClaimResponse_httpStatus = Lens.lens (\CreateProvisioningClaimResponse' {httpStatus} -> httpStatus) (\s@CreateProvisioningClaimResponse' {} a -> s {httpStatus = a} :: CreateProvisioningClaimResponse)

instance Core.NFData CreateProvisioningClaimResponse
