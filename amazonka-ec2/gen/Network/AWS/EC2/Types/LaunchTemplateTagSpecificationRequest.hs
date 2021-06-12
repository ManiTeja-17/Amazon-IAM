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
-- Module      : Network.AWS.EC2.Types.LaunchTemplateTagSpecificationRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateTagSpecificationRequest where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ResourceType
import Network.AWS.EC2.Types.Tag
import qualified Network.AWS.Lens as Lens

-- | The tags specification for the launch template.
--
-- /See:/ 'newLaunchTemplateTagSpecificationRequest' smart constructor.
data LaunchTemplateTagSpecificationRequest = LaunchTemplateTagSpecificationRequest'
  { -- | The type of resource to tag. Currently, the resource types that support
    -- tagging on creation are @instance@ and @volume@. To tag a resource after
    -- it has been created, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags>.
    resourceType :: Core.Maybe ResourceType,
    -- | The tags to apply to the resource.
    tags :: Core.Maybe [Tag]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LaunchTemplateTagSpecificationRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'launchTemplateTagSpecificationRequest_resourceType' - The type of resource to tag. Currently, the resource types that support
-- tagging on creation are @instance@ and @volume@. To tag a resource after
-- it has been created, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags>.
--
-- 'tags', 'launchTemplateTagSpecificationRequest_tags' - The tags to apply to the resource.
newLaunchTemplateTagSpecificationRequest ::
  LaunchTemplateTagSpecificationRequest
newLaunchTemplateTagSpecificationRequest =
  LaunchTemplateTagSpecificationRequest'
    { resourceType =
        Core.Nothing,
      tags = Core.Nothing
    }

-- | The type of resource to tag. Currently, the resource types that support
-- tagging on creation are @instance@ and @volume@. To tag a resource after
-- it has been created, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags>.
launchTemplateTagSpecificationRequest_resourceType :: Lens.Lens' LaunchTemplateTagSpecificationRequest (Core.Maybe ResourceType)
launchTemplateTagSpecificationRequest_resourceType = Lens.lens (\LaunchTemplateTagSpecificationRequest' {resourceType} -> resourceType) (\s@LaunchTemplateTagSpecificationRequest' {} a -> s {resourceType = a} :: LaunchTemplateTagSpecificationRequest)

-- | The tags to apply to the resource.
launchTemplateTagSpecificationRequest_tags :: Lens.Lens' LaunchTemplateTagSpecificationRequest (Core.Maybe [Tag])
launchTemplateTagSpecificationRequest_tags = Lens.lens (\LaunchTemplateTagSpecificationRequest' {tags} -> tags) (\s@LaunchTemplateTagSpecificationRequest' {} a -> s {tags = a} :: LaunchTemplateTagSpecificationRequest) Core.. Lens.mapping Lens._Coerce

instance
  Core.Hashable
    LaunchTemplateTagSpecificationRequest

instance
  Core.NFData
    LaunchTemplateTagSpecificationRequest

instance
  Core.ToQuery
    LaunchTemplateTagSpecificationRequest
  where
  toQuery LaunchTemplateTagSpecificationRequest' {..} =
    Core.mconcat
      [ "ResourceType" Core.=: resourceType,
        Core.toQuery (Core.toQueryList "Tag" Core.<$> tags)
      ]
