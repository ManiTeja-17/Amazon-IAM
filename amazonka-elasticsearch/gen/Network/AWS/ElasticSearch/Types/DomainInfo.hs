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
-- Module      : Network.AWS.ElasticSearch.Types.DomainInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.DomainInfo where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | /See:/ 'newDomainInfo' smart constructor.
data DomainInfo = DomainInfo'
  { -- | Specifies the @DomainName@.
    domainName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DomainInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'domainInfo_domainName' - Specifies the @DomainName@.
newDomainInfo ::
  DomainInfo
newDomainInfo =
  DomainInfo' {domainName = Core.Nothing}

-- | Specifies the @DomainName@.
domainInfo_domainName :: Lens.Lens' DomainInfo (Core.Maybe Core.Text)
domainInfo_domainName = Lens.lens (\DomainInfo' {domainName} -> domainName) (\s@DomainInfo' {} a -> s {domainName = a} :: DomainInfo)

instance Core.FromJSON DomainInfo where
  parseJSON =
    Core.withObject
      "DomainInfo"
      ( \x ->
          DomainInfo' Core.<$> (x Core..:? "DomainName")
      )

instance Core.Hashable DomainInfo

instance Core.NFData DomainInfo
