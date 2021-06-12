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
-- Module      : Network.AWS.EC2.Types.LocalGatewayVirtualInterfaceGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LocalGatewayVirtualInterfaceGroup where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import qualified Network.AWS.Lens as Lens

-- | Describes a local gateway virtual interface group.
--
-- /See:/ 'newLocalGatewayVirtualInterfaceGroup' smart constructor.
data LocalGatewayVirtualInterfaceGroup = LocalGatewayVirtualInterfaceGroup'
  { -- | The IDs of the virtual interfaces.
    localGatewayVirtualInterfaceIds :: Core.Maybe [Core.Text],
    -- | The AWS account ID that owns the local gateway virtual interface group.
    ownerId :: Core.Maybe Core.Text,
    -- | The ID of the virtual interface group.
    localGatewayVirtualInterfaceGroupId :: Core.Maybe Core.Text,
    -- | The ID of the local gateway.
    localGatewayId :: Core.Maybe Core.Text,
    -- | The tags assigned to the virtual interface group.
    tags :: Core.Maybe [Tag]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LocalGatewayVirtualInterfaceGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'localGatewayVirtualInterfaceIds', 'localGatewayVirtualInterfaceGroup_localGatewayVirtualInterfaceIds' - The IDs of the virtual interfaces.
--
-- 'ownerId', 'localGatewayVirtualInterfaceGroup_ownerId' - The AWS account ID that owns the local gateway virtual interface group.
--
-- 'localGatewayVirtualInterfaceGroupId', 'localGatewayVirtualInterfaceGroup_localGatewayVirtualInterfaceGroupId' - The ID of the virtual interface group.
--
-- 'localGatewayId', 'localGatewayVirtualInterfaceGroup_localGatewayId' - The ID of the local gateway.
--
-- 'tags', 'localGatewayVirtualInterfaceGroup_tags' - The tags assigned to the virtual interface group.
newLocalGatewayVirtualInterfaceGroup ::
  LocalGatewayVirtualInterfaceGroup
newLocalGatewayVirtualInterfaceGroup =
  LocalGatewayVirtualInterfaceGroup'
    { localGatewayVirtualInterfaceIds =
        Core.Nothing,
      ownerId = Core.Nothing,
      localGatewayVirtualInterfaceGroupId =
        Core.Nothing,
      localGatewayId = Core.Nothing,
      tags = Core.Nothing
    }

-- | The IDs of the virtual interfaces.
localGatewayVirtualInterfaceGroup_localGatewayVirtualInterfaceIds :: Lens.Lens' LocalGatewayVirtualInterfaceGroup (Core.Maybe [Core.Text])
localGatewayVirtualInterfaceGroup_localGatewayVirtualInterfaceIds = Lens.lens (\LocalGatewayVirtualInterfaceGroup' {localGatewayVirtualInterfaceIds} -> localGatewayVirtualInterfaceIds) (\s@LocalGatewayVirtualInterfaceGroup' {} a -> s {localGatewayVirtualInterfaceIds = a} :: LocalGatewayVirtualInterfaceGroup) Core.. Lens.mapping Lens._Coerce

-- | The AWS account ID that owns the local gateway virtual interface group.
localGatewayVirtualInterfaceGroup_ownerId :: Lens.Lens' LocalGatewayVirtualInterfaceGroup (Core.Maybe Core.Text)
localGatewayVirtualInterfaceGroup_ownerId = Lens.lens (\LocalGatewayVirtualInterfaceGroup' {ownerId} -> ownerId) (\s@LocalGatewayVirtualInterfaceGroup' {} a -> s {ownerId = a} :: LocalGatewayVirtualInterfaceGroup)

-- | The ID of the virtual interface group.
localGatewayVirtualInterfaceGroup_localGatewayVirtualInterfaceGroupId :: Lens.Lens' LocalGatewayVirtualInterfaceGroup (Core.Maybe Core.Text)
localGatewayVirtualInterfaceGroup_localGatewayVirtualInterfaceGroupId = Lens.lens (\LocalGatewayVirtualInterfaceGroup' {localGatewayVirtualInterfaceGroupId} -> localGatewayVirtualInterfaceGroupId) (\s@LocalGatewayVirtualInterfaceGroup' {} a -> s {localGatewayVirtualInterfaceGroupId = a} :: LocalGatewayVirtualInterfaceGroup)

-- | The ID of the local gateway.
localGatewayVirtualInterfaceGroup_localGatewayId :: Lens.Lens' LocalGatewayVirtualInterfaceGroup (Core.Maybe Core.Text)
localGatewayVirtualInterfaceGroup_localGatewayId = Lens.lens (\LocalGatewayVirtualInterfaceGroup' {localGatewayId} -> localGatewayId) (\s@LocalGatewayVirtualInterfaceGroup' {} a -> s {localGatewayId = a} :: LocalGatewayVirtualInterfaceGroup)

-- | The tags assigned to the virtual interface group.
localGatewayVirtualInterfaceGroup_tags :: Lens.Lens' LocalGatewayVirtualInterfaceGroup (Core.Maybe [Tag])
localGatewayVirtualInterfaceGroup_tags = Lens.lens (\LocalGatewayVirtualInterfaceGroup' {tags} -> tags) (\s@LocalGatewayVirtualInterfaceGroup' {} a -> s {tags = a} :: LocalGatewayVirtualInterfaceGroup) Core.. Lens.mapping Lens._Coerce

instance
  Core.FromXML
    LocalGatewayVirtualInterfaceGroup
  where
  parseXML x =
    LocalGatewayVirtualInterfaceGroup'
      Core.<$> ( x Core..@? "localGatewayVirtualInterfaceIdSet"
                   Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "item")
               )
      Core.<*> (x Core..@? "ownerId")
      Core.<*> (x Core..@? "localGatewayVirtualInterfaceGroupId")
      Core.<*> (x Core..@? "localGatewayId")
      Core.<*> ( x Core..@? "tagSet" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "item")
               )

instance
  Core.Hashable
    LocalGatewayVirtualInterfaceGroup

instance
  Core.NFData
    LocalGatewayVirtualInterfaceGroup
