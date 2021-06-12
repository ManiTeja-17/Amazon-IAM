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
-- Module      : Network.AWS.CodeCommit.Types.Location
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.Location where

import Network.AWS.CodeCommit.Types.RelativeFileVersionEnum
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Returns information about the location of a change or comment in the
-- comparison between two commits or a pull request.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location'
  { -- | The name of the file being compared, including its extension and
    -- subdirectory, if any.
    filePath :: Core.Maybe Core.Text,
    -- | The position of a change in a compared file, in line number format.
    filePosition :: Core.Maybe Core.Integer,
    -- | In a comparison of commits or a pull request, whether the change is in
    -- the before or after of that comparison.
    relativeFileVersion :: Core.Maybe RelativeFileVersionEnum
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Location' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filePath', 'location_filePath' - The name of the file being compared, including its extension and
-- subdirectory, if any.
--
-- 'filePosition', 'location_filePosition' - The position of a change in a compared file, in line number format.
--
-- 'relativeFileVersion', 'location_relativeFileVersion' - In a comparison of commits or a pull request, whether the change is in
-- the before or after of that comparison.
newLocation ::
  Location
newLocation =
  Location'
    { filePath = Core.Nothing,
      filePosition = Core.Nothing,
      relativeFileVersion = Core.Nothing
    }

-- | The name of the file being compared, including its extension and
-- subdirectory, if any.
location_filePath :: Lens.Lens' Location (Core.Maybe Core.Text)
location_filePath = Lens.lens (\Location' {filePath} -> filePath) (\s@Location' {} a -> s {filePath = a} :: Location)

-- | The position of a change in a compared file, in line number format.
location_filePosition :: Lens.Lens' Location (Core.Maybe Core.Integer)
location_filePosition = Lens.lens (\Location' {filePosition} -> filePosition) (\s@Location' {} a -> s {filePosition = a} :: Location)

-- | In a comparison of commits or a pull request, whether the change is in
-- the before or after of that comparison.
location_relativeFileVersion :: Lens.Lens' Location (Core.Maybe RelativeFileVersionEnum)
location_relativeFileVersion = Lens.lens (\Location' {relativeFileVersion} -> relativeFileVersion) (\s@Location' {} a -> s {relativeFileVersion = a} :: Location)

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \x ->
          Location'
            Core.<$> (x Core..:? "filePath")
            Core.<*> (x Core..:? "filePosition")
            Core.<*> (x Core..:? "relativeFileVersion")
      )

instance Core.Hashable Location

instance Core.NFData Location

instance Core.ToJSON Location where
  toJSON Location' {..} =
    Core.object
      ( Core.catMaybes
          [ ("filePath" Core..=) Core.<$> filePath,
            ("filePosition" Core..=) Core.<$> filePosition,
            ("relativeFileVersion" Core..=)
              Core.<$> relativeFileVersion
          ]
      )
