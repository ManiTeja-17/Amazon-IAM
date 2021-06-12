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
-- Module      : Network.AWS.AppSync.Types.LambdaDataSourceConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.LambdaDataSourceConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Describes an AWS Lambda data source configuration.
--
-- /See:/ 'newLambdaDataSourceConfig' smart constructor.
data LambdaDataSourceConfig = LambdaDataSourceConfig'
  { -- | The ARN for the Lambda function.
    lambdaFunctionArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LambdaDataSourceConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lambdaFunctionArn', 'lambdaDataSourceConfig_lambdaFunctionArn' - The ARN for the Lambda function.
newLambdaDataSourceConfig ::
  -- | 'lambdaFunctionArn'
  Core.Text ->
  LambdaDataSourceConfig
newLambdaDataSourceConfig pLambdaFunctionArn_ =
  LambdaDataSourceConfig'
    { lambdaFunctionArn =
        pLambdaFunctionArn_
    }

-- | The ARN for the Lambda function.
lambdaDataSourceConfig_lambdaFunctionArn :: Lens.Lens' LambdaDataSourceConfig Core.Text
lambdaDataSourceConfig_lambdaFunctionArn = Lens.lens (\LambdaDataSourceConfig' {lambdaFunctionArn} -> lambdaFunctionArn) (\s@LambdaDataSourceConfig' {} a -> s {lambdaFunctionArn = a} :: LambdaDataSourceConfig)

instance Core.FromJSON LambdaDataSourceConfig where
  parseJSON =
    Core.withObject
      "LambdaDataSourceConfig"
      ( \x ->
          LambdaDataSourceConfig'
            Core.<$> (x Core..: "lambdaFunctionArn")
      )

instance Core.Hashable LambdaDataSourceConfig

instance Core.NFData LambdaDataSourceConfig

instance Core.ToJSON LambdaDataSourceConfig where
  toJSON LambdaDataSourceConfig' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("lambdaFunctionArn" Core..= lambdaFunctionArn)
          ]
      )
