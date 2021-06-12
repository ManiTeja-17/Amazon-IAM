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
-- Module      : Network.AWS.CertificateManagerPCA.Types.EdiPartyName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.EdiPartyName where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Describes an Electronic Data Interchange (EDI) entity as described in as
-- defined in
-- <https://tools.ietf.org/html/rfc5280 Subject Alternative Name> in RFC
-- 5280.
--
-- /See:/ 'newEdiPartyName' smart constructor.
data EdiPartyName = EdiPartyName'
  { -- | Specifies the name assigner.
    nameAssigner :: Core.Maybe Core.Text,
    -- | Specifies the party name.
    partyName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EdiPartyName' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nameAssigner', 'ediPartyName_nameAssigner' - Specifies the name assigner.
--
-- 'partyName', 'ediPartyName_partyName' - Specifies the party name.
newEdiPartyName ::
  -- | 'partyName'
  Core.Text ->
  EdiPartyName
newEdiPartyName pPartyName_ =
  EdiPartyName'
    { nameAssigner = Core.Nothing,
      partyName = pPartyName_
    }

-- | Specifies the name assigner.
ediPartyName_nameAssigner :: Lens.Lens' EdiPartyName (Core.Maybe Core.Text)
ediPartyName_nameAssigner = Lens.lens (\EdiPartyName' {nameAssigner} -> nameAssigner) (\s@EdiPartyName' {} a -> s {nameAssigner = a} :: EdiPartyName)

-- | Specifies the party name.
ediPartyName_partyName :: Lens.Lens' EdiPartyName Core.Text
ediPartyName_partyName = Lens.lens (\EdiPartyName' {partyName} -> partyName) (\s@EdiPartyName' {} a -> s {partyName = a} :: EdiPartyName)

instance Core.FromJSON EdiPartyName where
  parseJSON =
    Core.withObject
      "EdiPartyName"
      ( \x ->
          EdiPartyName'
            Core.<$> (x Core..:? "NameAssigner")
            Core.<*> (x Core..: "PartyName")
      )

instance Core.Hashable EdiPartyName

instance Core.NFData EdiPartyName

instance Core.ToJSON EdiPartyName where
  toJSON EdiPartyName' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NameAssigner" Core..=) Core.<$> nameAssigner,
            Core.Just ("PartyName" Core..= partyName)
          ]
      )
