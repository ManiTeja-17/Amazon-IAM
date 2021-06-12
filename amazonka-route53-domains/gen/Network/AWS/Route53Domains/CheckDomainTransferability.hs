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
-- Module      : Network.AWS.Route53Domains.CheckDomainTransferability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether a domain name can be transferred to Amazon Route 53.
module Network.AWS.Route53Domains.CheckDomainTransferability
  ( -- * Creating a Request
    CheckDomainTransferability (..),
    newCheckDomainTransferability,

    -- * Request Lenses
    checkDomainTransferability_authCode,
    checkDomainTransferability_domainName,

    -- * Destructuring the Response
    CheckDomainTransferabilityResponse (..),
    newCheckDomainTransferabilityResponse,

    -- * Response Lenses
    checkDomainTransferabilityResponse_httpStatus,
    checkDomainTransferabilityResponse_transferability,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Domains.Types

-- | The CheckDomainTransferability request contains the following elements.
--
-- /See:/ 'newCheckDomainTransferability' smart constructor.
data CheckDomainTransferability = CheckDomainTransferability'
  { -- | If the registrar for the top-level domain (TLD) requires an
    -- authorization code to transfer the domain, the code that you got from
    -- the current registrar for the domain.
    authCode :: Core.Maybe (Core.Sensitive Core.Text),
    -- | The name of the domain that you want to transfer to Route 53. The
    -- top-level domain (TLD), such as .com, must be a TLD that Route 53
    -- supports. For a list of supported TLDs, see
    -- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53>
    -- in the /Amazon Route 53 Developer Guide/.
    --
    -- The domain name can contain only the following characters:
    --
    -- -   Letters a through z. Domain names are not case sensitive.
    --
    -- -   Numbers 0 through 9.
    --
    -- -   Hyphen (-). You can\'t specify a hyphen at the beginning or end of a
    --     label.
    --
    -- -   Period (.) to separate the labels in the name, such as the @.@ in
    --     @example.com@.
    domainName :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'CheckDomainTransferability' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authCode', 'checkDomainTransferability_authCode' - If the registrar for the top-level domain (TLD) requires an
-- authorization code to transfer the domain, the code that you got from
-- the current registrar for the domain.
--
-- 'domainName', 'checkDomainTransferability_domainName' - The name of the domain that you want to transfer to Route 53. The
-- top-level domain (TLD), such as .com, must be a TLD that Route 53
-- supports. For a list of supported TLDs, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53>
-- in the /Amazon Route 53 Developer Guide/.
--
-- The domain name can contain only the following characters:
--
-- -   Letters a through z. Domain names are not case sensitive.
--
-- -   Numbers 0 through 9.
--
-- -   Hyphen (-). You can\'t specify a hyphen at the beginning or end of a
--     label.
--
-- -   Period (.) to separate the labels in the name, such as the @.@ in
--     @example.com@.
newCheckDomainTransferability ::
  -- | 'domainName'
  Core.Text ->
  CheckDomainTransferability
newCheckDomainTransferability pDomainName_ =
  CheckDomainTransferability'
    { authCode =
        Core.Nothing,
      domainName = pDomainName_
    }

-- | If the registrar for the top-level domain (TLD) requires an
-- authorization code to transfer the domain, the code that you got from
-- the current registrar for the domain.
checkDomainTransferability_authCode :: Lens.Lens' CheckDomainTransferability (Core.Maybe Core.Text)
checkDomainTransferability_authCode = Lens.lens (\CheckDomainTransferability' {authCode} -> authCode) (\s@CheckDomainTransferability' {} a -> s {authCode = a} :: CheckDomainTransferability) Core.. Lens.mapping Core._Sensitive

-- | The name of the domain that you want to transfer to Route 53. The
-- top-level domain (TLD), such as .com, must be a TLD that Route 53
-- supports. For a list of supported TLDs, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53>
-- in the /Amazon Route 53 Developer Guide/.
--
-- The domain name can contain only the following characters:
--
-- -   Letters a through z. Domain names are not case sensitive.
--
-- -   Numbers 0 through 9.
--
-- -   Hyphen (-). You can\'t specify a hyphen at the beginning or end of a
--     label.
--
-- -   Period (.) to separate the labels in the name, such as the @.@ in
--     @example.com@.
checkDomainTransferability_domainName :: Lens.Lens' CheckDomainTransferability Core.Text
checkDomainTransferability_domainName = Lens.lens (\CheckDomainTransferability' {domainName} -> domainName) (\s@CheckDomainTransferability' {} a -> s {domainName = a} :: CheckDomainTransferability)

instance Core.AWSRequest CheckDomainTransferability where
  type
    AWSResponse CheckDomainTransferability =
      CheckDomainTransferabilityResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CheckDomainTransferabilityResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..:> "Transferability")
      )

instance Core.Hashable CheckDomainTransferability

instance Core.NFData CheckDomainTransferability

instance Core.ToHeaders CheckDomainTransferability where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Domains_v20140515.CheckDomainTransferability" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CheckDomainTransferability where
  toJSON CheckDomainTransferability' {..} =
    Core.object
      ( Core.catMaybes
          [ ("AuthCode" Core..=) Core.<$> authCode,
            Core.Just ("DomainName" Core..= domainName)
          ]
      )

instance Core.ToPath CheckDomainTransferability where
  toPath = Core.const "/"

instance Core.ToQuery CheckDomainTransferability where
  toQuery = Core.const Core.mempty

-- | The CheckDomainTransferability response includes the following elements.
--
-- /See:/ 'newCheckDomainTransferabilityResponse' smart constructor.
data CheckDomainTransferabilityResponse = CheckDomainTransferabilityResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | A complex type that contains information about whether the specified
    -- domain can be transferred to Route 53.
    transferability :: DomainTransferability
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CheckDomainTransferabilityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'checkDomainTransferabilityResponse_httpStatus' - The response's http status code.
--
-- 'transferability', 'checkDomainTransferabilityResponse_transferability' - A complex type that contains information about whether the specified
-- domain can be transferred to Route 53.
newCheckDomainTransferabilityResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'transferability'
  DomainTransferability ->
  CheckDomainTransferabilityResponse
newCheckDomainTransferabilityResponse
  pHttpStatus_
  pTransferability_ =
    CheckDomainTransferabilityResponse'
      { httpStatus =
          pHttpStatus_,
        transferability = pTransferability_
      }

-- | The response's http status code.
checkDomainTransferabilityResponse_httpStatus :: Lens.Lens' CheckDomainTransferabilityResponse Core.Int
checkDomainTransferabilityResponse_httpStatus = Lens.lens (\CheckDomainTransferabilityResponse' {httpStatus} -> httpStatus) (\s@CheckDomainTransferabilityResponse' {} a -> s {httpStatus = a} :: CheckDomainTransferabilityResponse)

-- | A complex type that contains information about whether the specified
-- domain can be transferred to Route 53.
checkDomainTransferabilityResponse_transferability :: Lens.Lens' CheckDomainTransferabilityResponse DomainTransferability
checkDomainTransferabilityResponse_transferability = Lens.lens (\CheckDomainTransferabilityResponse' {transferability} -> transferability) (\s@CheckDomainTransferabilityResponse' {} a -> s {transferability = a} :: CheckDomainTransferabilityResponse)

instance
  Core.NFData
    CheckDomainTransferabilityResponse
