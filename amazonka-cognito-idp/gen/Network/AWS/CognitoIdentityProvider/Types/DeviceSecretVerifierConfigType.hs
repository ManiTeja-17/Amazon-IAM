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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.DeviceSecretVerifierConfigType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.DeviceSecretVerifierConfigType where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The device verifier against which it will be authenticated.
--
-- /See:/ 'newDeviceSecretVerifierConfigType' smart constructor.
data DeviceSecretVerifierConfigType = DeviceSecretVerifierConfigType'
  { -- | The password verifier.
    passwordVerifier :: Core.Maybe Core.Text,
    -- | The salt.
    salt :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeviceSecretVerifierConfigType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'passwordVerifier', 'deviceSecretVerifierConfigType_passwordVerifier' - The password verifier.
--
-- 'salt', 'deviceSecretVerifierConfigType_salt' - The salt.
newDeviceSecretVerifierConfigType ::
  DeviceSecretVerifierConfigType
newDeviceSecretVerifierConfigType =
  DeviceSecretVerifierConfigType'
    { passwordVerifier =
        Core.Nothing,
      salt = Core.Nothing
    }

-- | The password verifier.
deviceSecretVerifierConfigType_passwordVerifier :: Lens.Lens' DeviceSecretVerifierConfigType (Core.Maybe Core.Text)
deviceSecretVerifierConfigType_passwordVerifier = Lens.lens (\DeviceSecretVerifierConfigType' {passwordVerifier} -> passwordVerifier) (\s@DeviceSecretVerifierConfigType' {} a -> s {passwordVerifier = a} :: DeviceSecretVerifierConfigType)

-- | The salt.
deviceSecretVerifierConfigType_salt :: Lens.Lens' DeviceSecretVerifierConfigType (Core.Maybe Core.Text)
deviceSecretVerifierConfigType_salt = Lens.lens (\DeviceSecretVerifierConfigType' {salt} -> salt) (\s@DeviceSecretVerifierConfigType' {} a -> s {salt = a} :: DeviceSecretVerifierConfigType)

instance Core.Hashable DeviceSecretVerifierConfigType

instance Core.NFData DeviceSecretVerifierConfigType

instance Core.ToJSON DeviceSecretVerifierConfigType where
  toJSON DeviceSecretVerifierConfigType' {..} =
    Core.object
      ( Core.catMaybes
          [ ("PasswordVerifier" Core..=)
              Core.<$> passwordVerifier,
            ("Salt" Core..=) Core.<$> salt
          ]
      )
