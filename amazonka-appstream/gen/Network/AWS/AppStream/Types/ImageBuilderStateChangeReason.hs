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
-- Module      : Network.AWS.AppStream.Types.ImageBuilderStateChangeReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ImageBuilderStateChangeReason where

import Network.AWS.AppStream.Types.ImageBuilderStateChangeReasonCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Describes the reason why the last image builder state change occurred.
--
-- /See:/ 'newImageBuilderStateChangeReason' smart constructor.
data ImageBuilderStateChangeReason = ImageBuilderStateChangeReason'
  { -- | The state change reason message.
    message :: Core.Maybe Core.Text,
    -- | The state change reason code.
    code :: Core.Maybe ImageBuilderStateChangeReasonCode
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ImageBuilderStateChangeReason' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'imageBuilderStateChangeReason_message' - The state change reason message.
--
-- 'code', 'imageBuilderStateChangeReason_code' - The state change reason code.
newImageBuilderStateChangeReason ::
  ImageBuilderStateChangeReason
newImageBuilderStateChangeReason =
  ImageBuilderStateChangeReason'
    { message =
        Core.Nothing,
      code = Core.Nothing
    }

-- | The state change reason message.
imageBuilderStateChangeReason_message :: Lens.Lens' ImageBuilderStateChangeReason (Core.Maybe Core.Text)
imageBuilderStateChangeReason_message = Lens.lens (\ImageBuilderStateChangeReason' {message} -> message) (\s@ImageBuilderStateChangeReason' {} a -> s {message = a} :: ImageBuilderStateChangeReason)

-- | The state change reason code.
imageBuilderStateChangeReason_code :: Lens.Lens' ImageBuilderStateChangeReason (Core.Maybe ImageBuilderStateChangeReasonCode)
imageBuilderStateChangeReason_code = Lens.lens (\ImageBuilderStateChangeReason' {code} -> code) (\s@ImageBuilderStateChangeReason' {} a -> s {code = a} :: ImageBuilderStateChangeReason)

instance Core.FromJSON ImageBuilderStateChangeReason where
  parseJSON =
    Core.withObject
      "ImageBuilderStateChangeReason"
      ( \x ->
          ImageBuilderStateChangeReason'
            Core.<$> (x Core..:? "Message") Core.<*> (x Core..:? "Code")
      )

instance Core.Hashable ImageBuilderStateChangeReason

instance Core.NFData ImageBuilderStateChangeReason
