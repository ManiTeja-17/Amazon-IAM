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
-- Module      : Network.AWS.ElasticSearch.Types.AdvancedSecurityOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AdvancedSecurityOptions where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticSearch.Types.SAMLOptionsOutput
import qualified Network.AWS.Lens as Lens

-- | Specifies the advanced security configuration: whether advanced security
-- is enabled, whether the internal database option is enabled.
--
-- /See:/ 'newAdvancedSecurityOptions' smart constructor.
data AdvancedSecurityOptions = AdvancedSecurityOptions'
  { -- | True if the internal user database is enabled.
    internalUserDatabaseEnabled :: Core.Maybe Core.Bool,
    -- | Describes the SAML application configured for a domain.
    sAMLOptions :: Core.Maybe SAMLOptionsOutput,
    -- | True if advanced security is enabled.
    enabled :: Core.Maybe Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AdvancedSecurityOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'internalUserDatabaseEnabled', 'advancedSecurityOptions_internalUserDatabaseEnabled' - True if the internal user database is enabled.
--
-- 'sAMLOptions', 'advancedSecurityOptions_sAMLOptions' - Describes the SAML application configured for a domain.
--
-- 'enabled', 'advancedSecurityOptions_enabled' - True if advanced security is enabled.
newAdvancedSecurityOptions ::
  AdvancedSecurityOptions
newAdvancedSecurityOptions =
  AdvancedSecurityOptions'
    { internalUserDatabaseEnabled =
        Core.Nothing,
      sAMLOptions = Core.Nothing,
      enabled = Core.Nothing
    }

-- | True if the internal user database is enabled.
advancedSecurityOptions_internalUserDatabaseEnabled :: Lens.Lens' AdvancedSecurityOptions (Core.Maybe Core.Bool)
advancedSecurityOptions_internalUserDatabaseEnabled = Lens.lens (\AdvancedSecurityOptions' {internalUserDatabaseEnabled} -> internalUserDatabaseEnabled) (\s@AdvancedSecurityOptions' {} a -> s {internalUserDatabaseEnabled = a} :: AdvancedSecurityOptions)

-- | Describes the SAML application configured for a domain.
advancedSecurityOptions_sAMLOptions :: Lens.Lens' AdvancedSecurityOptions (Core.Maybe SAMLOptionsOutput)
advancedSecurityOptions_sAMLOptions = Lens.lens (\AdvancedSecurityOptions' {sAMLOptions} -> sAMLOptions) (\s@AdvancedSecurityOptions' {} a -> s {sAMLOptions = a} :: AdvancedSecurityOptions)

-- | True if advanced security is enabled.
advancedSecurityOptions_enabled :: Lens.Lens' AdvancedSecurityOptions (Core.Maybe Core.Bool)
advancedSecurityOptions_enabled = Lens.lens (\AdvancedSecurityOptions' {enabled} -> enabled) (\s@AdvancedSecurityOptions' {} a -> s {enabled = a} :: AdvancedSecurityOptions)

instance Core.FromJSON AdvancedSecurityOptions where
  parseJSON =
    Core.withObject
      "AdvancedSecurityOptions"
      ( \x ->
          AdvancedSecurityOptions'
            Core.<$> (x Core..:? "InternalUserDatabaseEnabled")
            Core.<*> (x Core..:? "SAMLOptions")
            Core.<*> (x Core..:? "Enabled")
      )

instance Core.Hashable AdvancedSecurityOptions

instance Core.NFData AdvancedSecurityOptions
