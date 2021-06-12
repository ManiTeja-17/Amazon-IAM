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
-- Module      : Network.AWS.SWF.Types.ResourceTag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ResourceTag where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Tags are key-value pairs that can be associated with Amazon SWF state
-- machines and activities.
--
-- Tags may only contain unicode letters, digits, whitespace, or these
-- symbols: @_ . : \/ = + - \@@.
--
-- /See:/ 'newResourceTag' smart constructor.
data ResourceTag = ResourceTag'
  { -- | The value of a tag.
    value :: Core.Maybe Core.Text,
    -- | The key of a tag.
    key :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResourceTag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'resourceTag_value' - The value of a tag.
--
-- 'key', 'resourceTag_key' - The key of a tag.
newResourceTag ::
  -- | 'key'
  Core.Text ->
  ResourceTag
newResourceTag pKey_ =
  ResourceTag' {value = Core.Nothing, key = pKey_}

-- | The value of a tag.
resourceTag_value :: Lens.Lens' ResourceTag (Core.Maybe Core.Text)
resourceTag_value = Lens.lens (\ResourceTag' {value} -> value) (\s@ResourceTag' {} a -> s {value = a} :: ResourceTag)

-- | The key of a tag.
resourceTag_key :: Lens.Lens' ResourceTag Core.Text
resourceTag_key = Lens.lens (\ResourceTag' {key} -> key) (\s@ResourceTag' {} a -> s {key = a} :: ResourceTag)

instance Core.FromJSON ResourceTag where
  parseJSON =
    Core.withObject
      "ResourceTag"
      ( \x ->
          ResourceTag'
            Core.<$> (x Core..:? "value") Core.<*> (x Core..: "key")
      )

instance Core.Hashable ResourceTag

instance Core.NFData ResourceTag

instance Core.ToJSON ResourceTag where
  toJSON ResourceTag' {..} =
    Core.object
      ( Core.catMaybes
          [ ("value" Core..=) Core.<$> value,
            Core.Just ("key" Core..= key)
          ]
      )
