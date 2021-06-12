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
-- Module      : Network.AWS.CertificateManagerPCA.GetPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the resource-based policy attached to a private CA. If either
-- the private CA resource or the policy cannot be found, this action
-- returns a @ResourceNotFoundException@.
--
-- The policy can be attached or updated with
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_PutPolicy.html PutPolicy>
-- and removed with
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePolicy.html DeletePolicy>.
--
-- __About Policies__
--
-- -   A policy grants access on a private CA to an AWS customer account,
--     to AWS Organizations, or to an AWS Organizations unit. Policies are
--     under the control of a CA administrator. For more information, see
--     <https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html Using a Resource Based Policy with ACM Private CA>.
--
-- -   A policy permits a user of AWS Certificate Manager (ACM) to issue
--     ACM certificates signed by a CA in another account.
--
-- -   For ACM to manage automatic renewal of these certificates, the ACM
--     user must configure a Service Linked Role (SLR). The SLR allows the
--     ACM service to assume the identity of the user, subject to
--     confirmation against the ACM Private CA policy. For more
--     information, see
--     <https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html Using a Service Linked Role with ACM>.
--
-- -   Updates made in AWS Resource Manager (RAM) are reflected in
--     policies. For more information, see
--     <https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html Attach a Policy for Cross-Account Access>.
module Network.AWS.CertificateManagerPCA.GetPolicy
  ( -- * Creating a Request
    GetPolicy (..),
    newGetPolicy,

    -- * Request Lenses
    getPolicy_resourceArn,

    -- * Destructuring the Response
    GetPolicyResponse (..),
    newGetPolicyResponse,

    -- * Response Lenses
    getPolicyResponse_policy,
    getPolicyResponse_httpStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetPolicy' smart constructor.
data GetPolicy = GetPolicy'
  { -- | The Amazon Resource Number (ARN) of the private CA that will have its
    -- policy retrieved. You can find the CA\'s ARN by calling the
    -- ListCertificateAuthorities action.
    resourceArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceArn', 'getPolicy_resourceArn' - The Amazon Resource Number (ARN) of the private CA that will have its
-- policy retrieved. You can find the CA\'s ARN by calling the
-- ListCertificateAuthorities action.
newGetPolicy ::
  -- | 'resourceArn'
  Core.Text ->
  GetPolicy
newGetPolicy pResourceArn_ =
  GetPolicy' {resourceArn = pResourceArn_}

-- | The Amazon Resource Number (ARN) of the private CA that will have its
-- policy retrieved. You can find the CA\'s ARN by calling the
-- ListCertificateAuthorities action.
getPolicy_resourceArn :: Lens.Lens' GetPolicy Core.Text
getPolicy_resourceArn = Lens.lens (\GetPolicy' {resourceArn} -> resourceArn) (\s@GetPolicy' {} a -> s {resourceArn = a} :: GetPolicy)

instance Core.AWSRequest GetPolicy where
  type AWSResponse GetPolicy = GetPolicyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPolicyResponse'
            Core.<$> (x Core..?> "Policy")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetPolicy

instance Core.NFData GetPolicy

instance Core.ToHeaders GetPolicy where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("ACMPrivateCA.GetPolicy" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetPolicy where
  toJSON GetPolicy' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("ResourceArn" Core..= resourceArn)]
      )

instance Core.ToPath GetPolicy where
  toPath = Core.const "/"

instance Core.ToQuery GetPolicy where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetPolicyResponse' smart constructor.
data GetPolicyResponse = GetPolicyResponse'
  { -- | The policy attached to the private CA as a JSON document.
    policy :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policy', 'getPolicyResponse_policy' - The policy attached to the private CA as a JSON document.
--
-- 'httpStatus', 'getPolicyResponse_httpStatus' - The response's http status code.
newGetPolicyResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetPolicyResponse
newGetPolicyResponse pHttpStatus_ =
  GetPolicyResponse'
    { policy = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The policy attached to the private CA as a JSON document.
getPolicyResponse_policy :: Lens.Lens' GetPolicyResponse (Core.Maybe Core.Text)
getPolicyResponse_policy = Lens.lens (\GetPolicyResponse' {policy} -> policy) (\s@GetPolicyResponse' {} a -> s {policy = a} :: GetPolicyResponse)

-- | The response's http status code.
getPolicyResponse_httpStatus :: Lens.Lens' GetPolicyResponse Core.Int
getPolicyResponse_httpStatus = Lens.lens (\GetPolicyResponse' {httpStatus} -> httpStatus) (\s@GetPolicyResponse' {} a -> s {httpStatus = a} :: GetPolicyResponse)

instance Core.NFData GetPolicyResponse
