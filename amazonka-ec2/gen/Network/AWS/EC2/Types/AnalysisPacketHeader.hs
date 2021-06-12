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
-- Module      : Network.AWS.EC2.Types.AnalysisPacketHeader
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisPacketHeader where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PortRange
import qualified Network.AWS.Lens as Lens

-- | Describes a header. Reflects any changes made by a component as traffic
-- passes through. The fields of an inbound header are null except for the
-- first component of a path.
--
-- /See:/ 'newAnalysisPacketHeader' smart constructor.
data AnalysisPacketHeader = AnalysisPacketHeader'
  { -- | The destination addresses.
    destinationAddresses :: Core.Maybe [Core.Text],
    -- | The source addresses.
    sourceAddresses :: Core.Maybe [Core.Text],
    -- | The destination port ranges.
    destinationPortRanges :: Core.Maybe [PortRange],
    -- | The protocol.
    protocol :: Core.Maybe Core.Text,
    -- | The source port ranges.
    sourcePortRanges :: Core.Maybe [PortRange]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AnalysisPacketHeader' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destinationAddresses', 'analysisPacketHeader_destinationAddresses' - The destination addresses.
--
-- 'sourceAddresses', 'analysisPacketHeader_sourceAddresses' - The source addresses.
--
-- 'destinationPortRanges', 'analysisPacketHeader_destinationPortRanges' - The destination port ranges.
--
-- 'protocol', 'analysisPacketHeader_protocol' - The protocol.
--
-- 'sourcePortRanges', 'analysisPacketHeader_sourcePortRanges' - The source port ranges.
newAnalysisPacketHeader ::
  AnalysisPacketHeader
newAnalysisPacketHeader =
  AnalysisPacketHeader'
    { destinationAddresses =
        Core.Nothing,
      sourceAddresses = Core.Nothing,
      destinationPortRanges = Core.Nothing,
      protocol = Core.Nothing,
      sourcePortRanges = Core.Nothing
    }

-- | The destination addresses.
analysisPacketHeader_destinationAddresses :: Lens.Lens' AnalysisPacketHeader (Core.Maybe [Core.Text])
analysisPacketHeader_destinationAddresses = Lens.lens (\AnalysisPacketHeader' {destinationAddresses} -> destinationAddresses) (\s@AnalysisPacketHeader' {} a -> s {destinationAddresses = a} :: AnalysisPacketHeader) Core.. Lens.mapping Lens._Coerce

-- | The source addresses.
analysisPacketHeader_sourceAddresses :: Lens.Lens' AnalysisPacketHeader (Core.Maybe [Core.Text])
analysisPacketHeader_sourceAddresses = Lens.lens (\AnalysisPacketHeader' {sourceAddresses} -> sourceAddresses) (\s@AnalysisPacketHeader' {} a -> s {sourceAddresses = a} :: AnalysisPacketHeader) Core.. Lens.mapping Lens._Coerce

-- | The destination port ranges.
analysisPacketHeader_destinationPortRanges :: Lens.Lens' AnalysisPacketHeader (Core.Maybe [PortRange])
analysisPacketHeader_destinationPortRanges = Lens.lens (\AnalysisPacketHeader' {destinationPortRanges} -> destinationPortRanges) (\s@AnalysisPacketHeader' {} a -> s {destinationPortRanges = a} :: AnalysisPacketHeader) Core.. Lens.mapping Lens._Coerce

-- | The protocol.
analysisPacketHeader_protocol :: Lens.Lens' AnalysisPacketHeader (Core.Maybe Core.Text)
analysisPacketHeader_protocol = Lens.lens (\AnalysisPacketHeader' {protocol} -> protocol) (\s@AnalysisPacketHeader' {} a -> s {protocol = a} :: AnalysisPacketHeader)

-- | The source port ranges.
analysisPacketHeader_sourcePortRanges :: Lens.Lens' AnalysisPacketHeader (Core.Maybe [PortRange])
analysisPacketHeader_sourcePortRanges = Lens.lens (\AnalysisPacketHeader' {sourcePortRanges} -> sourcePortRanges) (\s@AnalysisPacketHeader' {} a -> s {sourcePortRanges = a} :: AnalysisPacketHeader) Core.. Lens.mapping Lens._Coerce

instance Core.FromXML AnalysisPacketHeader where
  parseXML x =
    AnalysisPacketHeader'
      Core.<$> ( x Core..@? "destinationAddressSet"
                   Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "item")
               )
      Core.<*> ( x Core..@? "sourceAddressSet" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "item")
               )
      Core.<*> ( x Core..@? "destinationPortRangeSet"
                   Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "item")
               )
      Core.<*> (x Core..@? "protocol")
      Core.<*> ( x Core..@? "sourcePortRangeSet" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "item")
               )

instance Core.Hashable AnalysisPacketHeader

instance Core.NFData AnalysisPacketHeader
