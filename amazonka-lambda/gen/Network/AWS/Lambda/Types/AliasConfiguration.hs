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
-- Module      : Network.AWS.Lambda.Types.AliasConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.AliasConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.Lambda.Types.AliasRoutingConfiguration
import qualified Network.AWS.Lens as Lens

-- | Provides configuration information about a Lambda function
-- <https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html alias>.
--
-- /See:/ 'newAliasConfiguration' smart constructor.
data AliasConfiguration = AliasConfiguration'
  { -- | A unique identifier that changes when you update the alias.
    revisionId :: Core.Maybe Core.Text,
    -- | The
    -- <https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html routing configuration>
    -- of the alias.
    routingConfig :: Core.Maybe AliasRoutingConfiguration,
    -- | The function version that the alias invokes.
    functionVersion :: Core.Maybe Core.Text,
    -- | The name of the alias.
    name :: Core.Maybe Core.Text,
    -- | A description of the alias.
    description :: Core.Maybe Core.Text,
    -- | The Amazon Resource Name (ARN) of the alias.
    aliasArn :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AliasConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'revisionId', 'aliasConfiguration_revisionId' - A unique identifier that changes when you update the alias.
--
-- 'routingConfig', 'aliasConfiguration_routingConfig' - The
-- <https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html routing configuration>
-- of the alias.
--
-- 'functionVersion', 'aliasConfiguration_functionVersion' - The function version that the alias invokes.
--
-- 'name', 'aliasConfiguration_name' - The name of the alias.
--
-- 'description', 'aliasConfiguration_description' - A description of the alias.
--
-- 'aliasArn', 'aliasConfiguration_aliasArn' - The Amazon Resource Name (ARN) of the alias.
newAliasConfiguration ::
  AliasConfiguration
newAliasConfiguration =
  AliasConfiguration'
    { revisionId = Core.Nothing,
      routingConfig = Core.Nothing,
      functionVersion = Core.Nothing,
      name = Core.Nothing,
      description = Core.Nothing,
      aliasArn = Core.Nothing
    }

-- | A unique identifier that changes when you update the alias.
aliasConfiguration_revisionId :: Lens.Lens' AliasConfiguration (Core.Maybe Core.Text)
aliasConfiguration_revisionId = Lens.lens (\AliasConfiguration' {revisionId} -> revisionId) (\s@AliasConfiguration' {} a -> s {revisionId = a} :: AliasConfiguration)

-- | The
-- <https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html routing configuration>
-- of the alias.
aliasConfiguration_routingConfig :: Lens.Lens' AliasConfiguration (Core.Maybe AliasRoutingConfiguration)
aliasConfiguration_routingConfig = Lens.lens (\AliasConfiguration' {routingConfig} -> routingConfig) (\s@AliasConfiguration' {} a -> s {routingConfig = a} :: AliasConfiguration)

-- | The function version that the alias invokes.
aliasConfiguration_functionVersion :: Lens.Lens' AliasConfiguration (Core.Maybe Core.Text)
aliasConfiguration_functionVersion = Lens.lens (\AliasConfiguration' {functionVersion} -> functionVersion) (\s@AliasConfiguration' {} a -> s {functionVersion = a} :: AliasConfiguration)

-- | The name of the alias.
aliasConfiguration_name :: Lens.Lens' AliasConfiguration (Core.Maybe Core.Text)
aliasConfiguration_name = Lens.lens (\AliasConfiguration' {name} -> name) (\s@AliasConfiguration' {} a -> s {name = a} :: AliasConfiguration)

-- | A description of the alias.
aliasConfiguration_description :: Lens.Lens' AliasConfiguration (Core.Maybe Core.Text)
aliasConfiguration_description = Lens.lens (\AliasConfiguration' {description} -> description) (\s@AliasConfiguration' {} a -> s {description = a} :: AliasConfiguration)

-- | The Amazon Resource Name (ARN) of the alias.
aliasConfiguration_aliasArn :: Lens.Lens' AliasConfiguration (Core.Maybe Core.Text)
aliasConfiguration_aliasArn = Lens.lens (\AliasConfiguration' {aliasArn} -> aliasArn) (\s@AliasConfiguration' {} a -> s {aliasArn = a} :: AliasConfiguration)

instance Core.FromJSON AliasConfiguration where
  parseJSON =
    Core.withObject
      "AliasConfiguration"
      ( \x ->
          AliasConfiguration'
            Core.<$> (x Core..:? "RevisionId")
            Core.<*> (x Core..:? "RoutingConfig")
            Core.<*> (x Core..:? "FunctionVersion")
            Core.<*> (x Core..:? "Name")
            Core.<*> (x Core..:? "Description")
            Core.<*> (x Core..:? "AliasArn")
      )

instance Core.Hashable AliasConfiguration

instance Core.NFData AliasConfiguration
