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
-- Module      : Network.AWS.Route53Domains.ResendContactReachabilityEmail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For operations that require confirmation that the email address for the
-- registrant contact is valid, such as registering a new domain, this
-- operation resends the confirmation email to the current email address
-- for the registrant contact.
module Network.AWS.Route53Domains.ResendContactReachabilityEmail
  ( -- * Creating a Request
    ResendContactReachabilityEmail (..),
    newResendContactReachabilityEmail,

    -- * Request Lenses
    resendContactReachabilityEmail_domainName,

    -- * Destructuring the Response
    ResendContactReachabilityEmailResponse (..),
    newResendContactReachabilityEmailResponse,

    -- * Response Lenses
    resendContactReachabilityEmailResponse_isAlreadyVerified,
    resendContactReachabilityEmailResponse_domainName,
    resendContactReachabilityEmailResponse_emailAddress,
    resendContactReachabilityEmailResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Domains.Types

-- | /See:/ 'newResendContactReachabilityEmail' smart constructor.
data ResendContactReachabilityEmail = ResendContactReachabilityEmail'
  { -- | The name of the domain for which you want Route 53 to resend a
    -- confirmation email to the registrant contact.
    domainName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResendContactReachabilityEmail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'resendContactReachabilityEmail_domainName' - The name of the domain for which you want Route 53 to resend a
-- confirmation email to the registrant contact.
newResendContactReachabilityEmail ::
  ResendContactReachabilityEmail
newResendContactReachabilityEmail =
  ResendContactReachabilityEmail'
    { domainName =
        Core.Nothing
    }

-- | The name of the domain for which you want Route 53 to resend a
-- confirmation email to the registrant contact.
resendContactReachabilityEmail_domainName :: Lens.Lens' ResendContactReachabilityEmail (Core.Maybe Core.Text)
resendContactReachabilityEmail_domainName = Lens.lens (\ResendContactReachabilityEmail' {domainName} -> domainName) (\s@ResendContactReachabilityEmail' {} a -> s {domainName = a} :: ResendContactReachabilityEmail)

instance
  Core.AWSRequest
    ResendContactReachabilityEmail
  where
  type
    AWSResponse ResendContactReachabilityEmail =
      ResendContactReachabilityEmailResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ResendContactReachabilityEmailResponse'
            Core.<$> (x Core..?> "isAlreadyVerified")
            Core.<*> (x Core..?> "domainName")
            Core.<*> (x Core..?> "emailAddress")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ResendContactReachabilityEmail

instance Core.NFData ResendContactReachabilityEmail

instance
  Core.ToHeaders
    ResendContactReachabilityEmail
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Domains_v20140515.ResendContactReachabilityEmail" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ResendContactReachabilityEmail where
  toJSON ResendContactReachabilityEmail' {..} =
    Core.object
      ( Core.catMaybes
          [("domainName" Core..=) Core.<$> domainName]
      )

instance Core.ToPath ResendContactReachabilityEmail where
  toPath = Core.const "/"

instance Core.ToQuery ResendContactReachabilityEmail where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newResendContactReachabilityEmailResponse' smart constructor.
data ResendContactReachabilityEmailResponse = ResendContactReachabilityEmailResponse'
  { -- | @True@ if the email address for the registrant contact has already been
    -- verified, and @false@ otherwise. If the email address has already been
    -- verified, we don\'t send another confirmation email.
    isAlreadyVerified :: Core.Maybe Core.Bool,
    -- | The domain name for which you requested a confirmation email.
    domainName :: Core.Maybe Core.Text,
    -- | The email address for the registrant contact at the time that we sent
    -- the verification email.
    emailAddress :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResendContactReachabilityEmailResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isAlreadyVerified', 'resendContactReachabilityEmailResponse_isAlreadyVerified' - @True@ if the email address for the registrant contact has already been
-- verified, and @false@ otherwise. If the email address has already been
-- verified, we don\'t send another confirmation email.
--
-- 'domainName', 'resendContactReachabilityEmailResponse_domainName' - The domain name for which you requested a confirmation email.
--
-- 'emailAddress', 'resendContactReachabilityEmailResponse_emailAddress' - The email address for the registrant contact at the time that we sent
-- the verification email.
--
-- 'httpStatus', 'resendContactReachabilityEmailResponse_httpStatus' - The response's http status code.
newResendContactReachabilityEmailResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ResendContactReachabilityEmailResponse
newResendContactReachabilityEmailResponse
  pHttpStatus_ =
    ResendContactReachabilityEmailResponse'
      { isAlreadyVerified =
          Core.Nothing,
        domainName = Core.Nothing,
        emailAddress = Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | @True@ if the email address for the registrant contact has already been
-- verified, and @false@ otherwise. If the email address has already been
-- verified, we don\'t send another confirmation email.
resendContactReachabilityEmailResponse_isAlreadyVerified :: Lens.Lens' ResendContactReachabilityEmailResponse (Core.Maybe Core.Bool)
resendContactReachabilityEmailResponse_isAlreadyVerified = Lens.lens (\ResendContactReachabilityEmailResponse' {isAlreadyVerified} -> isAlreadyVerified) (\s@ResendContactReachabilityEmailResponse' {} a -> s {isAlreadyVerified = a} :: ResendContactReachabilityEmailResponse)

-- | The domain name for which you requested a confirmation email.
resendContactReachabilityEmailResponse_domainName :: Lens.Lens' ResendContactReachabilityEmailResponse (Core.Maybe Core.Text)
resendContactReachabilityEmailResponse_domainName = Lens.lens (\ResendContactReachabilityEmailResponse' {domainName} -> domainName) (\s@ResendContactReachabilityEmailResponse' {} a -> s {domainName = a} :: ResendContactReachabilityEmailResponse)

-- | The email address for the registrant contact at the time that we sent
-- the verification email.
resendContactReachabilityEmailResponse_emailAddress :: Lens.Lens' ResendContactReachabilityEmailResponse (Core.Maybe Core.Text)
resendContactReachabilityEmailResponse_emailAddress = Lens.lens (\ResendContactReachabilityEmailResponse' {emailAddress} -> emailAddress) (\s@ResendContactReachabilityEmailResponse' {} a -> s {emailAddress = a} :: ResendContactReachabilityEmailResponse)

-- | The response's http status code.
resendContactReachabilityEmailResponse_httpStatus :: Lens.Lens' ResendContactReachabilityEmailResponse Core.Int
resendContactReachabilityEmailResponse_httpStatus = Lens.lens (\ResendContactReachabilityEmailResponse' {httpStatus} -> httpStatus) (\s@ResendContactReachabilityEmailResponse' {} a -> s {httpStatus = a} :: ResendContactReachabilityEmailResponse)

instance
  Core.NFData
    ResendContactReachabilityEmailResponse
