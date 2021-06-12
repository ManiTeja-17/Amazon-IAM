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
-- Module      : Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the certificate and certificate chain for your private
-- certificate authority (CA) or one that has been shared with you. Both
-- the certificate and the chain are base64 PEM-encoded. The chain does not
-- include the CA certificate. Each certificate in the chain signs the one
-- before it.
module Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCertificate
  ( -- * Creating a Request
    GetCertificateAuthorityCertificate (..),
    newGetCertificateAuthorityCertificate,

    -- * Request Lenses
    getCertificateAuthorityCertificate_certificateAuthorityArn,

    -- * Destructuring the Response
    GetCertificateAuthorityCertificateResponse (..),
    newGetCertificateAuthorityCertificateResponse,

    -- * Response Lenses
    getCertificateAuthorityCertificateResponse_certificateChain,
    getCertificateAuthorityCertificateResponse_certificate,
    getCertificateAuthorityCertificateResponse_httpStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetCertificateAuthorityCertificate' smart constructor.
data GetCertificateAuthorityCertificate = GetCertificateAuthorityCertificate'
  { -- | The Amazon Resource Name (ARN) of your private CA. This is of the form:
    --
    -- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012 @.
    certificateAuthorityArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetCertificateAuthorityCertificate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateAuthorityArn', 'getCertificateAuthorityCertificate_certificateAuthorityArn' - The Amazon Resource Name (ARN) of your private CA. This is of the form:
--
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012 @.
newGetCertificateAuthorityCertificate ::
  -- | 'certificateAuthorityArn'
  Core.Text ->
  GetCertificateAuthorityCertificate
newGetCertificateAuthorityCertificate
  pCertificateAuthorityArn_ =
    GetCertificateAuthorityCertificate'
      { certificateAuthorityArn =
          pCertificateAuthorityArn_
      }

-- | The Amazon Resource Name (ARN) of your private CA. This is of the form:
--
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012 @.
getCertificateAuthorityCertificate_certificateAuthorityArn :: Lens.Lens' GetCertificateAuthorityCertificate Core.Text
getCertificateAuthorityCertificate_certificateAuthorityArn = Lens.lens (\GetCertificateAuthorityCertificate' {certificateAuthorityArn} -> certificateAuthorityArn) (\s@GetCertificateAuthorityCertificate' {} a -> s {certificateAuthorityArn = a} :: GetCertificateAuthorityCertificate)

instance
  Core.AWSRequest
    GetCertificateAuthorityCertificate
  where
  type
    AWSResponse GetCertificateAuthorityCertificate =
      GetCertificateAuthorityCertificateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCertificateAuthorityCertificateResponse'
            Core.<$> (x Core..?> "CertificateChain")
            Core.<*> (x Core..?> "Certificate")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    GetCertificateAuthorityCertificate

instance
  Core.NFData
    GetCertificateAuthorityCertificate

instance
  Core.ToHeaders
    GetCertificateAuthorityCertificate
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ACMPrivateCA.GetCertificateAuthorityCertificate" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance
  Core.ToJSON
    GetCertificateAuthorityCertificate
  where
  toJSON GetCertificateAuthorityCertificate' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ( "CertificateAuthorityArn"
                  Core..= certificateAuthorityArn
              )
          ]
      )

instance
  Core.ToPath
    GetCertificateAuthorityCertificate
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    GetCertificateAuthorityCertificate
  where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetCertificateAuthorityCertificateResponse' smart constructor.
data GetCertificateAuthorityCertificateResponse = GetCertificateAuthorityCertificateResponse'
  { -- | Base64-encoded certificate chain that includes any intermediate
    -- certificates and chains up to root certificate that you used to sign
    -- your private CA certificate. The chain does not include your private CA
    -- certificate. If this is a root CA, the value will be null.
    certificateChain :: Core.Maybe Core.Text,
    -- | Base64-encoded certificate authority (CA) certificate.
    certificate :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetCertificateAuthorityCertificateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateChain', 'getCertificateAuthorityCertificateResponse_certificateChain' - Base64-encoded certificate chain that includes any intermediate
-- certificates and chains up to root certificate that you used to sign
-- your private CA certificate. The chain does not include your private CA
-- certificate. If this is a root CA, the value will be null.
--
-- 'certificate', 'getCertificateAuthorityCertificateResponse_certificate' - Base64-encoded certificate authority (CA) certificate.
--
-- 'httpStatus', 'getCertificateAuthorityCertificateResponse_httpStatus' - The response's http status code.
newGetCertificateAuthorityCertificateResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetCertificateAuthorityCertificateResponse
newGetCertificateAuthorityCertificateResponse
  pHttpStatus_ =
    GetCertificateAuthorityCertificateResponse'
      { certificateChain =
          Core.Nothing,
        certificate = Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Base64-encoded certificate chain that includes any intermediate
-- certificates and chains up to root certificate that you used to sign
-- your private CA certificate. The chain does not include your private CA
-- certificate. If this is a root CA, the value will be null.
getCertificateAuthorityCertificateResponse_certificateChain :: Lens.Lens' GetCertificateAuthorityCertificateResponse (Core.Maybe Core.Text)
getCertificateAuthorityCertificateResponse_certificateChain = Lens.lens (\GetCertificateAuthorityCertificateResponse' {certificateChain} -> certificateChain) (\s@GetCertificateAuthorityCertificateResponse' {} a -> s {certificateChain = a} :: GetCertificateAuthorityCertificateResponse)

-- | Base64-encoded certificate authority (CA) certificate.
getCertificateAuthorityCertificateResponse_certificate :: Lens.Lens' GetCertificateAuthorityCertificateResponse (Core.Maybe Core.Text)
getCertificateAuthorityCertificateResponse_certificate = Lens.lens (\GetCertificateAuthorityCertificateResponse' {certificate} -> certificate) (\s@GetCertificateAuthorityCertificateResponse' {} a -> s {certificate = a} :: GetCertificateAuthorityCertificateResponse)

-- | The response's http status code.
getCertificateAuthorityCertificateResponse_httpStatus :: Lens.Lens' GetCertificateAuthorityCertificateResponse Core.Int
getCertificateAuthorityCertificateResponse_httpStatus = Lens.lens (\GetCertificateAuthorityCertificateResponse' {httpStatus} -> httpStatus) (\s@GetCertificateAuthorityCertificateResponse' {} a -> s {httpStatus = a} :: GetCertificateAuthorityCertificateResponse)

instance
  Core.NFData
    GetCertificateAuthorityCertificateResponse
