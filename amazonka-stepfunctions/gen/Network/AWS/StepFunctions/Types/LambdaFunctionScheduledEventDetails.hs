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
-- Module      : Network.AWS.StepFunctions.Types.LambdaFunctionScheduledEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.LambdaFunctionScheduledEventDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.StepFunctions.Types.HistoryEventExecutionDataDetails

-- | Contains details about a lambda function scheduled during an execution.
--
-- /See:/ 'newLambdaFunctionScheduledEventDetails' smart constructor.
data LambdaFunctionScheduledEventDetails = LambdaFunctionScheduledEventDetails'
  { -- | Contains details about input for an execution history event.
    inputDetails :: Core.Maybe HistoryEventExecutionDataDetails,
    -- | The JSON data input to the lambda function. Length constraints apply to
    -- the payload size, and are expressed as bytes in UTF-8 encoding.
    input :: Core.Maybe (Core.Sensitive Core.Text),
    -- | The maximum allowed duration of the lambda function.
    timeoutInSeconds :: Core.Maybe Core.Integer,
    -- | The Amazon Resource Name (ARN) of the scheduled lambda function.
    resource :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'LambdaFunctionScheduledEventDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputDetails', 'lambdaFunctionScheduledEventDetails_inputDetails' - Contains details about input for an execution history event.
--
-- 'input', 'lambdaFunctionScheduledEventDetails_input' - The JSON data input to the lambda function. Length constraints apply to
-- the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- 'timeoutInSeconds', 'lambdaFunctionScheduledEventDetails_timeoutInSeconds' - The maximum allowed duration of the lambda function.
--
-- 'resource', 'lambdaFunctionScheduledEventDetails_resource' - The Amazon Resource Name (ARN) of the scheduled lambda function.
newLambdaFunctionScheduledEventDetails ::
  -- | 'resource'
  Core.Text ->
  LambdaFunctionScheduledEventDetails
newLambdaFunctionScheduledEventDetails pResource_ =
  LambdaFunctionScheduledEventDetails'
    { inputDetails =
        Core.Nothing,
      input = Core.Nothing,
      timeoutInSeconds = Core.Nothing,
      resource = pResource_
    }

-- | Contains details about input for an execution history event.
lambdaFunctionScheduledEventDetails_inputDetails :: Lens.Lens' LambdaFunctionScheduledEventDetails (Core.Maybe HistoryEventExecutionDataDetails)
lambdaFunctionScheduledEventDetails_inputDetails = Lens.lens (\LambdaFunctionScheduledEventDetails' {inputDetails} -> inputDetails) (\s@LambdaFunctionScheduledEventDetails' {} a -> s {inputDetails = a} :: LambdaFunctionScheduledEventDetails)

-- | The JSON data input to the lambda function. Length constraints apply to
-- the payload size, and are expressed as bytes in UTF-8 encoding.
lambdaFunctionScheduledEventDetails_input :: Lens.Lens' LambdaFunctionScheduledEventDetails (Core.Maybe Core.Text)
lambdaFunctionScheduledEventDetails_input = Lens.lens (\LambdaFunctionScheduledEventDetails' {input} -> input) (\s@LambdaFunctionScheduledEventDetails' {} a -> s {input = a} :: LambdaFunctionScheduledEventDetails) Core.. Lens.mapping Core._Sensitive

-- | The maximum allowed duration of the lambda function.
lambdaFunctionScheduledEventDetails_timeoutInSeconds :: Lens.Lens' LambdaFunctionScheduledEventDetails (Core.Maybe Core.Integer)
lambdaFunctionScheduledEventDetails_timeoutInSeconds = Lens.lens (\LambdaFunctionScheduledEventDetails' {timeoutInSeconds} -> timeoutInSeconds) (\s@LambdaFunctionScheduledEventDetails' {} a -> s {timeoutInSeconds = a} :: LambdaFunctionScheduledEventDetails)

-- | The Amazon Resource Name (ARN) of the scheduled lambda function.
lambdaFunctionScheduledEventDetails_resource :: Lens.Lens' LambdaFunctionScheduledEventDetails Core.Text
lambdaFunctionScheduledEventDetails_resource = Lens.lens (\LambdaFunctionScheduledEventDetails' {resource} -> resource) (\s@LambdaFunctionScheduledEventDetails' {} a -> s {resource = a} :: LambdaFunctionScheduledEventDetails)

instance
  Core.FromJSON
    LambdaFunctionScheduledEventDetails
  where
  parseJSON =
    Core.withObject
      "LambdaFunctionScheduledEventDetails"
      ( \x ->
          LambdaFunctionScheduledEventDetails'
            Core.<$> (x Core..:? "inputDetails")
            Core.<*> (x Core..:? "input")
            Core.<*> (x Core..:? "timeoutInSeconds")
            Core.<*> (x Core..: "resource")
      )

instance
  Core.Hashable
    LambdaFunctionScheduledEventDetails

instance
  Core.NFData
    LambdaFunctionScheduledEventDetails
