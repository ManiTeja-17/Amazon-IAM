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
-- Module      : Network.AWS.SNS.CreatePlatformApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a platform application object for one of the supported push
-- notification services, such as APNS and GCM (Firebase Cloud Messaging),
-- to which devices and mobile apps may register. You must specify
-- @PlatformPrincipal@ and @PlatformCredential@ attributes when using the
-- @CreatePlatformApplication@ action.
--
-- @PlatformPrincipal@ and @PlatformCredential@ are received from the
-- notification service.
--
-- -   For @ADM@, @PlatformPrincipal@ is @client id@ and
--     @PlatformCredential@ is @client secret@.
--
-- -   For @Baidu@, @PlatformPrincipal@ is @API key@ and
--     @PlatformCredential@ is @secret key@.
--
-- -   For @APNS@ and @APNS_SANDBOX@, @PlatformPrincipal@ is
--     @SSL certificate@ and @PlatformCredential@ is @private key@.
--
-- -   For @GCM@ (Firebase Cloud Messaging), there is no
--     @PlatformPrincipal@ and the @PlatformCredential@ is @API key@.
--
-- -   For @MPNS@, @PlatformPrincipal@ is @TLS certificate@ and
--     @PlatformCredential@ is @private key@.
--
-- -   For @WNS@, @PlatformPrincipal@ is @Package Security Identifier@ and
--     @PlatformCredential@ is @secret key@.
--
-- You can use the returned @PlatformApplicationArn@ as an attribute for
-- the @CreatePlatformEndpoint@ action.
module Network.AWS.SNS.CreatePlatformApplication
  ( -- * Creating a Request
    CreatePlatformApplication (..),
    newCreatePlatformApplication,

    -- * Request Lenses
    createPlatformApplication_name,
    createPlatformApplication_platform,
    createPlatformApplication_attributes,

    -- * Destructuring the Response
    CreatePlatformApplicationResponse (..),
    newCreatePlatformApplicationResponse,

    -- * Response Lenses
    createPlatformApplicationResponse_platformApplicationArn,
    createPlatformApplicationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SNS.Types

-- | Input for CreatePlatformApplication action.
--
-- /See:/ 'newCreatePlatformApplication' smart constructor.
data CreatePlatformApplication = CreatePlatformApplication'
  { -- | Application names must be made up of only uppercase and lowercase ASCII
    -- letters, numbers, underscores, hyphens, and periods, and must be between
    -- 1 and 256 characters long.
    name :: Core.Text,
    -- | The following platforms are supported: ADM (Amazon Device Messaging),
    -- APNS (Apple Push Notification Service), APNS_SANDBOX, and GCM (Firebase
    -- Cloud Messaging).
    platform :: Core.Text,
    -- | For a list of attributes, see
    -- <https://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html SetPlatformApplicationAttributes>
    attributes :: Core.HashMap Core.Text Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreatePlatformApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createPlatformApplication_name' - Application names must be made up of only uppercase and lowercase ASCII
-- letters, numbers, underscores, hyphens, and periods, and must be between
-- 1 and 256 characters long.
--
-- 'platform', 'createPlatformApplication_platform' - The following platforms are supported: ADM (Amazon Device Messaging),
-- APNS (Apple Push Notification Service), APNS_SANDBOX, and GCM (Firebase
-- Cloud Messaging).
--
-- 'attributes', 'createPlatformApplication_attributes' - For a list of attributes, see
-- <https://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html SetPlatformApplicationAttributes>
newCreatePlatformApplication ::
  -- | 'name'
  Core.Text ->
  -- | 'platform'
  Core.Text ->
  CreatePlatformApplication
newCreatePlatformApplication pName_ pPlatform_ =
  CreatePlatformApplication'
    { name = pName_,
      platform = pPlatform_,
      attributes = Core.mempty
    }

-- | Application names must be made up of only uppercase and lowercase ASCII
-- letters, numbers, underscores, hyphens, and periods, and must be between
-- 1 and 256 characters long.
createPlatformApplication_name :: Lens.Lens' CreatePlatformApplication Core.Text
createPlatformApplication_name = Lens.lens (\CreatePlatformApplication' {name} -> name) (\s@CreatePlatformApplication' {} a -> s {name = a} :: CreatePlatformApplication)

-- | The following platforms are supported: ADM (Amazon Device Messaging),
-- APNS (Apple Push Notification Service), APNS_SANDBOX, and GCM (Firebase
-- Cloud Messaging).
createPlatformApplication_platform :: Lens.Lens' CreatePlatformApplication Core.Text
createPlatformApplication_platform = Lens.lens (\CreatePlatformApplication' {platform} -> platform) (\s@CreatePlatformApplication' {} a -> s {platform = a} :: CreatePlatformApplication)

-- | For a list of attributes, see
-- <https://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html SetPlatformApplicationAttributes>
createPlatformApplication_attributes :: Lens.Lens' CreatePlatformApplication (Core.HashMap Core.Text Core.Text)
createPlatformApplication_attributes = Lens.lens (\CreatePlatformApplication' {attributes} -> attributes) (\s@CreatePlatformApplication' {} a -> s {attributes = a} :: CreatePlatformApplication) Core.. Lens._Coerce

instance Core.AWSRequest CreatePlatformApplication where
  type
    AWSResponse CreatePlatformApplication =
      CreatePlatformApplicationResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreatePlatformApplicationResult"
      ( \s h x ->
          CreatePlatformApplicationResponse'
            Core.<$> (x Core..@? "PlatformApplicationArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreatePlatformApplication

instance Core.NFData CreatePlatformApplication

instance Core.ToHeaders CreatePlatformApplication where
  toHeaders = Core.const Core.mempty

instance Core.ToPath CreatePlatformApplication where
  toPath = Core.const "/"

instance Core.ToQuery CreatePlatformApplication where
  toQuery CreatePlatformApplication' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("CreatePlatformApplication" :: Core.ByteString),
        "Version" Core.=: ("2010-03-31" :: Core.ByteString),
        "Name" Core.=: name,
        "Platform" Core.=: platform,
        "Attributes"
          Core.=: Core.toQueryMap "entry" "key" "value" attributes
      ]

-- | Response from CreatePlatformApplication action.
--
-- /See:/ 'newCreatePlatformApplicationResponse' smart constructor.
data CreatePlatformApplicationResponse = CreatePlatformApplicationResponse'
  { -- | PlatformApplicationArn is returned.
    platformApplicationArn :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreatePlatformApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'platformApplicationArn', 'createPlatformApplicationResponse_platformApplicationArn' - PlatformApplicationArn is returned.
--
-- 'httpStatus', 'createPlatformApplicationResponse_httpStatus' - The response's http status code.
newCreatePlatformApplicationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreatePlatformApplicationResponse
newCreatePlatformApplicationResponse pHttpStatus_ =
  CreatePlatformApplicationResponse'
    { platformApplicationArn =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | PlatformApplicationArn is returned.
createPlatformApplicationResponse_platformApplicationArn :: Lens.Lens' CreatePlatformApplicationResponse (Core.Maybe Core.Text)
createPlatformApplicationResponse_platformApplicationArn = Lens.lens (\CreatePlatformApplicationResponse' {platformApplicationArn} -> platformApplicationArn) (\s@CreatePlatformApplicationResponse' {} a -> s {platformApplicationArn = a} :: CreatePlatformApplicationResponse)

-- | The response's http status code.
createPlatformApplicationResponse_httpStatus :: Lens.Lens' CreatePlatformApplicationResponse Core.Int
createPlatformApplicationResponse_httpStatus = Lens.lens (\CreatePlatformApplicationResponse' {httpStatus} -> httpStatus) (\s@CreatePlatformApplicationResponse' {} a -> s {httpStatus = a} :: CreatePlatformApplicationResponse)

instance
  Core.NFData
    CreatePlatformApplicationResponse
