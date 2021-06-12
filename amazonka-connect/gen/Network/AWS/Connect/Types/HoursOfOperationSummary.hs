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
-- Module      : Network.AWS.Connect.Types.HoursOfOperationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HoursOfOperationSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Contains summary information about hours of operation for a contact
-- center.
--
-- /See:/ 'newHoursOfOperationSummary' smart constructor.
data HoursOfOperationSummary = HoursOfOperationSummary'
  { -- | The Amazon Resource Name (ARN) of the hours of operation.
    arn :: Core.Maybe Core.Text,
    -- | The identifier of the hours of operation.
    id :: Core.Maybe Core.Text,
    -- | The name of the hours of operation.
    name :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'HoursOfOperationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'hoursOfOperationSummary_arn' - The Amazon Resource Name (ARN) of the hours of operation.
--
-- 'id', 'hoursOfOperationSummary_id' - The identifier of the hours of operation.
--
-- 'name', 'hoursOfOperationSummary_name' - The name of the hours of operation.
newHoursOfOperationSummary ::
  HoursOfOperationSummary
newHoursOfOperationSummary =
  HoursOfOperationSummary'
    { arn = Core.Nothing,
      id = Core.Nothing,
      name = Core.Nothing
    }

-- | The Amazon Resource Name (ARN) of the hours of operation.
hoursOfOperationSummary_arn :: Lens.Lens' HoursOfOperationSummary (Core.Maybe Core.Text)
hoursOfOperationSummary_arn = Lens.lens (\HoursOfOperationSummary' {arn} -> arn) (\s@HoursOfOperationSummary' {} a -> s {arn = a} :: HoursOfOperationSummary)

-- | The identifier of the hours of operation.
hoursOfOperationSummary_id :: Lens.Lens' HoursOfOperationSummary (Core.Maybe Core.Text)
hoursOfOperationSummary_id = Lens.lens (\HoursOfOperationSummary' {id} -> id) (\s@HoursOfOperationSummary' {} a -> s {id = a} :: HoursOfOperationSummary)

-- | The name of the hours of operation.
hoursOfOperationSummary_name :: Lens.Lens' HoursOfOperationSummary (Core.Maybe Core.Text)
hoursOfOperationSummary_name = Lens.lens (\HoursOfOperationSummary' {name} -> name) (\s@HoursOfOperationSummary' {} a -> s {name = a} :: HoursOfOperationSummary)

instance Core.FromJSON HoursOfOperationSummary where
  parseJSON =
    Core.withObject
      "HoursOfOperationSummary"
      ( \x ->
          HoursOfOperationSummary'
            Core.<$> (x Core..:? "Arn")
            Core.<*> (x Core..:? "Id")
            Core.<*> (x Core..:? "Name")
      )

instance Core.Hashable HoursOfOperationSummary

instance Core.NFData HoursOfOperationSummary
