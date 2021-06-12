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
-- Module      : Network.AWS.ElasticSearch.Types.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.Tag where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Specifies a key value pair for a resource tag.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | Specifies the @TagKey@, the name of the tag. Tag keys must be unique for
    -- the Elasticsearch domain to which they are attached.
    key :: Core.Text,
    -- | Specifies the @TagValue@, the value assigned to the corresponding tag
    -- key. Tag values can be null and do not have to be unique in a tag set.
    -- For example, you can have a key value pair in a tag set of
    -- @project : Trinity@ and @cost-center : Trinity@
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
-- 'key', 'tag_key' - Specifies the @TagKey@, the name of the tag. Tag keys must be unique for
-- the Elasticsearch domain to which they are attached.
--
-- 'value', 'tag_value' - Specifies the @TagValue@, the value assigned to the corresponding tag
-- key. Tag values can be null and do not have to be unique in a tag set.
-- For example, you can have a key value pair in a tag set of
-- @project : Trinity@ and @cost-center : Trinity@
newTag ::
  -- | 'key'
  Core.Text ->
  -- | 'value'
  Core.Text ->
  Tag
newTag pKey_ pValue_ =
  Tag' {key = pKey_, value = pValue_}

-- | Specifies the @TagKey@, the name of the tag. Tag keys must be unique for
-- the Elasticsearch domain to which they are attached.
tag_key :: Lens.Lens' Tag Core.Text
tag_key = Lens.lens (\Tag' {key} -> key) (\s@Tag' {} a -> s {key = a} :: Tag)

-- | Specifies the @TagValue@, the value assigned to the corresponding tag
-- key. Tag values can be null and do not have to be unique in a tag set.
-- For example, you can have a key value pair in a tag set of
-- @project : Trinity@ and @cost-center : Trinity@
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
