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
-- Module      : Network.AWS.IAM.GetAccountPasswordPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the password policy for the AWS account. This tells you the
-- complexity requirements and mandatory rotation periods for the IAM user
-- passwords in your account. For more information about using a password
-- policy, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html Managing an IAM password policy>.
module Network.AWS.IAM.GetAccountPasswordPolicy
  ( -- * Creating a Request
    GetAccountPasswordPolicy (..),
    newGetAccountPasswordPolicy,

    -- * Destructuring the Response
    GetAccountPasswordPolicyResponse (..),
    newGetAccountPasswordPolicyResponse,

    -- * Response Lenses
    getAccountPasswordPolicyResponse_httpStatus,
    getAccountPasswordPolicyResponse_passwordPolicy,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IAM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAccountPasswordPolicy' smart constructor.
data GetAccountPasswordPolicy = GetAccountPasswordPolicy'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetAccountPasswordPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetAccountPasswordPolicy ::
  GetAccountPasswordPolicy
newGetAccountPasswordPolicy =
  GetAccountPasswordPolicy'

instance Core.AWSRequest GetAccountPasswordPolicy where
  type
    AWSResponse GetAccountPasswordPolicy =
      GetAccountPasswordPolicyResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "GetAccountPasswordPolicyResult"
      ( \s h x ->
          GetAccountPasswordPolicyResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..@ "PasswordPolicy")
      )

instance Core.Hashable GetAccountPasswordPolicy

instance Core.NFData GetAccountPasswordPolicy

instance Core.ToHeaders GetAccountPasswordPolicy where
  toHeaders = Core.const Core.mempty

instance Core.ToPath GetAccountPasswordPolicy where
  toPath = Core.const "/"

instance Core.ToQuery GetAccountPasswordPolicy where
  toQuery =
    Core.const
      ( Core.mconcat
          [ "Action"
              Core.=: ("GetAccountPasswordPolicy" :: Core.ByteString),
            "Version" Core.=: ("2010-05-08" :: Core.ByteString)
          ]
      )

-- | Contains the response to a successful GetAccountPasswordPolicy request.
--
-- /See:/ 'newGetAccountPasswordPolicyResponse' smart constructor.
data GetAccountPasswordPolicyResponse = GetAccountPasswordPolicyResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | A structure that contains details about the account\'s password policy.
    passwordPolicy :: PasswordPolicy
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetAccountPasswordPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getAccountPasswordPolicyResponse_httpStatus' - The response's http status code.
--
-- 'passwordPolicy', 'getAccountPasswordPolicyResponse_passwordPolicy' - A structure that contains details about the account\'s password policy.
newGetAccountPasswordPolicyResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'passwordPolicy'
  PasswordPolicy ->
  GetAccountPasswordPolicyResponse
newGetAccountPasswordPolicyResponse
  pHttpStatus_
  pPasswordPolicy_ =
    GetAccountPasswordPolicyResponse'
      { httpStatus =
          pHttpStatus_,
        passwordPolicy = pPasswordPolicy_
      }

-- | The response's http status code.
getAccountPasswordPolicyResponse_httpStatus :: Lens.Lens' GetAccountPasswordPolicyResponse Core.Int
getAccountPasswordPolicyResponse_httpStatus = Lens.lens (\GetAccountPasswordPolicyResponse' {httpStatus} -> httpStatus) (\s@GetAccountPasswordPolicyResponse' {} a -> s {httpStatus = a} :: GetAccountPasswordPolicyResponse)

-- | A structure that contains details about the account\'s password policy.
getAccountPasswordPolicyResponse_passwordPolicy :: Lens.Lens' GetAccountPasswordPolicyResponse PasswordPolicy
getAccountPasswordPolicyResponse_passwordPolicy = Lens.lens (\GetAccountPasswordPolicyResponse' {passwordPolicy} -> passwordPolicy) (\s@GetAccountPasswordPolicyResponse' {} a -> s {passwordPolicy = a} :: GetAccountPasswordPolicyResponse)

instance Core.NFData GetAccountPasswordPolicyResponse
