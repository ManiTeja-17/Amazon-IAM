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
-- Module      : Network.AWS.Route53AutoNaming.Types.OperationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.OperationSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Route53AutoNaming.Types.OperationStatus

-- | A complex type that contains information about an operation that matches
-- the criteria that you specified in a
-- <https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html ListOperations>
-- request.
--
-- /See:/ 'newOperationSummary' smart constructor.
data OperationSummary = OperationSummary'
  { -- | The status of the operation. Values include the following:
    --
    -- -   __SUBMITTED__: This is the initial state immediately after you
    --     submit a request.
    --
    -- -   __PENDING__: AWS Cloud Map is performing the operation.
    --
    -- -   __SUCCESS__: The operation succeeded.
    --
    -- -   __FAIL__: The operation failed. For the failure reason, see
    --     @ErrorMessage@.
    status :: Core.Maybe OperationStatus,
    -- | The ID for an operation.
    id :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'OperationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'operationSummary_status' - The status of the operation. Values include the following:
--
-- -   __SUBMITTED__: This is the initial state immediately after you
--     submit a request.
--
-- -   __PENDING__: AWS Cloud Map is performing the operation.
--
-- -   __SUCCESS__: The operation succeeded.
--
-- -   __FAIL__: The operation failed. For the failure reason, see
--     @ErrorMessage@.
--
-- 'id', 'operationSummary_id' - The ID for an operation.
newOperationSummary ::
  OperationSummary
newOperationSummary =
  OperationSummary'
    { status = Core.Nothing,
      id = Core.Nothing
    }

-- | The status of the operation. Values include the following:
--
-- -   __SUBMITTED__: This is the initial state immediately after you
--     submit a request.
--
-- -   __PENDING__: AWS Cloud Map is performing the operation.
--
-- -   __SUCCESS__: The operation succeeded.
--
-- -   __FAIL__: The operation failed. For the failure reason, see
--     @ErrorMessage@.
operationSummary_status :: Lens.Lens' OperationSummary (Core.Maybe OperationStatus)
operationSummary_status = Lens.lens (\OperationSummary' {status} -> status) (\s@OperationSummary' {} a -> s {status = a} :: OperationSummary)

-- | The ID for an operation.
operationSummary_id :: Lens.Lens' OperationSummary (Core.Maybe Core.Text)
operationSummary_id = Lens.lens (\OperationSummary' {id} -> id) (\s@OperationSummary' {} a -> s {id = a} :: OperationSummary)

instance Core.FromJSON OperationSummary where
  parseJSON =
    Core.withObject
      "OperationSummary"
      ( \x ->
          OperationSummary'
            Core.<$> (x Core..:? "Status") Core.<*> (x Core..:? "Id")
      )

instance Core.Hashable OperationSummary

instance Core.NFData OperationSummary
