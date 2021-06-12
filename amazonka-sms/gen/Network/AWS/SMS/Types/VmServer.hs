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
-- Module      : Network.AWS.SMS.Types.VmServer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.VmServer where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SMS.Types.VmManagerType
import Network.AWS.SMS.Types.VmServerAddress

-- | Represents a VM server.
--
-- /See:/ 'newVmServer' smart constructor.
data VmServer = VmServer'
  { -- | The VM folder path in the vCenter Server virtual machine inventory tree.
    vmPath :: Core.Maybe Core.Text,
    -- | The name of the VM manager.
    vmManagerName :: Core.Maybe Core.Text,
    -- | The name of the VM.
    vmName :: Core.Maybe Core.Text,
    -- | The VM server location.
    vmServerAddress :: Core.Maybe VmServerAddress,
    -- | The type of VM management product.
    vmManagerType :: Core.Maybe VmManagerType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'VmServer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vmPath', 'vmServer_vmPath' - The VM folder path in the vCenter Server virtual machine inventory tree.
--
-- 'vmManagerName', 'vmServer_vmManagerName' - The name of the VM manager.
--
-- 'vmName', 'vmServer_vmName' - The name of the VM.
--
-- 'vmServerAddress', 'vmServer_vmServerAddress' - The VM server location.
--
-- 'vmManagerType', 'vmServer_vmManagerType' - The type of VM management product.
newVmServer ::
  VmServer
newVmServer =
  VmServer'
    { vmPath = Core.Nothing,
      vmManagerName = Core.Nothing,
      vmName = Core.Nothing,
      vmServerAddress = Core.Nothing,
      vmManagerType = Core.Nothing
    }

-- | The VM folder path in the vCenter Server virtual machine inventory tree.
vmServer_vmPath :: Lens.Lens' VmServer (Core.Maybe Core.Text)
vmServer_vmPath = Lens.lens (\VmServer' {vmPath} -> vmPath) (\s@VmServer' {} a -> s {vmPath = a} :: VmServer)

-- | The name of the VM manager.
vmServer_vmManagerName :: Lens.Lens' VmServer (Core.Maybe Core.Text)
vmServer_vmManagerName = Lens.lens (\VmServer' {vmManagerName} -> vmManagerName) (\s@VmServer' {} a -> s {vmManagerName = a} :: VmServer)

-- | The name of the VM.
vmServer_vmName :: Lens.Lens' VmServer (Core.Maybe Core.Text)
vmServer_vmName = Lens.lens (\VmServer' {vmName} -> vmName) (\s@VmServer' {} a -> s {vmName = a} :: VmServer)

-- | The VM server location.
vmServer_vmServerAddress :: Lens.Lens' VmServer (Core.Maybe VmServerAddress)
vmServer_vmServerAddress = Lens.lens (\VmServer' {vmServerAddress} -> vmServerAddress) (\s@VmServer' {} a -> s {vmServerAddress = a} :: VmServer)

-- | The type of VM management product.
vmServer_vmManagerType :: Lens.Lens' VmServer (Core.Maybe VmManagerType)
vmServer_vmManagerType = Lens.lens (\VmServer' {vmManagerType} -> vmManagerType) (\s@VmServer' {} a -> s {vmManagerType = a} :: VmServer)

instance Core.FromJSON VmServer where
  parseJSON =
    Core.withObject
      "VmServer"
      ( \x ->
          VmServer'
            Core.<$> (x Core..:? "vmPath")
            Core.<*> (x Core..:? "vmManagerName")
            Core.<*> (x Core..:? "vmName")
            Core.<*> (x Core..:? "vmServerAddress")
            Core.<*> (x Core..:? "vmManagerType")
      )

instance Core.Hashable VmServer

instance Core.NFData VmServer

instance Core.ToJSON VmServer where
  toJSON VmServer' {..} =
    Core.object
      ( Core.catMaybes
          [ ("vmPath" Core..=) Core.<$> vmPath,
            ("vmManagerName" Core..=) Core.<$> vmManagerName,
            ("vmName" Core..=) Core.<$> vmName,
            ("vmServerAddress" Core..=) Core.<$> vmServerAddress,
            ("vmManagerType" Core..=) Core.<$> vmManagerType
          ]
      )
