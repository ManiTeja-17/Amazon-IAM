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
-- Module      : Network.AWS.OpsWorks.Types.SelfUserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.SelfUserProfile where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Describes a user\'s SSH information.
--
-- /See:/ 'newSelfUserProfile' smart constructor.
data SelfUserProfile = SelfUserProfile'
  { -- | The user\'s IAM ARN.
    iamUserArn :: Core.Maybe Core.Text,
    -- | The user\'s SSH user name.
    sshUsername :: Core.Maybe Core.Text,
    -- | The user\'s name.
    name :: Core.Maybe Core.Text,
    -- | The user\'s SSH public key.
    sshPublicKey :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SelfUserProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'iamUserArn', 'selfUserProfile_iamUserArn' - The user\'s IAM ARN.
--
-- 'sshUsername', 'selfUserProfile_sshUsername' - The user\'s SSH user name.
--
-- 'name', 'selfUserProfile_name' - The user\'s name.
--
-- 'sshPublicKey', 'selfUserProfile_sshPublicKey' - The user\'s SSH public key.
newSelfUserProfile ::
  SelfUserProfile
newSelfUserProfile =
  SelfUserProfile'
    { iamUserArn = Core.Nothing,
      sshUsername = Core.Nothing,
      name = Core.Nothing,
      sshPublicKey = Core.Nothing
    }

-- | The user\'s IAM ARN.
selfUserProfile_iamUserArn :: Lens.Lens' SelfUserProfile (Core.Maybe Core.Text)
selfUserProfile_iamUserArn = Lens.lens (\SelfUserProfile' {iamUserArn} -> iamUserArn) (\s@SelfUserProfile' {} a -> s {iamUserArn = a} :: SelfUserProfile)

-- | The user\'s SSH user name.
selfUserProfile_sshUsername :: Lens.Lens' SelfUserProfile (Core.Maybe Core.Text)
selfUserProfile_sshUsername = Lens.lens (\SelfUserProfile' {sshUsername} -> sshUsername) (\s@SelfUserProfile' {} a -> s {sshUsername = a} :: SelfUserProfile)

-- | The user\'s name.
selfUserProfile_name :: Lens.Lens' SelfUserProfile (Core.Maybe Core.Text)
selfUserProfile_name = Lens.lens (\SelfUserProfile' {name} -> name) (\s@SelfUserProfile' {} a -> s {name = a} :: SelfUserProfile)

-- | The user\'s SSH public key.
selfUserProfile_sshPublicKey :: Lens.Lens' SelfUserProfile (Core.Maybe Core.Text)
selfUserProfile_sshPublicKey = Lens.lens (\SelfUserProfile' {sshPublicKey} -> sshPublicKey) (\s@SelfUserProfile' {} a -> s {sshPublicKey = a} :: SelfUserProfile)

instance Core.FromJSON SelfUserProfile where
  parseJSON =
    Core.withObject
      "SelfUserProfile"
      ( \x ->
          SelfUserProfile'
            Core.<$> (x Core..:? "IamUserArn")
            Core.<*> (x Core..:? "SshUsername")
            Core.<*> (x Core..:? "Name")
            Core.<*> (x Core..:? "SshPublicKey")
      )

instance Core.Hashable SelfUserProfile

instance Core.NFData SelfUserProfile
