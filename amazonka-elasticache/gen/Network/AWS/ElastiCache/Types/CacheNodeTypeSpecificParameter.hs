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
-- Module      : Network.AWS.ElastiCache.Types.CacheNodeTypeSpecificParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CacheNodeTypeSpecificParameter where

import qualified Network.AWS.Core as Core
import Network.AWS.ElastiCache.Types.CacheNodeTypeSpecificValue
import Network.AWS.ElastiCache.Types.ChangeType
import qualified Network.AWS.Lens as Lens

-- | A parameter that has a different value for each cache node type it is
-- applied to. For example, in a Redis cluster, a @cache.m1.large@ cache
-- node type would have a larger @maxmemory@ value than a @cache.m1.small@
-- type.
--
-- /See:/ 'newCacheNodeTypeSpecificParameter' smart constructor.
data CacheNodeTypeSpecificParameter = CacheNodeTypeSpecificParameter'
  { -- | Indicates whether a change to the parameter is applied immediately or
    -- requires a reboot for the change to be applied. You can force a reboot
    -- or wait until the next maintenance window\'s reboot. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html Rebooting a Cluster>.
    changeType :: Core.Maybe ChangeType,
    -- | The valid range of values for the parameter.
    allowedValues :: Core.Maybe Core.Text,
    -- | The source of the parameter value.
    source :: Core.Maybe Core.Text,
    -- | A list of cache node types and their corresponding values for this
    -- parameter.
    cacheNodeTypeSpecificValues :: Core.Maybe [CacheNodeTypeSpecificValue],
    -- | The name of the parameter.
    parameterName :: Core.Maybe Core.Text,
    -- | A description of the parameter.
    description :: Core.Maybe Core.Text,
    -- | The valid data type for the parameter.
    dataType :: Core.Maybe Core.Text,
    -- | Indicates whether (@true@) or not (@false@) the parameter can be
    -- modified. Some parameters have security or operational implications that
    -- prevent them from being changed.
    isModifiable :: Core.Maybe Core.Bool,
    -- | The earliest cache engine version to which the parameter can apply.
    minimumEngineVersion :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CacheNodeTypeSpecificParameter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'changeType', 'cacheNodeTypeSpecificParameter_changeType' - Indicates whether a change to the parameter is applied immediately or
-- requires a reboot for the change to be applied. You can force a reboot
-- or wait until the next maintenance window\'s reboot. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html Rebooting a Cluster>.
--
-- 'allowedValues', 'cacheNodeTypeSpecificParameter_allowedValues' - The valid range of values for the parameter.
--
-- 'source', 'cacheNodeTypeSpecificParameter_source' - The source of the parameter value.
--
-- 'cacheNodeTypeSpecificValues', 'cacheNodeTypeSpecificParameter_cacheNodeTypeSpecificValues' - A list of cache node types and their corresponding values for this
-- parameter.
--
-- 'parameterName', 'cacheNodeTypeSpecificParameter_parameterName' - The name of the parameter.
--
-- 'description', 'cacheNodeTypeSpecificParameter_description' - A description of the parameter.
--
-- 'dataType', 'cacheNodeTypeSpecificParameter_dataType' - The valid data type for the parameter.
--
-- 'isModifiable', 'cacheNodeTypeSpecificParameter_isModifiable' - Indicates whether (@true@) or not (@false@) the parameter can be
-- modified. Some parameters have security or operational implications that
-- prevent them from being changed.
--
-- 'minimumEngineVersion', 'cacheNodeTypeSpecificParameter_minimumEngineVersion' - The earliest cache engine version to which the parameter can apply.
newCacheNodeTypeSpecificParameter ::
  CacheNodeTypeSpecificParameter
newCacheNodeTypeSpecificParameter =
  CacheNodeTypeSpecificParameter'
    { changeType =
        Core.Nothing,
      allowedValues = Core.Nothing,
      source = Core.Nothing,
      cacheNodeTypeSpecificValues = Core.Nothing,
      parameterName = Core.Nothing,
      description = Core.Nothing,
      dataType = Core.Nothing,
      isModifiable = Core.Nothing,
      minimumEngineVersion = Core.Nothing
    }

-- | Indicates whether a change to the parameter is applied immediately or
-- requires a reboot for the change to be applied. You can force a reboot
-- or wait until the next maintenance window\'s reboot. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html Rebooting a Cluster>.
cacheNodeTypeSpecificParameter_changeType :: Lens.Lens' CacheNodeTypeSpecificParameter (Core.Maybe ChangeType)
cacheNodeTypeSpecificParameter_changeType = Lens.lens (\CacheNodeTypeSpecificParameter' {changeType} -> changeType) (\s@CacheNodeTypeSpecificParameter' {} a -> s {changeType = a} :: CacheNodeTypeSpecificParameter)

-- | The valid range of values for the parameter.
cacheNodeTypeSpecificParameter_allowedValues :: Lens.Lens' CacheNodeTypeSpecificParameter (Core.Maybe Core.Text)
cacheNodeTypeSpecificParameter_allowedValues = Lens.lens (\CacheNodeTypeSpecificParameter' {allowedValues} -> allowedValues) (\s@CacheNodeTypeSpecificParameter' {} a -> s {allowedValues = a} :: CacheNodeTypeSpecificParameter)

-- | The source of the parameter value.
cacheNodeTypeSpecificParameter_source :: Lens.Lens' CacheNodeTypeSpecificParameter (Core.Maybe Core.Text)
cacheNodeTypeSpecificParameter_source = Lens.lens (\CacheNodeTypeSpecificParameter' {source} -> source) (\s@CacheNodeTypeSpecificParameter' {} a -> s {source = a} :: CacheNodeTypeSpecificParameter)

-- | A list of cache node types and their corresponding values for this
-- parameter.
cacheNodeTypeSpecificParameter_cacheNodeTypeSpecificValues :: Lens.Lens' CacheNodeTypeSpecificParameter (Core.Maybe [CacheNodeTypeSpecificValue])
cacheNodeTypeSpecificParameter_cacheNodeTypeSpecificValues = Lens.lens (\CacheNodeTypeSpecificParameter' {cacheNodeTypeSpecificValues} -> cacheNodeTypeSpecificValues) (\s@CacheNodeTypeSpecificParameter' {} a -> s {cacheNodeTypeSpecificValues = a} :: CacheNodeTypeSpecificParameter) Core.. Lens.mapping Lens._Coerce

-- | The name of the parameter.
cacheNodeTypeSpecificParameter_parameterName :: Lens.Lens' CacheNodeTypeSpecificParameter (Core.Maybe Core.Text)
cacheNodeTypeSpecificParameter_parameterName = Lens.lens (\CacheNodeTypeSpecificParameter' {parameterName} -> parameterName) (\s@CacheNodeTypeSpecificParameter' {} a -> s {parameterName = a} :: CacheNodeTypeSpecificParameter)

-- | A description of the parameter.
cacheNodeTypeSpecificParameter_description :: Lens.Lens' CacheNodeTypeSpecificParameter (Core.Maybe Core.Text)
cacheNodeTypeSpecificParameter_description = Lens.lens (\CacheNodeTypeSpecificParameter' {description} -> description) (\s@CacheNodeTypeSpecificParameter' {} a -> s {description = a} :: CacheNodeTypeSpecificParameter)

-- | The valid data type for the parameter.
cacheNodeTypeSpecificParameter_dataType :: Lens.Lens' CacheNodeTypeSpecificParameter (Core.Maybe Core.Text)
cacheNodeTypeSpecificParameter_dataType = Lens.lens (\CacheNodeTypeSpecificParameter' {dataType} -> dataType) (\s@CacheNodeTypeSpecificParameter' {} a -> s {dataType = a} :: CacheNodeTypeSpecificParameter)

-- | Indicates whether (@true@) or not (@false@) the parameter can be
-- modified. Some parameters have security or operational implications that
-- prevent them from being changed.
cacheNodeTypeSpecificParameter_isModifiable :: Lens.Lens' CacheNodeTypeSpecificParameter (Core.Maybe Core.Bool)
cacheNodeTypeSpecificParameter_isModifiable = Lens.lens (\CacheNodeTypeSpecificParameter' {isModifiable} -> isModifiable) (\s@CacheNodeTypeSpecificParameter' {} a -> s {isModifiable = a} :: CacheNodeTypeSpecificParameter)

-- | The earliest cache engine version to which the parameter can apply.
cacheNodeTypeSpecificParameter_minimumEngineVersion :: Lens.Lens' CacheNodeTypeSpecificParameter (Core.Maybe Core.Text)
cacheNodeTypeSpecificParameter_minimumEngineVersion = Lens.lens (\CacheNodeTypeSpecificParameter' {minimumEngineVersion} -> minimumEngineVersion) (\s@CacheNodeTypeSpecificParameter' {} a -> s {minimumEngineVersion = a} :: CacheNodeTypeSpecificParameter)

instance Core.FromXML CacheNodeTypeSpecificParameter where
  parseXML x =
    CacheNodeTypeSpecificParameter'
      Core.<$> (x Core..@? "ChangeType")
      Core.<*> (x Core..@? "AllowedValues")
      Core.<*> (x Core..@? "Source")
      Core.<*> ( x Core..@? "CacheNodeTypeSpecificValues"
                   Core..!@ Core.mempty
                   Core.>>= Core.may
                     (Core.parseXMLList "CacheNodeTypeSpecificValue")
               )
      Core.<*> (x Core..@? "ParameterName")
      Core.<*> (x Core..@? "Description")
      Core.<*> (x Core..@? "DataType")
      Core.<*> (x Core..@? "IsModifiable")
      Core.<*> (x Core..@? "MinimumEngineVersion")

instance Core.Hashable CacheNodeTypeSpecificParameter

instance Core.NFData CacheNodeTypeSpecificParameter
