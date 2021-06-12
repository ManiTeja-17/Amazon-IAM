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
-- Module      : Network.AWS.EC2.Types.InstanceStatusDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceStatusDetails where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.StatusName
import Network.AWS.EC2.Types.StatusType
import qualified Network.AWS.Lens as Lens

-- | Describes the instance status.
--
-- /See:/ 'newInstanceStatusDetails' smart constructor.
data InstanceStatusDetails = InstanceStatusDetails'
  { -- | The status.
    status :: Core.Maybe StatusType,
    -- | The time when a status check failed. For an instance that was launched
    -- and impaired, this is the time when the instance was launched.
    impairedSince :: Core.Maybe Core.ISO8601,
    -- | The type of instance status.
    name :: Core.Maybe StatusName
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'InstanceStatusDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'instanceStatusDetails_status' - The status.
--
-- 'impairedSince', 'instanceStatusDetails_impairedSince' - The time when a status check failed. For an instance that was launched
-- and impaired, this is the time when the instance was launched.
--
-- 'name', 'instanceStatusDetails_name' - The type of instance status.
newInstanceStatusDetails ::
  InstanceStatusDetails
newInstanceStatusDetails =
  InstanceStatusDetails'
    { status = Core.Nothing,
      impairedSince = Core.Nothing,
      name = Core.Nothing
    }

-- | The status.
instanceStatusDetails_status :: Lens.Lens' InstanceStatusDetails (Core.Maybe StatusType)
instanceStatusDetails_status = Lens.lens (\InstanceStatusDetails' {status} -> status) (\s@InstanceStatusDetails' {} a -> s {status = a} :: InstanceStatusDetails)

-- | The time when a status check failed. For an instance that was launched
-- and impaired, this is the time when the instance was launched.
instanceStatusDetails_impairedSince :: Lens.Lens' InstanceStatusDetails (Core.Maybe Core.UTCTime)
instanceStatusDetails_impairedSince = Lens.lens (\InstanceStatusDetails' {impairedSince} -> impairedSince) (\s@InstanceStatusDetails' {} a -> s {impairedSince = a} :: InstanceStatusDetails) Core.. Lens.mapping Core._Time

-- | The type of instance status.
instanceStatusDetails_name :: Lens.Lens' InstanceStatusDetails (Core.Maybe StatusName)
instanceStatusDetails_name = Lens.lens (\InstanceStatusDetails' {name} -> name) (\s@InstanceStatusDetails' {} a -> s {name = a} :: InstanceStatusDetails)

instance Core.FromXML InstanceStatusDetails where
  parseXML x =
    InstanceStatusDetails'
      Core.<$> (x Core..@? "status")
      Core.<*> (x Core..@? "impairedSince")
      Core.<*> (x Core..@? "name")

instance Core.Hashable InstanceStatusDetails

instance Core.NFData InstanceStatusDetails
