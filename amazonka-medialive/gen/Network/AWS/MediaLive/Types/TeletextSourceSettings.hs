{-# LANGUAGE DeriveDataTypeable #-}
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
-- Module      : Network.AWS.MediaLive.Types.TeletextSourceSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TeletextSourceSettings where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Teletext Source Settings
--
-- /See:/ 'newTeletextSourceSettings' smart constructor.
data TeletextSourceSettings = TeletextSourceSettings'
  { -- | Specifies the teletext page number within the data stream from which to
    -- extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for
    -- passthrough. Should be specified as a hexadecimal string with no \"0x\"
    -- prefix.
    pageNumber :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TeletextSourceSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pageNumber', 'teletextSourceSettings_pageNumber' - Specifies the teletext page number within the data stream from which to
-- extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for
-- passthrough. Should be specified as a hexadecimal string with no \"0x\"
-- prefix.
newTeletextSourceSettings ::
  TeletextSourceSettings
newTeletextSourceSettings =
  TeletextSourceSettings'
    { pageNumber =
        Prelude.Nothing
    }

-- | Specifies the teletext page number within the data stream from which to
-- extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for
-- passthrough. Should be specified as a hexadecimal string with no \"0x\"
-- prefix.
teletextSourceSettings_pageNumber :: Lens.Lens' TeletextSourceSettings (Prelude.Maybe Prelude.Text)
teletextSourceSettings_pageNumber = Lens.lens (\TeletextSourceSettings' {pageNumber} -> pageNumber) (\s@TeletextSourceSettings' {} a -> s {pageNumber = a} :: TeletextSourceSettings)

instance Prelude.FromJSON TeletextSourceSettings where
  parseJSON =
    Prelude.withObject
      "TeletextSourceSettings"
      ( \x ->
          TeletextSourceSettings'
            Prelude.<$> (x Prelude..:? "pageNumber")
      )

instance Prelude.Hashable TeletextSourceSettings

instance Prelude.NFData TeletextSourceSettings

instance Prelude.ToJSON TeletextSourceSettings where
  toJSON TeletextSourceSettings' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [("pageNumber" Prelude..=) Prelude.<$> pageNumber]
      )
