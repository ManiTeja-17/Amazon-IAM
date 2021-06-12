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
-- Module      : Network.AWS.IoT.Types.StartSigningJobParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.StartSigningJobParameter where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types.Destination
import Network.AWS.IoT.Types.SigningProfileParameter
import qualified Network.AWS.Lens as Lens

-- | Information required to start a signing job.
--
-- /See:/ 'newStartSigningJobParameter' smart constructor.
data StartSigningJobParameter = StartSigningJobParameter'
  { -- | The code-signing profile name.
    signingProfileName :: Core.Maybe Core.Text,
    -- | The location to write the code-signed file.
    destination :: Core.Maybe Destination,
    -- | Describes the code-signing profile.
    signingProfileParameter :: Core.Maybe SigningProfileParameter
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StartSigningJobParameter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'signingProfileName', 'startSigningJobParameter_signingProfileName' - The code-signing profile name.
--
-- 'destination', 'startSigningJobParameter_destination' - The location to write the code-signed file.
--
-- 'signingProfileParameter', 'startSigningJobParameter_signingProfileParameter' - Describes the code-signing profile.
newStartSigningJobParameter ::
  StartSigningJobParameter
newStartSigningJobParameter =
  StartSigningJobParameter'
    { signingProfileName =
        Core.Nothing,
      destination = Core.Nothing,
      signingProfileParameter = Core.Nothing
    }

-- | The code-signing profile name.
startSigningJobParameter_signingProfileName :: Lens.Lens' StartSigningJobParameter (Core.Maybe Core.Text)
startSigningJobParameter_signingProfileName = Lens.lens (\StartSigningJobParameter' {signingProfileName} -> signingProfileName) (\s@StartSigningJobParameter' {} a -> s {signingProfileName = a} :: StartSigningJobParameter)

-- | The location to write the code-signed file.
startSigningJobParameter_destination :: Lens.Lens' StartSigningJobParameter (Core.Maybe Destination)
startSigningJobParameter_destination = Lens.lens (\StartSigningJobParameter' {destination} -> destination) (\s@StartSigningJobParameter' {} a -> s {destination = a} :: StartSigningJobParameter)

-- | Describes the code-signing profile.
startSigningJobParameter_signingProfileParameter :: Lens.Lens' StartSigningJobParameter (Core.Maybe SigningProfileParameter)
startSigningJobParameter_signingProfileParameter = Lens.lens (\StartSigningJobParameter' {signingProfileParameter} -> signingProfileParameter) (\s@StartSigningJobParameter' {} a -> s {signingProfileParameter = a} :: StartSigningJobParameter)

instance Core.FromJSON StartSigningJobParameter where
  parseJSON =
    Core.withObject
      "StartSigningJobParameter"
      ( \x ->
          StartSigningJobParameter'
            Core.<$> (x Core..:? "signingProfileName")
            Core.<*> (x Core..:? "destination")
            Core.<*> (x Core..:? "signingProfileParameter")
      )

instance Core.Hashable StartSigningJobParameter

instance Core.NFData StartSigningJobParameter

instance Core.ToJSON StartSigningJobParameter where
  toJSON StartSigningJobParameter' {..} =
    Core.object
      ( Core.catMaybes
          [ ("signingProfileName" Core..=)
              Core.<$> signingProfileName,
            ("destination" Core..=) Core.<$> destination,
            ("signingProfileParameter" Core..=)
              Core.<$> signingProfileParameter
          ]
      )
