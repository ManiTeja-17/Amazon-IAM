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
-- Module      : Network.AWS.CloudFormation.Types.TypeSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.TypeSummary where

import Network.AWS.CloudFormation.Types.RegistryType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Contains summary information about the specified CloudFormation type.
--
-- /See:/ 'newTypeSummary' smart constructor.
data TypeSummary = TypeSummary'
  { -- | The name of the type.
    typeName :: Core.Maybe Core.Text,
    -- | When the current default version of the type was registered.
    lastUpdated :: Core.Maybe Core.ISO8601,
    -- | The ID of the default version of the type. The default version is used
    -- when the type version is not specified.
    --
    -- To set the default version of a type, use @ SetTypeDefaultVersion @.
    defaultVersionId :: Core.Maybe Core.Text,
    -- | The description of the type.
    description :: Core.Maybe Core.Text,
    -- | The kind of type.
    type' :: Core.Maybe RegistryType,
    -- | The Amazon Resource Name (ARN) of the type.
    typeArn :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TypeSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'typeName', 'typeSummary_typeName' - The name of the type.
--
-- 'lastUpdated', 'typeSummary_lastUpdated' - When the current default version of the type was registered.
--
-- 'defaultVersionId', 'typeSummary_defaultVersionId' - The ID of the default version of the type. The default version is used
-- when the type version is not specified.
--
-- To set the default version of a type, use @ SetTypeDefaultVersion @.
--
-- 'description', 'typeSummary_description' - The description of the type.
--
-- 'type'', 'typeSummary_type' - The kind of type.
--
-- 'typeArn', 'typeSummary_typeArn' - The Amazon Resource Name (ARN) of the type.
newTypeSummary ::
  TypeSummary
newTypeSummary =
  TypeSummary'
    { typeName = Core.Nothing,
      lastUpdated = Core.Nothing,
      defaultVersionId = Core.Nothing,
      description = Core.Nothing,
      type' = Core.Nothing,
      typeArn = Core.Nothing
    }

-- | The name of the type.
typeSummary_typeName :: Lens.Lens' TypeSummary (Core.Maybe Core.Text)
typeSummary_typeName = Lens.lens (\TypeSummary' {typeName} -> typeName) (\s@TypeSummary' {} a -> s {typeName = a} :: TypeSummary)

-- | When the current default version of the type was registered.
typeSummary_lastUpdated :: Lens.Lens' TypeSummary (Core.Maybe Core.UTCTime)
typeSummary_lastUpdated = Lens.lens (\TypeSummary' {lastUpdated} -> lastUpdated) (\s@TypeSummary' {} a -> s {lastUpdated = a} :: TypeSummary) Core.. Lens.mapping Core._Time

-- | The ID of the default version of the type. The default version is used
-- when the type version is not specified.
--
-- To set the default version of a type, use @ SetTypeDefaultVersion @.
typeSummary_defaultVersionId :: Lens.Lens' TypeSummary (Core.Maybe Core.Text)
typeSummary_defaultVersionId = Lens.lens (\TypeSummary' {defaultVersionId} -> defaultVersionId) (\s@TypeSummary' {} a -> s {defaultVersionId = a} :: TypeSummary)

-- | The description of the type.
typeSummary_description :: Lens.Lens' TypeSummary (Core.Maybe Core.Text)
typeSummary_description = Lens.lens (\TypeSummary' {description} -> description) (\s@TypeSummary' {} a -> s {description = a} :: TypeSummary)

-- | The kind of type.
typeSummary_type :: Lens.Lens' TypeSummary (Core.Maybe RegistryType)
typeSummary_type = Lens.lens (\TypeSummary' {type'} -> type') (\s@TypeSummary' {} a -> s {type' = a} :: TypeSummary)

-- | The Amazon Resource Name (ARN) of the type.
typeSummary_typeArn :: Lens.Lens' TypeSummary (Core.Maybe Core.Text)
typeSummary_typeArn = Lens.lens (\TypeSummary' {typeArn} -> typeArn) (\s@TypeSummary' {} a -> s {typeArn = a} :: TypeSummary)

instance Core.FromXML TypeSummary where
  parseXML x =
    TypeSummary'
      Core.<$> (x Core..@? "TypeName")
      Core.<*> (x Core..@? "LastUpdated")
      Core.<*> (x Core..@? "DefaultVersionId")
      Core.<*> (x Core..@? "Description")
      Core.<*> (x Core..@? "Type")
      Core.<*> (x Core..@? "TypeArn")

instance Core.Hashable TypeSummary

instance Core.NFData TypeSummary
