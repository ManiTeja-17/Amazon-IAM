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
-- Module      : Amazonka.GroundStation.Types.DataflowEndpointGroupIdResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GroundStation.Types.DataflowEndpointGroupIdResponse where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- |
--
-- /See:/ 'newDataflowEndpointGroupIdResponse' smart constructor.
data DataflowEndpointGroupIdResponse = DataflowEndpointGroupIdResponse'
  { -- | UUID of a dataflow endpoint group.
    dataflowEndpointGroupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataflowEndpointGroupIdResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataflowEndpointGroupId', 'dataflowEndpointGroupIdResponse_dataflowEndpointGroupId' - UUID of a dataflow endpoint group.
newDataflowEndpointGroupIdResponse ::
  DataflowEndpointGroupIdResponse
newDataflowEndpointGroupIdResponse =
  DataflowEndpointGroupIdResponse'
    { dataflowEndpointGroupId =
        Prelude.Nothing
    }

-- | UUID of a dataflow endpoint group.
dataflowEndpointGroupIdResponse_dataflowEndpointGroupId :: Lens.Lens' DataflowEndpointGroupIdResponse (Prelude.Maybe Prelude.Text)
dataflowEndpointGroupIdResponse_dataflowEndpointGroupId = Lens.lens (\DataflowEndpointGroupIdResponse' {dataflowEndpointGroupId} -> dataflowEndpointGroupId) (\s@DataflowEndpointGroupIdResponse' {} a -> s {dataflowEndpointGroupId = a} :: DataflowEndpointGroupIdResponse)

instance
  Core.FromJSON
    DataflowEndpointGroupIdResponse
  where
  parseJSON =
    Core.withObject
      "DataflowEndpointGroupIdResponse"
      ( \x ->
          DataflowEndpointGroupIdResponse'
            Prelude.<$> (x Core..:? "dataflowEndpointGroupId")
      )

instance
  Prelude.Hashable
    DataflowEndpointGroupIdResponse

instance
  Prelude.NFData
    DataflowEndpointGroupIdResponse