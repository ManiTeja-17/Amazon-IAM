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
-- Module      : Network.AWS.AppSync.Types.FunctionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.FunctionConfiguration where

import Network.AWS.AppSync.Types.SyncConfig
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | A function is a reusable entity. Multiple functions can be used to
-- compose the resolver logic.
--
-- /See:/ 'newFunctionConfiguration' smart constructor.
data FunctionConfiguration = FunctionConfiguration'
  { -- | The @Function@ response mapping template.
    responseMappingTemplate :: Core.Maybe Core.Text,
    -- | The version of the request mapping template. Currently only the
    -- 2018-05-29 version of the template is supported.
    functionVersion :: Core.Maybe Core.Text,
    syncConfig :: Core.Maybe SyncConfig,
    -- | The name of the @DataSource@.
    dataSourceName :: Core.Maybe Core.Text,
    -- | The name of the @Function@ object.
    name :: Core.Maybe Core.Text,
    -- | A unique ID representing the @Function@ object.
    functionId :: Core.Maybe Core.Text,
    -- | The ARN of the @Function@ object.
    functionArn :: Core.Maybe Core.Text,
    -- | The @Function@ description.
    description :: Core.Maybe Core.Text,
    -- | The @Function@ request mapping template. Functions support only the
    -- 2018-05-29 version of the request mapping template.
    requestMappingTemplate :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'FunctionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'responseMappingTemplate', 'functionConfiguration_responseMappingTemplate' - The @Function@ response mapping template.
--
-- 'functionVersion', 'functionConfiguration_functionVersion' - The version of the request mapping template. Currently only the
-- 2018-05-29 version of the template is supported.
--
-- 'syncConfig', 'functionConfiguration_syncConfig' - Undocumented member.
--
-- 'dataSourceName', 'functionConfiguration_dataSourceName' - The name of the @DataSource@.
--
-- 'name', 'functionConfiguration_name' - The name of the @Function@ object.
--
-- 'functionId', 'functionConfiguration_functionId' - A unique ID representing the @Function@ object.
--
-- 'functionArn', 'functionConfiguration_functionArn' - The ARN of the @Function@ object.
--
-- 'description', 'functionConfiguration_description' - The @Function@ description.
--
-- 'requestMappingTemplate', 'functionConfiguration_requestMappingTemplate' - The @Function@ request mapping template. Functions support only the
-- 2018-05-29 version of the request mapping template.
newFunctionConfiguration ::
  FunctionConfiguration
newFunctionConfiguration =
  FunctionConfiguration'
    { responseMappingTemplate =
        Core.Nothing,
      functionVersion = Core.Nothing,
      syncConfig = Core.Nothing,
      dataSourceName = Core.Nothing,
      name = Core.Nothing,
      functionId = Core.Nothing,
      functionArn = Core.Nothing,
      description = Core.Nothing,
      requestMappingTemplate = Core.Nothing
    }

-- | The @Function@ response mapping template.
functionConfiguration_responseMappingTemplate :: Lens.Lens' FunctionConfiguration (Core.Maybe Core.Text)
functionConfiguration_responseMappingTemplate = Lens.lens (\FunctionConfiguration' {responseMappingTemplate} -> responseMappingTemplate) (\s@FunctionConfiguration' {} a -> s {responseMappingTemplate = a} :: FunctionConfiguration)

-- | The version of the request mapping template. Currently only the
-- 2018-05-29 version of the template is supported.
functionConfiguration_functionVersion :: Lens.Lens' FunctionConfiguration (Core.Maybe Core.Text)
functionConfiguration_functionVersion = Lens.lens (\FunctionConfiguration' {functionVersion} -> functionVersion) (\s@FunctionConfiguration' {} a -> s {functionVersion = a} :: FunctionConfiguration)

-- | Undocumented member.
functionConfiguration_syncConfig :: Lens.Lens' FunctionConfiguration (Core.Maybe SyncConfig)
functionConfiguration_syncConfig = Lens.lens (\FunctionConfiguration' {syncConfig} -> syncConfig) (\s@FunctionConfiguration' {} a -> s {syncConfig = a} :: FunctionConfiguration)

-- | The name of the @DataSource@.
functionConfiguration_dataSourceName :: Lens.Lens' FunctionConfiguration (Core.Maybe Core.Text)
functionConfiguration_dataSourceName = Lens.lens (\FunctionConfiguration' {dataSourceName} -> dataSourceName) (\s@FunctionConfiguration' {} a -> s {dataSourceName = a} :: FunctionConfiguration)

-- | The name of the @Function@ object.
functionConfiguration_name :: Lens.Lens' FunctionConfiguration (Core.Maybe Core.Text)
functionConfiguration_name = Lens.lens (\FunctionConfiguration' {name} -> name) (\s@FunctionConfiguration' {} a -> s {name = a} :: FunctionConfiguration)

-- | A unique ID representing the @Function@ object.
functionConfiguration_functionId :: Lens.Lens' FunctionConfiguration (Core.Maybe Core.Text)
functionConfiguration_functionId = Lens.lens (\FunctionConfiguration' {functionId} -> functionId) (\s@FunctionConfiguration' {} a -> s {functionId = a} :: FunctionConfiguration)

-- | The ARN of the @Function@ object.
functionConfiguration_functionArn :: Lens.Lens' FunctionConfiguration (Core.Maybe Core.Text)
functionConfiguration_functionArn = Lens.lens (\FunctionConfiguration' {functionArn} -> functionArn) (\s@FunctionConfiguration' {} a -> s {functionArn = a} :: FunctionConfiguration)

-- | The @Function@ description.
functionConfiguration_description :: Lens.Lens' FunctionConfiguration (Core.Maybe Core.Text)
functionConfiguration_description = Lens.lens (\FunctionConfiguration' {description} -> description) (\s@FunctionConfiguration' {} a -> s {description = a} :: FunctionConfiguration)

-- | The @Function@ request mapping template. Functions support only the
-- 2018-05-29 version of the request mapping template.
functionConfiguration_requestMappingTemplate :: Lens.Lens' FunctionConfiguration (Core.Maybe Core.Text)
functionConfiguration_requestMappingTemplate = Lens.lens (\FunctionConfiguration' {requestMappingTemplate} -> requestMappingTemplate) (\s@FunctionConfiguration' {} a -> s {requestMappingTemplate = a} :: FunctionConfiguration)

instance Core.FromJSON FunctionConfiguration where
  parseJSON =
    Core.withObject
      "FunctionConfiguration"
      ( \x ->
          FunctionConfiguration'
            Core.<$> (x Core..:? "responseMappingTemplate")
            Core.<*> (x Core..:? "functionVersion")
            Core.<*> (x Core..:? "syncConfig")
            Core.<*> (x Core..:? "dataSourceName")
            Core.<*> (x Core..:? "name")
            Core.<*> (x Core..:? "functionId")
            Core.<*> (x Core..:? "functionArn")
            Core.<*> (x Core..:? "description")
            Core.<*> (x Core..:? "requestMappingTemplate")
      )

instance Core.Hashable FunctionConfiguration

instance Core.NFData FunctionConfiguration
