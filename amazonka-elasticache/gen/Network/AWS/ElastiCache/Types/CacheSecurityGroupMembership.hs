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
-- Module      : Network.AWS.ElastiCache.Types.CacheSecurityGroupMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CacheSecurityGroupMembership where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Represents a cluster\'s status within a particular cache security group.
--
-- /See:/ 'newCacheSecurityGroupMembership' smart constructor.
data CacheSecurityGroupMembership = CacheSecurityGroupMembership'
  { -- | The membership status in the cache security group. The status changes
    -- when a cache security group is modified, or when the cache security
    -- groups assigned to a cluster are modified.
    status :: Core.Maybe Core.Text,
    -- | The name of the cache security group.
    cacheSecurityGroupName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CacheSecurityGroupMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'cacheSecurityGroupMembership_status' - The membership status in the cache security group. The status changes
-- when a cache security group is modified, or when the cache security
-- groups assigned to a cluster are modified.
--
-- 'cacheSecurityGroupName', 'cacheSecurityGroupMembership_cacheSecurityGroupName' - The name of the cache security group.
newCacheSecurityGroupMembership ::
  CacheSecurityGroupMembership
newCacheSecurityGroupMembership =
  CacheSecurityGroupMembership'
    { status =
        Core.Nothing,
      cacheSecurityGroupName = Core.Nothing
    }

-- | The membership status in the cache security group. The status changes
-- when a cache security group is modified, or when the cache security
-- groups assigned to a cluster are modified.
cacheSecurityGroupMembership_status :: Lens.Lens' CacheSecurityGroupMembership (Core.Maybe Core.Text)
cacheSecurityGroupMembership_status = Lens.lens (\CacheSecurityGroupMembership' {status} -> status) (\s@CacheSecurityGroupMembership' {} a -> s {status = a} :: CacheSecurityGroupMembership)

-- | The name of the cache security group.
cacheSecurityGroupMembership_cacheSecurityGroupName :: Lens.Lens' CacheSecurityGroupMembership (Core.Maybe Core.Text)
cacheSecurityGroupMembership_cacheSecurityGroupName = Lens.lens (\CacheSecurityGroupMembership' {cacheSecurityGroupName} -> cacheSecurityGroupName) (\s@CacheSecurityGroupMembership' {} a -> s {cacheSecurityGroupName = a} :: CacheSecurityGroupMembership)

instance Core.FromXML CacheSecurityGroupMembership where
  parseXML x =
    CacheSecurityGroupMembership'
      Core.<$> (x Core..@? "Status")
      Core.<*> (x Core..@? "CacheSecurityGroupName")

instance Core.Hashable CacheSecurityGroupMembership

instance Core.NFData CacheSecurityGroupMembership
