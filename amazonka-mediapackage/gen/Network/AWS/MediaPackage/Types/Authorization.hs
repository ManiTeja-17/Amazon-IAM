{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.Authorization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.Authorization where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | CDN Authorization credentials
--
-- /See:/ 'newAuthorization' smart constructor.
data Authorization = Authorization'
  { -- | The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage
    -- to communicate with AWS Secrets Manager.
    secretsRoleArn :: Core.Text,
    -- | The Amazon Resource Name (ARN) for the secret in Secrets Manager that
    -- your Content Distribution Network (CDN) uses for authorization to access
    -- your endpoint.
    cdnIdentifierSecret :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Authorization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'secretsRoleArn', 'authorization_secretsRoleArn' - The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage
-- to communicate with AWS Secrets Manager.
--
-- 'cdnIdentifierSecret', 'authorization_cdnIdentifierSecret' - The Amazon Resource Name (ARN) for the secret in Secrets Manager that
-- your Content Distribution Network (CDN) uses for authorization to access
-- your endpoint.
newAuthorization ::
  -- | 'secretsRoleArn'
  Core.Text ->
  -- | 'cdnIdentifierSecret'
  Core.Text ->
  Authorization
newAuthorization
  pSecretsRoleArn_
  pCdnIdentifierSecret_ =
    Authorization'
      { secretsRoleArn = pSecretsRoleArn_,
        cdnIdentifierSecret = pCdnIdentifierSecret_
      }

-- | The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage
-- to communicate with AWS Secrets Manager.
authorization_secretsRoleArn :: Lens.Lens' Authorization Core.Text
authorization_secretsRoleArn = Lens.lens (\Authorization' {secretsRoleArn} -> secretsRoleArn) (\s@Authorization' {} a -> s {secretsRoleArn = a} :: Authorization)

-- | The Amazon Resource Name (ARN) for the secret in Secrets Manager that
-- your Content Distribution Network (CDN) uses for authorization to access
-- your endpoint.
authorization_cdnIdentifierSecret :: Lens.Lens' Authorization Core.Text
authorization_cdnIdentifierSecret = Lens.lens (\Authorization' {cdnIdentifierSecret} -> cdnIdentifierSecret) (\s@Authorization' {} a -> s {cdnIdentifierSecret = a} :: Authorization)

instance Core.FromJSON Authorization where
  parseJSON =
    Core.withObject
      "Authorization"
      ( \x ->
          Authorization'
            Core.<$> (x Core..: "secretsRoleArn")
            Core.<*> (x Core..: "cdnIdentifierSecret")
      )

instance Core.Hashable Authorization

instance Core.NFData Authorization

instance Core.ToJSON Authorization where
  toJSON Authorization' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("secretsRoleArn" Core..= secretsRoleArn),
            Core.Just
              ("cdnIdentifierSecret" Core..= cdnIdentifierSecret)
          ]
      )
