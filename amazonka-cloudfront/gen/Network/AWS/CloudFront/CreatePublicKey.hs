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
-- Module      : Network.AWS.CloudFront.CreatePublicKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a public key to CloudFront that you can use with
-- <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html signed URLs and signed cookies>,
-- or with
-- <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html field-level encryption>.
module Network.AWS.CloudFront.CreatePublicKey
  ( -- * Creating a Request
    CreatePublicKey (..),
    newCreatePublicKey,

    -- * Request Lenses
    createPublicKey_publicKeyConfig,

    -- * Destructuring the Response
    CreatePublicKeyResponse (..),
    newCreatePublicKeyResponse,

    -- * Response Lenses
    createPublicKeyResponse_eTag,
    createPublicKeyResponse_publicKey,
    createPublicKeyResponse_location,
    createPublicKeyResponse_httpStatus,
  )
where

import Network.AWS.CloudFront.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreatePublicKey' smart constructor.
data CreatePublicKey = CreatePublicKey'
  { -- | A CloudFront public key configuration.
    publicKeyConfig :: PublicKeyConfig
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreatePublicKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publicKeyConfig', 'createPublicKey_publicKeyConfig' - A CloudFront public key configuration.
newCreatePublicKey ::
  -- | 'publicKeyConfig'
  PublicKeyConfig ->
  CreatePublicKey
newCreatePublicKey pPublicKeyConfig_ =
  CreatePublicKey'
    { publicKeyConfig =
        pPublicKeyConfig_
    }

-- | A CloudFront public key configuration.
createPublicKey_publicKeyConfig :: Lens.Lens' CreatePublicKey PublicKeyConfig
createPublicKey_publicKeyConfig = Lens.lens (\CreatePublicKey' {publicKeyConfig} -> publicKeyConfig) (\s@CreatePublicKey' {} a -> s {publicKeyConfig = a} :: CreatePublicKey)

instance Core.AWSRequest CreatePublicKey where
  type
    AWSResponse CreatePublicKey =
      CreatePublicKeyResponse
  request = Request.postXML defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CreatePublicKeyResponse'
            Core.<$> (h Core..#? "ETag")
            Core.<*> (Core.parseXML x)
            Core.<*> (h Core..#? "Location")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreatePublicKey

instance Core.NFData CreatePublicKey

instance Core.ToElement CreatePublicKey where
  toElement CreatePublicKey' {..} =
    Core.mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}PublicKeyConfig"
      publicKeyConfig

instance Core.ToHeaders CreatePublicKey where
  toHeaders = Core.const Core.mempty

instance Core.ToPath CreatePublicKey where
  toPath = Core.const "/2020-05-31/public-key"

instance Core.ToQuery CreatePublicKey where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreatePublicKeyResponse' smart constructor.
data CreatePublicKeyResponse = CreatePublicKeyResponse'
  { -- | The identifier for this version of the public key.
    eTag :: Core.Maybe Core.Text,
    -- | The public key.
    publicKey :: Core.Maybe PublicKey,
    -- | The URL of the public key.
    location :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreatePublicKeyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eTag', 'createPublicKeyResponse_eTag' - The identifier for this version of the public key.
--
-- 'publicKey', 'createPublicKeyResponse_publicKey' - The public key.
--
-- 'location', 'createPublicKeyResponse_location' - The URL of the public key.
--
-- 'httpStatus', 'createPublicKeyResponse_httpStatus' - The response's http status code.
newCreatePublicKeyResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreatePublicKeyResponse
newCreatePublicKeyResponse pHttpStatus_ =
  CreatePublicKeyResponse'
    { eTag = Core.Nothing,
      publicKey = Core.Nothing,
      location = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The identifier for this version of the public key.
createPublicKeyResponse_eTag :: Lens.Lens' CreatePublicKeyResponse (Core.Maybe Core.Text)
createPublicKeyResponse_eTag = Lens.lens (\CreatePublicKeyResponse' {eTag} -> eTag) (\s@CreatePublicKeyResponse' {} a -> s {eTag = a} :: CreatePublicKeyResponse)

-- | The public key.
createPublicKeyResponse_publicKey :: Lens.Lens' CreatePublicKeyResponse (Core.Maybe PublicKey)
createPublicKeyResponse_publicKey = Lens.lens (\CreatePublicKeyResponse' {publicKey} -> publicKey) (\s@CreatePublicKeyResponse' {} a -> s {publicKey = a} :: CreatePublicKeyResponse)

-- | The URL of the public key.
createPublicKeyResponse_location :: Lens.Lens' CreatePublicKeyResponse (Core.Maybe Core.Text)
createPublicKeyResponse_location = Lens.lens (\CreatePublicKeyResponse' {location} -> location) (\s@CreatePublicKeyResponse' {} a -> s {location = a} :: CreatePublicKeyResponse)

-- | The response's http status code.
createPublicKeyResponse_httpStatus :: Lens.Lens' CreatePublicKeyResponse Core.Int
createPublicKeyResponse_httpStatus = Lens.lens (\CreatePublicKeyResponse' {httpStatus} -> httpStatus) (\s@CreatePublicKeyResponse' {} a -> s {httpStatus = a} :: CreatePublicKeyResponse)

instance Core.NFData CreatePublicKeyResponse
