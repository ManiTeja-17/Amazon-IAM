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
-- Module      : Network.AWS.IoT.RegisterCertificateWithoutCA
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Register a certificate that does not have a certificate authority (CA).
module Network.AWS.IoT.RegisterCertificateWithoutCA
  ( -- * Creating a Request
    RegisterCertificateWithoutCA (..),
    newRegisterCertificateWithoutCA,

    -- * Request Lenses
    registerCertificateWithoutCA_status,
    registerCertificateWithoutCA_certificatePem,

    -- * Destructuring the Response
    RegisterCertificateWithoutCAResponse (..),
    newRegisterCertificateWithoutCAResponse,

    -- * Response Lenses
    registerCertificateWithoutCAResponse_certificateArn,
    registerCertificateWithoutCAResponse_certificateId,
    registerCertificateWithoutCAResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRegisterCertificateWithoutCA' smart constructor.
data RegisterCertificateWithoutCA = RegisterCertificateWithoutCA'
  { -- | The status of the register certificate request.
    status :: Core.Maybe CertificateStatus,
    -- | The certificate data, in PEM format.
    certificatePem :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RegisterCertificateWithoutCA' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'registerCertificateWithoutCA_status' - The status of the register certificate request.
--
-- 'certificatePem', 'registerCertificateWithoutCA_certificatePem' - The certificate data, in PEM format.
newRegisterCertificateWithoutCA ::
  -- | 'certificatePem'
  Core.Text ->
  RegisterCertificateWithoutCA
newRegisterCertificateWithoutCA pCertificatePem_ =
  RegisterCertificateWithoutCA'
    { status =
        Core.Nothing,
      certificatePem = pCertificatePem_
    }

-- | The status of the register certificate request.
registerCertificateWithoutCA_status :: Lens.Lens' RegisterCertificateWithoutCA (Core.Maybe CertificateStatus)
registerCertificateWithoutCA_status = Lens.lens (\RegisterCertificateWithoutCA' {status} -> status) (\s@RegisterCertificateWithoutCA' {} a -> s {status = a} :: RegisterCertificateWithoutCA)

-- | The certificate data, in PEM format.
registerCertificateWithoutCA_certificatePem :: Lens.Lens' RegisterCertificateWithoutCA Core.Text
registerCertificateWithoutCA_certificatePem = Lens.lens (\RegisterCertificateWithoutCA' {certificatePem} -> certificatePem) (\s@RegisterCertificateWithoutCA' {} a -> s {certificatePem = a} :: RegisterCertificateWithoutCA)

instance Core.AWSRequest RegisterCertificateWithoutCA where
  type
    AWSResponse RegisterCertificateWithoutCA =
      RegisterCertificateWithoutCAResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RegisterCertificateWithoutCAResponse'
            Core.<$> (x Core..?> "certificateArn")
            Core.<*> (x Core..?> "certificateId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable RegisterCertificateWithoutCA

instance Core.NFData RegisterCertificateWithoutCA

instance Core.ToHeaders RegisterCertificateWithoutCA where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON RegisterCertificateWithoutCA where
  toJSON RegisterCertificateWithoutCA' {..} =
    Core.object
      ( Core.catMaybes
          [ ("status" Core..=) Core.<$> status,
            Core.Just ("certificatePem" Core..= certificatePem)
          ]
      )

instance Core.ToPath RegisterCertificateWithoutCA where
  toPath = Core.const "/certificate/register-no-ca"

instance Core.ToQuery RegisterCertificateWithoutCA where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newRegisterCertificateWithoutCAResponse' smart constructor.
data RegisterCertificateWithoutCAResponse = RegisterCertificateWithoutCAResponse'
  { -- | The Amazon Resource Name (ARN) of the registered certificate.
    certificateArn :: Core.Maybe Core.Text,
    -- | The ID of the registered certificate. (The last part of the certificate
    -- ARN contains the certificate ID.
    certificateId :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RegisterCertificateWithoutCAResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateArn', 'registerCertificateWithoutCAResponse_certificateArn' - The Amazon Resource Name (ARN) of the registered certificate.
--
-- 'certificateId', 'registerCertificateWithoutCAResponse_certificateId' - The ID of the registered certificate. (The last part of the certificate
-- ARN contains the certificate ID.
--
-- 'httpStatus', 'registerCertificateWithoutCAResponse_httpStatus' - The response's http status code.
newRegisterCertificateWithoutCAResponse ::
  -- | 'httpStatus'
  Core.Int ->
  RegisterCertificateWithoutCAResponse
newRegisterCertificateWithoutCAResponse pHttpStatus_ =
  RegisterCertificateWithoutCAResponse'
    { certificateArn =
        Core.Nothing,
      certificateId = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the registered certificate.
registerCertificateWithoutCAResponse_certificateArn :: Lens.Lens' RegisterCertificateWithoutCAResponse (Core.Maybe Core.Text)
registerCertificateWithoutCAResponse_certificateArn = Lens.lens (\RegisterCertificateWithoutCAResponse' {certificateArn} -> certificateArn) (\s@RegisterCertificateWithoutCAResponse' {} a -> s {certificateArn = a} :: RegisterCertificateWithoutCAResponse)

-- | The ID of the registered certificate. (The last part of the certificate
-- ARN contains the certificate ID.
registerCertificateWithoutCAResponse_certificateId :: Lens.Lens' RegisterCertificateWithoutCAResponse (Core.Maybe Core.Text)
registerCertificateWithoutCAResponse_certificateId = Lens.lens (\RegisterCertificateWithoutCAResponse' {certificateId} -> certificateId) (\s@RegisterCertificateWithoutCAResponse' {} a -> s {certificateId = a} :: RegisterCertificateWithoutCAResponse)

-- | The response's http status code.
registerCertificateWithoutCAResponse_httpStatus :: Lens.Lens' RegisterCertificateWithoutCAResponse Core.Int
registerCertificateWithoutCAResponse_httpStatus = Lens.lens (\RegisterCertificateWithoutCAResponse' {httpStatus} -> httpStatus) (\s@RegisterCertificateWithoutCAResponse' {} a -> s {httpStatus = a} :: RegisterCertificateWithoutCAResponse)

instance
  Core.NFData
    RegisterCertificateWithoutCAResponse
