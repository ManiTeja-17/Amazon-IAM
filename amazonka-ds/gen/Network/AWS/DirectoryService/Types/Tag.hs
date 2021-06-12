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
-- Module      : Network.AWS.DirectoryService.Types.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.Tag where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Metadata assigned to a directory consisting of a key-value pair.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | Required name of the tag. The string value can be Unicode characters and
    -- cannot be prefixed with \"aws:\". The string can contain only the set of
    -- Unicode letters, digits, white-space, \'_\', \'.\', \'\/\', \'=\',
    -- \'+\', \'-\' (Java regex:
    -- \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:\/=+\\\\-]*)$\").
    key :: Core.Text,
    -- | The optional value of the tag. The string value can be Unicode
    -- characters. The string can contain only the set of Unicode letters,
    -- digits, white-space, \'_\', \'.\', \'\/\', \'=\', \'+\', \'-\' (Java
    -- regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:\/=+\\\\-]*)$\").
    value :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Tag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'tag_key' - Required name of the tag. The string value can be Unicode characters and
-- cannot be prefixed with \"aws:\". The string can contain only the set of
-- Unicode letters, digits, white-space, \'_\', \'.\', \'\/\', \'=\',
-- \'+\', \'-\' (Java regex:
-- \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:\/=+\\\\-]*)$\").
--
-- 'value', 'tag_value' - The optional value of the tag. The string value can be Unicode
-- characters. The string can contain only the set of Unicode letters,
-- digits, white-space, \'_\', \'.\', \'\/\', \'=\', \'+\', \'-\' (Java
-- regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:\/=+\\\\-]*)$\").
newTag ::
  -- | 'key'
  Core.Text ->
  -- | 'value'
  Core.Text ->
  Tag
newTag pKey_ pValue_ =
  Tag' {key = pKey_, value = pValue_}

-- | Required name of the tag. The string value can be Unicode characters and
-- cannot be prefixed with \"aws:\". The string can contain only the set of
-- Unicode letters, digits, white-space, \'_\', \'.\', \'\/\', \'=\',
-- \'+\', \'-\' (Java regex:
-- \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:\/=+\\\\-]*)$\").
tag_key :: Lens.Lens' Tag Core.Text
tag_key = Lens.lens (\Tag' {key} -> key) (\s@Tag' {} a -> s {key = a} :: Tag)

-- | The optional value of the tag. The string value can be Unicode
-- characters. The string can contain only the set of Unicode letters,
-- digits, white-space, \'_\', \'.\', \'\/\', \'=\', \'+\', \'-\' (Java
-- regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:\/=+\\\\-]*)$\").
tag_value :: Lens.Lens' Tag Core.Text
tag_value = Lens.lens (\Tag' {value} -> value) (\s@Tag' {} a -> s {value = a} :: Tag)

instance Core.FromJSON Tag where
  parseJSON =
    Core.withObject
      "Tag"
      ( \x ->
          Tag'
            Core.<$> (x Core..: "Key") Core.<*> (x Core..: "Value")
      )

instance Core.Hashable Tag

instance Core.NFData Tag

instance Core.ToJSON Tag where
  toJSON Tag' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Key" Core..= key),
            Core.Just ("Value" Core..= value)
          ]
      )
