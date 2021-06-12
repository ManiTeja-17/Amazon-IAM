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
-- Module      : Network.AWS.DirectConnect.Types.ResourceTag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.ResourceTag where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectConnect.Types.Tag
import qualified Network.AWS.Lens as Lens

-- | Information about a tag associated with an AWS Direct Connect resource.
--
-- /See:/ 'newResourceTag' smart constructor.
data ResourceTag = ResourceTag'
  { -- | The Amazon Resource Name (ARN) of the resource.
    resourceArn :: Core.Maybe Core.Text,
    -- | The tags.
    tags :: Core.Maybe (Core.NonEmpty Tag)
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
-- 'resourceArn', 'resourceTag_resourceArn' - The Amazon Resource Name (ARN) of the resource.
--
-- 'tags', 'resourceTag_tags' - The tags.
newResourceTag ::
  ResourceTag
newResourceTag =
  ResourceTag'
    { resourceArn = Core.Nothing,
      tags = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) of the resource.
resourceTag_resourceArn :: Lens.Lens' ResourceTag (Core.Maybe Core.Text)
resourceTag_resourceArn = Lens.lens (\ResourceTag' {resourceArn} -> resourceArn) (\s@ResourceTag' {} a -> s {resourceArn = a} :: ResourceTag)

-- | The tags.
resourceTag_tags :: Lens.Lens' ResourceTag (Core.Maybe (Core.NonEmpty Tag))
resourceTag_tags = Lens.lens (\ResourceTag' {tags} -> tags) (\s@ResourceTag' {} a -> s {tags = a} :: ResourceTag) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON ResourceTag where
  parseJSON =
    Core.withObject
      "ResourceTag"
      ( \x ->
          ResourceTag'
            Core.<$> (x Core..:? "resourceArn")
            Core.<*> (x Core..:? "tags")
      )

instance Core.Hashable ResourceTag

instance Core.NFData ResourceTag
