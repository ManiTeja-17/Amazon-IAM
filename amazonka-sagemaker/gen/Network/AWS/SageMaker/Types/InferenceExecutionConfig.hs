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
-- Module      : Network.AWS.SageMaker.Types.InferenceExecutionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.InferenceExecutionConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SageMaker.Types.InferenceExecutionMode

-- | Specifies details about how containers in a multi-container endpoint are
-- run.
--
-- /See:/ 'newInferenceExecutionConfig' smart constructor.
data InferenceExecutionConfig = InferenceExecutionConfig'
  { -- | How containers in a multi-container are run. The following values are
    -- valid.
    --
    -- -   @SERIAL@ - Containers run as a serial pipeline.
    --
    -- -   @DIRECT@ - Only the individual container that you specify is run.
    mode :: InferenceExecutionMode
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'InferenceExecutionConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mode', 'inferenceExecutionConfig_mode' - How containers in a multi-container are run. The following values are
-- valid.
--
-- -   @SERIAL@ - Containers run as a serial pipeline.
--
-- -   @DIRECT@ - Only the individual container that you specify is run.
newInferenceExecutionConfig ::
  -- | 'mode'
  InferenceExecutionMode ->
  InferenceExecutionConfig
newInferenceExecutionConfig pMode_ =
  InferenceExecutionConfig' {mode = pMode_}

-- | How containers in a multi-container are run. The following values are
-- valid.
--
-- -   @SERIAL@ - Containers run as a serial pipeline.
--
-- -   @DIRECT@ - Only the individual container that you specify is run.
inferenceExecutionConfig_mode :: Lens.Lens' InferenceExecutionConfig InferenceExecutionMode
inferenceExecutionConfig_mode = Lens.lens (\InferenceExecutionConfig' {mode} -> mode) (\s@InferenceExecutionConfig' {} a -> s {mode = a} :: InferenceExecutionConfig)

instance Core.FromJSON InferenceExecutionConfig where
  parseJSON =
    Core.withObject
      "InferenceExecutionConfig"
      ( \x ->
          InferenceExecutionConfig'
            Core.<$> (x Core..: "Mode")
      )

instance Core.Hashable InferenceExecutionConfig

instance Core.NFData InferenceExecutionConfig

instance Core.ToJSON InferenceExecutionConfig where
  toJSON InferenceExecutionConfig' {..} =
    Core.object
      (Core.catMaybes [Core.Just ("Mode" Core..= mode)])
