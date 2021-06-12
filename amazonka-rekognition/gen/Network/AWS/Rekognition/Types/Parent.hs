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
-- Module      : Network.AWS.Rekognition.Types.Parent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Parent where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | A parent label for a label. A label can have 0, 1, or more parents.
--
-- /See:/ 'newParent' smart constructor.
data Parent = Parent'
  { -- | The name of the parent label.
    name :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Parent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'parent_name' - The name of the parent label.
newParent ::
  Parent
newParent = Parent' {name = Core.Nothing}

-- | The name of the parent label.
parent_name :: Lens.Lens' Parent (Core.Maybe Core.Text)
parent_name = Lens.lens (\Parent' {name} -> name) (\s@Parent' {} a -> s {name = a} :: Parent)

instance Core.FromJSON Parent where
  parseJSON =
    Core.withObject
      "Parent"
      (\x -> Parent' Core.<$> (x Core..:? "Name"))

instance Core.Hashable Parent

instance Core.NFData Parent
