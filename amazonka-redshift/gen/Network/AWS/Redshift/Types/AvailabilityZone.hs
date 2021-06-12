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
-- Module      : Network.AWS.Redshift.Types.AvailabilityZone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.AvailabilityZone where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.SupportedPlatform

-- | Describes an availability zone.
--
-- /See:/ 'newAvailabilityZone' smart constructor.
data AvailabilityZone = AvailabilityZone'
  { -- | The name of the availability zone.
    name :: Core.Maybe Core.Text,
    supportedPlatforms :: Core.Maybe [SupportedPlatform]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AvailabilityZone' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'availabilityZone_name' - The name of the availability zone.
--
-- 'supportedPlatforms', 'availabilityZone_supportedPlatforms' -
newAvailabilityZone ::
  AvailabilityZone
newAvailabilityZone =
  AvailabilityZone'
    { name = Core.Nothing,
      supportedPlatforms = Core.Nothing
    }

-- | The name of the availability zone.
availabilityZone_name :: Lens.Lens' AvailabilityZone (Core.Maybe Core.Text)
availabilityZone_name = Lens.lens (\AvailabilityZone' {name} -> name) (\s@AvailabilityZone' {} a -> s {name = a} :: AvailabilityZone)

-- |
availabilityZone_supportedPlatforms :: Lens.Lens' AvailabilityZone (Core.Maybe [SupportedPlatform])
availabilityZone_supportedPlatforms = Lens.lens (\AvailabilityZone' {supportedPlatforms} -> supportedPlatforms) (\s@AvailabilityZone' {} a -> s {supportedPlatforms = a} :: AvailabilityZone) Core.. Lens.mapping Lens._Coerce

instance Core.FromXML AvailabilityZone where
  parseXML x =
    AvailabilityZone'
      Core.<$> (x Core..@? "Name")
      Core.<*> ( x Core..@? "SupportedPlatforms" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "SupportedPlatform")
               )

instance Core.Hashable AvailabilityZone

instance Core.NFData AvailabilityZone
