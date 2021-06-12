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
-- Module      : Network.AWS.EC2.Types.ActiveInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ActiveInstance where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceHealthStatus
import qualified Network.AWS.Lens as Lens

-- | Describes a running instance in a Spot Fleet.
--
-- /See:/ 'newActiveInstance' smart constructor.
data ActiveInstance = ActiveInstance'
  { -- | The ID of the instance.
    instanceId :: Core.Maybe Core.Text,
    -- | The instance type.
    instanceType :: Core.Maybe Core.Text,
    -- | The ID of the Spot Instance request.
    spotInstanceRequestId :: Core.Maybe Core.Text,
    -- | The health status of the instance. If the status of either the instance
    -- status check or the system status check is @impaired@, the health status
    -- of the instance is @unhealthy@. Otherwise, the health status is
    -- @healthy@.
    instanceHealth :: Core.Maybe InstanceHealthStatus
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ActiveInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'activeInstance_instanceId' - The ID of the instance.
--
-- 'instanceType', 'activeInstance_instanceType' - The instance type.
--
-- 'spotInstanceRequestId', 'activeInstance_spotInstanceRequestId' - The ID of the Spot Instance request.
--
-- 'instanceHealth', 'activeInstance_instanceHealth' - The health status of the instance. If the status of either the instance
-- status check or the system status check is @impaired@, the health status
-- of the instance is @unhealthy@. Otherwise, the health status is
-- @healthy@.
newActiveInstance ::
  ActiveInstance
newActiveInstance =
  ActiveInstance'
    { instanceId = Core.Nothing,
      instanceType = Core.Nothing,
      spotInstanceRequestId = Core.Nothing,
      instanceHealth = Core.Nothing
    }

-- | The ID of the instance.
activeInstance_instanceId :: Lens.Lens' ActiveInstance (Core.Maybe Core.Text)
activeInstance_instanceId = Lens.lens (\ActiveInstance' {instanceId} -> instanceId) (\s@ActiveInstance' {} a -> s {instanceId = a} :: ActiveInstance)

-- | The instance type.
activeInstance_instanceType :: Lens.Lens' ActiveInstance (Core.Maybe Core.Text)
activeInstance_instanceType = Lens.lens (\ActiveInstance' {instanceType} -> instanceType) (\s@ActiveInstance' {} a -> s {instanceType = a} :: ActiveInstance)

-- | The ID of the Spot Instance request.
activeInstance_spotInstanceRequestId :: Lens.Lens' ActiveInstance (Core.Maybe Core.Text)
activeInstance_spotInstanceRequestId = Lens.lens (\ActiveInstance' {spotInstanceRequestId} -> spotInstanceRequestId) (\s@ActiveInstance' {} a -> s {spotInstanceRequestId = a} :: ActiveInstance)

-- | The health status of the instance. If the status of either the instance
-- status check or the system status check is @impaired@, the health status
-- of the instance is @unhealthy@. Otherwise, the health status is
-- @healthy@.
activeInstance_instanceHealth :: Lens.Lens' ActiveInstance (Core.Maybe InstanceHealthStatus)
activeInstance_instanceHealth = Lens.lens (\ActiveInstance' {instanceHealth} -> instanceHealth) (\s@ActiveInstance' {} a -> s {instanceHealth = a} :: ActiveInstance)

instance Core.FromXML ActiveInstance where
  parseXML x =
    ActiveInstance'
      Core.<$> (x Core..@? "instanceId")
      Core.<*> (x Core..@? "instanceType")
      Core.<*> (x Core..@? "spotInstanceRequestId")
      Core.<*> (x Core..@? "instanceHealth")

instance Core.Hashable ActiveInstance

instance Core.NFData ActiveInstance
