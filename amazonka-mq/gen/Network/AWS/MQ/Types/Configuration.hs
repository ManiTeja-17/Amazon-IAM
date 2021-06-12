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
-- Module      : Network.AWS.MQ.Types.Configuration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.Configuration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MQ.Types.AuthenticationStrategy
import Network.AWS.MQ.Types.ConfigurationRevision
import Network.AWS.MQ.Types.EngineType

-- | Returns information about all configurations.
--
-- /See:/ 'newConfiguration' smart constructor.
data Configuration = Configuration'
  { -- | Required. The type of broker engine. Note: Currently, Amazon MQ supports
    -- ACTIVEMQ and RABBITMQ.
    engineType :: Core.Maybe EngineType,
    -- | The authentication strategy associated with the configuration.
    authenticationStrategy :: Core.Maybe AuthenticationStrategy,
    -- | Required. The latest revision of the configuration.
    latestRevision :: Core.Maybe ConfigurationRevision,
    -- | Required. The ARN of the configuration.
    arn :: Core.Maybe Core.Text,
    -- | Required. The unique ID that Amazon MQ generates for the configuration.
    id :: Core.Maybe Core.Text,
    -- | Required. The name of the configuration. This value can contain only
    -- alphanumeric characters, dashes, periods, underscores, and tildes (- . _
    -- ~). This value must be 1-150 characters long.
    name :: Core.Maybe Core.Text,
    -- | Required. The version of the broker engine. For a list of supported
    -- engine versions, see
    -- https:\/\/docs.aws.amazon.com\/amazon-mq\/latest\/developer-guide\/broker-engine.html
    engineVersion :: Core.Maybe Core.Text,
    -- | The list of all tags associated with this configuration.
    tags :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | Required. The description of the configuration.
    description :: Core.Maybe Core.Text,
    -- | Required. The date and time of the configuration revision.
    created :: Core.Maybe Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Configuration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'engineType', 'configuration_engineType' - Required. The type of broker engine. Note: Currently, Amazon MQ supports
-- ACTIVEMQ and RABBITMQ.
--
-- 'authenticationStrategy', 'configuration_authenticationStrategy' - The authentication strategy associated with the configuration.
--
-- 'latestRevision', 'configuration_latestRevision' - Required. The latest revision of the configuration.
--
-- 'arn', 'configuration_arn' - Required. The ARN of the configuration.
--
-- 'id', 'configuration_id' - Required. The unique ID that Amazon MQ generates for the configuration.
--
-- 'name', 'configuration_name' - Required. The name of the configuration. This value can contain only
-- alphanumeric characters, dashes, periods, underscores, and tildes (- . _
-- ~). This value must be 1-150 characters long.
--
-- 'engineVersion', 'configuration_engineVersion' - Required. The version of the broker engine. For a list of supported
-- engine versions, see
-- https:\/\/docs.aws.amazon.com\/amazon-mq\/latest\/developer-guide\/broker-engine.html
--
-- 'tags', 'configuration_tags' - The list of all tags associated with this configuration.
--
-- 'description', 'configuration_description' - Required. The description of the configuration.
--
-- 'created', 'configuration_created' - Required. The date and time of the configuration revision.
newConfiguration ::
  Configuration
newConfiguration =
  Configuration'
    { engineType = Core.Nothing,
      authenticationStrategy = Core.Nothing,
      latestRevision = Core.Nothing,
      arn = Core.Nothing,
      id = Core.Nothing,
      name = Core.Nothing,
      engineVersion = Core.Nothing,
      tags = Core.Nothing,
      description = Core.Nothing,
      created = Core.Nothing
    }

-- | Required. The type of broker engine. Note: Currently, Amazon MQ supports
-- ACTIVEMQ and RABBITMQ.
configuration_engineType :: Lens.Lens' Configuration (Core.Maybe EngineType)
configuration_engineType = Lens.lens (\Configuration' {engineType} -> engineType) (\s@Configuration' {} a -> s {engineType = a} :: Configuration)

-- | The authentication strategy associated with the configuration.
configuration_authenticationStrategy :: Lens.Lens' Configuration (Core.Maybe AuthenticationStrategy)
configuration_authenticationStrategy = Lens.lens (\Configuration' {authenticationStrategy} -> authenticationStrategy) (\s@Configuration' {} a -> s {authenticationStrategy = a} :: Configuration)

-- | Required. The latest revision of the configuration.
configuration_latestRevision :: Lens.Lens' Configuration (Core.Maybe ConfigurationRevision)
configuration_latestRevision = Lens.lens (\Configuration' {latestRevision} -> latestRevision) (\s@Configuration' {} a -> s {latestRevision = a} :: Configuration)

-- | Required. The ARN of the configuration.
configuration_arn :: Lens.Lens' Configuration (Core.Maybe Core.Text)
configuration_arn = Lens.lens (\Configuration' {arn} -> arn) (\s@Configuration' {} a -> s {arn = a} :: Configuration)

-- | Required. The unique ID that Amazon MQ generates for the configuration.
configuration_id :: Lens.Lens' Configuration (Core.Maybe Core.Text)
configuration_id = Lens.lens (\Configuration' {id} -> id) (\s@Configuration' {} a -> s {id = a} :: Configuration)

-- | Required. The name of the configuration. This value can contain only
-- alphanumeric characters, dashes, periods, underscores, and tildes (- . _
-- ~). This value must be 1-150 characters long.
configuration_name :: Lens.Lens' Configuration (Core.Maybe Core.Text)
configuration_name = Lens.lens (\Configuration' {name} -> name) (\s@Configuration' {} a -> s {name = a} :: Configuration)

-- | Required. The version of the broker engine. For a list of supported
-- engine versions, see
-- https:\/\/docs.aws.amazon.com\/amazon-mq\/latest\/developer-guide\/broker-engine.html
configuration_engineVersion :: Lens.Lens' Configuration (Core.Maybe Core.Text)
configuration_engineVersion = Lens.lens (\Configuration' {engineVersion} -> engineVersion) (\s@Configuration' {} a -> s {engineVersion = a} :: Configuration)

-- | The list of all tags associated with this configuration.
configuration_tags :: Lens.Lens' Configuration (Core.Maybe (Core.HashMap Core.Text Core.Text))
configuration_tags = Lens.lens (\Configuration' {tags} -> tags) (\s@Configuration' {} a -> s {tags = a} :: Configuration) Core.. Lens.mapping Lens._Coerce

-- | Required. The description of the configuration.
configuration_description :: Lens.Lens' Configuration (Core.Maybe Core.Text)
configuration_description = Lens.lens (\Configuration' {description} -> description) (\s@Configuration' {} a -> s {description = a} :: Configuration)

-- | Required. The date and time of the configuration revision.
configuration_created :: Lens.Lens' Configuration (Core.Maybe Core.UTCTime)
configuration_created = Lens.lens (\Configuration' {created} -> created) (\s@Configuration' {} a -> s {created = a} :: Configuration) Core.. Lens.mapping Core._Time

instance Core.FromJSON Configuration where
  parseJSON =
    Core.withObject
      "Configuration"
      ( \x ->
          Configuration'
            Core.<$> (x Core..:? "engineType")
            Core.<*> (x Core..:? "authenticationStrategy")
            Core.<*> (x Core..:? "latestRevision")
            Core.<*> (x Core..:? "arn")
            Core.<*> (x Core..:? "id")
            Core.<*> (x Core..:? "name")
            Core.<*> (x Core..:? "engineVersion")
            Core.<*> (x Core..:? "tags" Core..!= Core.mempty)
            Core.<*> (x Core..:? "description")
            Core.<*> (x Core..:? "created")
      )

instance Core.Hashable Configuration

instance Core.NFData Configuration
