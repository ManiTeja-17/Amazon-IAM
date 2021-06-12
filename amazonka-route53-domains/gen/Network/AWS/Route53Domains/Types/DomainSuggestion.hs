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
-- Module      : Network.AWS.Route53Domains.Types.DomainSuggestion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.DomainSuggestion where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Information about one suggested domain name.
--
-- /See:/ 'newDomainSuggestion' smart constructor.
data DomainSuggestion = DomainSuggestion'
  { -- | Whether the domain name is available for registering.
    --
    -- You can register only the domains that are designated as @AVAILABLE@.
    --
    -- Valid values:
    --
    -- [AVAILABLE]
    --     The domain name is available.
    --
    -- [AVAILABLE_RESERVED]
    --     The domain name is reserved under specific conditions.
    --
    -- [AVAILABLE_PREORDER]
    --     The domain name is available and can be preordered.
    --
    -- [DONT_KNOW]
    --     The TLD registry didn\'t reply with a definitive answer about
    --     whether the domain name is available. Route 53 can return this
    --     response for a variety of reasons, for example, the registry is
    --     performing maintenance. Try again later.
    --
    -- [PENDING]
    --     The TLD registry didn\'t return a response in the expected amount of
    --     time. When the response is delayed, it usually takes just a few
    --     extra seconds. You can resubmit the request immediately.
    --
    -- [RESERVED]
    --     The domain name has been reserved for another person or
    --     organization.
    --
    -- [UNAVAILABLE]
    --     The domain name is not available.
    --
    -- [UNAVAILABLE_PREMIUM]
    --     The domain name is not available.
    --
    -- [UNAVAILABLE_RESTRICTED]
    --     The domain name is forbidden.
    availability :: Core.Maybe Core.Text,
    -- | A suggested domain name.
    domainName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DomainSuggestion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'availability', 'domainSuggestion_availability' - Whether the domain name is available for registering.
--
-- You can register only the domains that are designated as @AVAILABLE@.
--
-- Valid values:
--
-- [AVAILABLE]
--     The domain name is available.
--
-- [AVAILABLE_RESERVED]
--     The domain name is reserved under specific conditions.
--
-- [AVAILABLE_PREORDER]
--     The domain name is available and can be preordered.
--
-- [DONT_KNOW]
--     The TLD registry didn\'t reply with a definitive answer about
--     whether the domain name is available. Route 53 can return this
--     response for a variety of reasons, for example, the registry is
--     performing maintenance. Try again later.
--
-- [PENDING]
--     The TLD registry didn\'t return a response in the expected amount of
--     time. When the response is delayed, it usually takes just a few
--     extra seconds. You can resubmit the request immediately.
--
-- [RESERVED]
--     The domain name has been reserved for another person or
--     organization.
--
-- [UNAVAILABLE]
--     The domain name is not available.
--
-- [UNAVAILABLE_PREMIUM]
--     The domain name is not available.
--
-- [UNAVAILABLE_RESTRICTED]
--     The domain name is forbidden.
--
-- 'domainName', 'domainSuggestion_domainName' - A suggested domain name.
newDomainSuggestion ::
  DomainSuggestion
newDomainSuggestion =
  DomainSuggestion'
    { availability = Core.Nothing,
      domainName = Core.Nothing
    }

-- | Whether the domain name is available for registering.
--
-- You can register only the domains that are designated as @AVAILABLE@.
--
-- Valid values:
--
-- [AVAILABLE]
--     The domain name is available.
--
-- [AVAILABLE_RESERVED]
--     The domain name is reserved under specific conditions.
--
-- [AVAILABLE_PREORDER]
--     The domain name is available and can be preordered.
--
-- [DONT_KNOW]
--     The TLD registry didn\'t reply with a definitive answer about
--     whether the domain name is available. Route 53 can return this
--     response for a variety of reasons, for example, the registry is
--     performing maintenance. Try again later.
--
-- [PENDING]
--     The TLD registry didn\'t return a response in the expected amount of
--     time. When the response is delayed, it usually takes just a few
--     extra seconds. You can resubmit the request immediately.
--
-- [RESERVED]
--     The domain name has been reserved for another person or
--     organization.
--
-- [UNAVAILABLE]
--     The domain name is not available.
--
-- [UNAVAILABLE_PREMIUM]
--     The domain name is not available.
--
-- [UNAVAILABLE_RESTRICTED]
--     The domain name is forbidden.
domainSuggestion_availability :: Lens.Lens' DomainSuggestion (Core.Maybe Core.Text)
domainSuggestion_availability = Lens.lens (\DomainSuggestion' {availability} -> availability) (\s@DomainSuggestion' {} a -> s {availability = a} :: DomainSuggestion)

-- | A suggested domain name.
domainSuggestion_domainName :: Lens.Lens' DomainSuggestion (Core.Maybe Core.Text)
domainSuggestion_domainName = Lens.lens (\DomainSuggestion' {domainName} -> domainName) (\s@DomainSuggestion' {} a -> s {domainName = a} :: DomainSuggestion)

instance Core.FromJSON DomainSuggestion where
  parseJSON =
    Core.withObject
      "DomainSuggestion"
      ( \x ->
          DomainSuggestion'
            Core.<$> (x Core..:? "Availability")
            Core.<*> (x Core..:? "DomainName")
      )

instance Core.Hashable DomainSuggestion

instance Core.NFData DomainSuggestion
