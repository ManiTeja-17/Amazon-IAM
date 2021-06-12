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
-- Module      : Network.AWS.CognitoIdentityProvider.CreateUserPoolDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new domain for a user pool.
module Network.AWS.CognitoIdentityProvider.CreateUserPoolDomain
  ( -- * Creating a Request
    CreateUserPoolDomain (..),
    newCreateUserPoolDomain,

    -- * Request Lenses
    createUserPoolDomain_customDomainConfig,
    createUserPoolDomain_domain,
    createUserPoolDomain_userPoolId,

    -- * Destructuring the Response
    CreateUserPoolDomainResponse (..),
    newCreateUserPoolDomainResponse,

    -- * Response Lenses
    createUserPoolDomainResponse_cloudFrontDomain,
    createUserPoolDomainResponse_httpStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateUserPoolDomain' smart constructor.
data CreateUserPoolDomain = CreateUserPoolDomain'
  { -- | The configuration for a custom domain that hosts the sign-up and sign-in
    -- webpages for your application.
    --
    -- Provide this parameter only if you want to use a custom domain for your
    -- user pool. Otherwise, you can exclude this parameter and use the Amazon
    -- Cognito hosted domain instead.
    --
    -- For more information about the hosted domain and custom domains, see
    -- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html Configuring a User Pool Domain>.
    customDomainConfig :: Core.Maybe CustomDomainConfigType,
    -- | The domain string.
    domain :: Core.Text,
    -- | The user pool ID.
    userPoolId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateUserPoolDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customDomainConfig', 'createUserPoolDomain_customDomainConfig' - The configuration for a custom domain that hosts the sign-up and sign-in
-- webpages for your application.
--
-- Provide this parameter only if you want to use a custom domain for your
-- user pool. Otherwise, you can exclude this parameter and use the Amazon
-- Cognito hosted domain instead.
--
-- For more information about the hosted domain and custom domains, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html Configuring a User Pool Domain>.
--
-- 'domain', 'createUserPoolDomain_domain' - The domain string.
--
-- 'userPoolId', 'createUserPoolDomain_userPoolId' - The user pool ID.
newCreateUserPoolDomain ::
  -- | 'domain'
  Core.Text ->
  -- | 'userPoolId'
  Core.Text ->
  CreateUserPoolDomain
newCreateUserPoolDomain pDomain_ pUserPoolId_ =
  CreateUserPoolDomain'
    { customDomainConfig =
        Core.Nothing,
      domain = pDomain_,
      userPoolId = pUserPoolId_
    }

-- | The configuration for a custom domain that hosts the sign-up and sign-in
-- webpages for your application.
--
-- Provide this parameter only if you want to use a custom domain for your
-- user pool. Otherwise, you can exclude this parameter and use the Amazon
-- Cognito hosted domain instead.
--
-- For more information about the hosted domain and custom domains, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html Configuring a User Pool Domain>.
createUserPoolDomain_customDomainConfig :: Lens.Lens' CreateUserPoolDomain (Core.Maybe CustomDomainConfigType)
createUserPoolDomain_customDomainConfig = Lens.lens (\CreateUserPoolDomain' {customDomainConfig} -> customDomainConfig) (\s@CreateUserPoolDomain' {} a -> s {customDomainConfig = a} :: CreateUserPoolDomain)

-- | The domain string.
createUserPoolDomain_domain :: Lens.Lens' CreateUserPoolDomain Core.Text
createUserPoolDomain_domain = Lens.lens (\CreateUserPoolDomain' {domain} -> domain) (\s@CreateUserPoolDomain' {} a -> s {domain = a} :: CreateUserPoolDomain)

-- | The user pool ID.
createUserPoolDomain_userPoolId :: Lens.Lens' CreateUserPoolDomain Core.Text
createUserPoolDomain_userPoolId = Lens.lens (\CreateUserPoolDomain' {userPoolId} -> userPoolId) (\s@CreateUserPoolDomain' {} a -> s {userPoolId = a} :: CreateUserPoolDomain)

instance Core.AWSRequest CreateUserPoolDomain where
  type
    AWSResponse CreateUserPoolDomain =
      CreateUserPoolDomainResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateUserPoolDomainResponse'
            Core.<$> (x Core..?> "CloudFrontDomain")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateUserPoolDomain

instance Core.NFData CreateUserPoolDomain

instance Core.ToHeaders CreateUserPoolDomain where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.CreateUserPoolDomain" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateUserPoolDomain where
  toJSON CreateUserPoolDomain' {..} =
    Core.object
      ( Core.catMaybes
          [ ("CustomDomainConfig" Core..=)
              Core.<$> customDomainConfig,
            Core.Just ("Domain" Core..= domain),
            Core.Just ("UserPoolId" Core..= userPoolId)
          ]
      )

instance Core.ToPath CreateUserPoolDomain where
  toPath = Core.const "/"

instance Core.ToQuery CreateUserPoolDomain where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateUserPoolDomainResponse' smart constructor.
data CreateUserPoolDomainResponse = CreateUserPoolDomainResponse'
  { -- | The Amazon CloudFront endpoint that you use as the target of the alias
    -- that you set up with your Domain Name Service (DNS) provider.
    cloudFrontDomain :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateUserPoolDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudFrontDomain', 'createUserPoolDomainResponse_cloudFrontDomain' - The Amazon CloudFront endpoint that you use as the target of the alias
-- that you set up with your Domain Name Service (DNS) provider.
--
-- 'httpStatus', 'createUserPoolDomainResponse_httpStatus' - The response's http status code.
newCreateUserPoolDomainResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateUserPoolDomainResponse
newCreateUserPoolDomainResponse pHttpStatus_ =
  CreateUserPoolDomainResponse'
    { cloudFrontDomain =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon CloudFront endpoint that you use as the target of the alias
-- that you set up with your Domain Name Service (DNS) provider.
createUserPoolDomainResponse_cloudFrontDomain :: Lens.Lens' CreateUserPoolDomainResponse (Core.Maybe Core.Text)
createUserPoolDomainResponse_cloudFrontDomain = Lens.lens (\CreateUserPoolDomainResponse' {cloudFrontDomain} -> cloudFrontDomain) (\s@CreateUserPoolDomainResponse' {} a -> s {cloudFrontDomain = a} :: CreateUserPoolDomainResponse)

-- | The response's http status code.
createUserPoolDomainResponse_httpStatus :: Lens.Lens' CreateUserPoolDomainResponse Core.Int
createUserPoolDomainResponse_httpStatus = Lens.lens (\CreateUserPoolDomainResponse' {httpStatus} -> httpStatus) (\s@CreateUserPoolDomainResponse' {} a -> s {httpStatus = a} :: CreateUserPoolDomainResponse)

instance Core.NFData CreateUserPoolDomainResponse
