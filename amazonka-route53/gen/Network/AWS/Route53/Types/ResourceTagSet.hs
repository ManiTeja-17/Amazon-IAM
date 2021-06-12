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
-- Module      : Network.AWS.Route53.Types.ResourceTagSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ResourceTagSet where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Route53.Internal
import Network.AWS.Route53.Types.Tag
import Network.AWS.Route53.Types.TagResourceType

-- | A complex type containing a resource and its associated tags.
--
-- /See:/ 'newResourceTagSet' smart constructor.
data ResourceTagSet = ResourceTagSet'
  { -- | The ID for the specified resource.
    resourceId :: Core.Maybe Core.Text,
    -- | The type of the resource.
    --
    -- -   The resource type for health checks is @healthcheck@.
    --
    -- -   The resource type for hosted zones is @hostedzone@.
    resourceType :: Core.Maybe TagResourceType,
    -- | The tags associated with the specified resource.
    tags :: Core.Maybe (Core.NonEmpty Tag)
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResourceTagSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'resourceTagSet_resourceId' - The ID for the specified resource.
--
-- 'resourceType', 'resourceTagSet_resourceType' - The type of the resource.
--
-- -   The resource type for health checks is @healthcheck@.
--
-- -   The resource type for hosted zones is @hostedzone@.
--
-- 'tags', 'resourceTagSet_tags' - The tags associated with the specified resource.
newResourceTagSet ::
  ResourceTagSet
newResourceTagSet =
  ResourceTagSet'
    { resourceId = Core.Nothing,
      resourceType = Core.Nothing,
      tags = Core.Nothing
    }

-- | The ID for the specified resource.
resourceTagSet_resourceId :: Lens.Lens' ResourceTagSet (Core.Maybe Core.Text)
resourceTagSet_resourceId = Lens.lens (\ResourceTagSet' {resourceId} -> resourceId) (\s@ResourceTagSet' {} a -> s {resourceId = a} :: ResourceTagSet)

-- | The type of the resource.
--
-- -   The resource type for health checks is @healthcheck@.
--
-- -   The resource type for hosted zones is @hostedzone@.
resourceTagSet_resourceType :: Lens.Lens' ResourceTagSet (Core.Maybe TagResourceType)
resourceTagSet_resourceType = Lens.lens (\ResourceTagSet' {resourceType} -> resourceType) (\s@ResourceTagSet' {} a -> s {resourceType = a} :: ResourceTagSet)

-- | The tags associated with the specified resource.
resourceTagSet_tags :: Lens.Lens' ResourceTagSet (Core.Maybe (Core.NonEmpty Tag))
resourceTagSet_tags = Lens.lens (\ResourceTagSet' {tags} -> tags) (\s@ResourceTagSet' {} a -> s {tags = a} :: ResourceTagSet) Core.. Lens.mapping Lens._Coerce

instance Core.FromXML ResourceTagSet where
  parseXML x =
    ResourceTagSet'
      Core.<$> (x Core..@? "ResourceId")
      Core.<*> (x Core..@? "ResourceType")
      Core.<*> ( x Core..@? "Tags" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList1 "Tag")
               )

instance Core.Hashable ResourceTagSet

instance Core.NFData ResourceTagSet
