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
-- Module      : Network.AWS.OpsWorksCM.Types.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types.Tag where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | A map that contains tag keys and tag values to attach to an AWS OpsWorks
-- for Chef Automate or AWS OpsWorks for Puppet Enterprise server. Leading
-- and trailing white spaces are trimmed from both the key and value. A
-- maximum of 50 user-applied tags is allowed for tag-supported AWS
-- OpsWorks-CM resources.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | A tag key, such as @Stage@ or @Name@. A tag key cannot be empty. The key
    -- can be a maximum of 127 characters, and can contain only Unicode
    -- letters, numbers, or separators, or the following special characters:
    -- @+ - = . _ : \/@
    key :: Core.Text,
    -- | An optional tag value, such as @Production@ or @test-owcm-server@. The
    -- value can be a maximum of 255 characters, and contain only Unicode
    -- letters, numbers, or separators, or the following special characters:
    -- @+ - = . _ : \/@
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
-- 'key', 'tag_key' - A tag key, such as @Stage@ or @Name@. A tag key cannot be empty. The key
-- can be a maximum of 127 characters, and can contain only Unicode
-- letters, numbers, or separators, or the following special characters:
-- @+ - = . _ : \/@
--
-- 'value', 'tag_value' - An optional tag value, such as @Production@ or @test-owcm-server@. The
-- value can be a maximum of 255 characters, and contain only Unicode
-- letters, numbers, or separators, or the following special characters:
-- @+ - = . _ : \/@
newTag ::
  -- | 'key'
  Core.Text ->
  -- | 'value'
  Core.Text ->
  Tag
newTag pKey_ pValue_ =
  Tag' {key = pKey_, value = pValue_}

-- | A tag key, such as @Stage@ or @Name@. A tag key cannot be empty. The key
-- can be a maximum of 127 characters, and can contain only Unicode
-- letters, numbers, or separators, or the following special characters:
-- @+ - = . _ : \/@
tag_key :: Lens.Lens' Tag Core.Text
tag_key = Lens.lens (\Tag' {key} -> key) (\s@Tag' {} a -> s {key = a} :: Tag)

-- | An optional tag value, such as @Production@ or @test-owcm-server@. The
-- value can be a maximum of 255 characters, and contain only Unicode
-- letters, numbers, or separators, or the following special characters:
-- @+ - = . _ : \/@
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
