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
-- Module      : Network.AWS.OpsWorks.Types.EnvironmentVariable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.EnvironmentVariable where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Represents an app\'s environment variable.
--
-- /See:/ 'newEnvironmentVariable' smart constructor.
data EnvironmentVariable = EnvironmentVariable'
  { -- | (Optional) Whether the variable\'s value will be returned by the
    -- DescribeApps action. To conceal an environment variable\'s value, set
    -- @Secure@ to @true@. @DescribeApps@ then returns @*****FILTERED*****@
    -- instead of the actual value. The default value for @Secure@ is @false@.
    secure :: Core.Maybe Core.Bool,
    -- | (Required) The environment variable\'s name, which can consist of up to
    -- 64 characters and must be specified. The name can contain upper- and
    -- lowercase letters, numbers, and underscores (_), but it must start with
    -- a letter or underscore.
    key :: Core.Text,
    -- | (Optional) The environment variable\'s value, which can be left empty.
    -- If you specify a value, it can contain up to 256 characters, which must
    -- all be printable.
    value :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EnvironmentVariable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'secure', 'environmentVariable_secure' - (Optional) Whether the variable\'s value will be returned by the
-- DescribeApps action. To conceal an environment variable\'s value, set
-- @Secure@ to @true@. @DescribeApps@ then returns @*****FILTERED*****@
-- instead of the actual value. The default value for @Secure@ is @false@.
--
-- 'key', 'environmentVariable_key' - (Required) The environment variable\'s name, which can consist of up to
-- 64 characters and must be specified. The name can contain upper- and
-- lowercase letters, numbers, and underscores (_), but it must start with
-- a letter or underscore.
--
-- 'value', 'environmentVariable_value' - (Optional) The environment variable\'s value, which can be left empty.
-- If you specify a value, it can contain up to 256 characters, which must
-- all be printable.
newEnvironmentVariable ::
  -- | 'key'
  Core.Text ->
  -- | 'value'
  Core.Text ->
  EnvironmentVariable
newEnvironmentVariable pKey_ pValue_ =
  EnvironmentVariable'
    { secure = Core.Nothing,
      key = pKey_,
      value = pValue_
    }

-- | (Optional) Whether the variable\'s value will be returned by the
-- DescribeApps action. To conceal an environment variable\'s value, set
-- @Secure@ to @true@. @DescribeApps@ then returns @*****FILTERED*****@
-- instead of the actual value. The default value for @Secure@ is @false@.
environmentVariable_secure :: Lens.Lens' EnvironmentVariable (Core.Maybe Core.Bool)
environmentVariable_secure = Lens.lens (\EnvironmentVariable' {secure} -> secure) (\s@EnvironmentVariable' {} a -> s {secure = a} :: EnvironmentVariable)

-- | (Required) The environment variable\'s name, which can consist of up to
-- 64 characters and must be specified. The name can contain upper- and
-- lowercase letters, numbers, and underscores (_), but it must start with
-- a letter or underscore.
environmentVariable_key :: Lens.Lens' EnvironmentVariable Core.Text
environmentVariable_key = Lens.lens (\EnvironmentVariable' {key} -> key) (\s@EnvironmentVariable' {} a -> s {key = a} :: EnvironmentVariable)

-- | (Optional) The environment variable\'s value, which can be left empty.
-- If you specify a value, it can contain up to 256 characters, which must
-- all be printable.
environmentVariable_value :: Lens.Lens' EnvironmentVariable Core.Text
environmentVariable_value = Lens.lens (\EnvironmentVariable' {value} -> value) (\s@EnvironmentVariable' {} a -> s {value = a} :: EnvironmentVariable)

instance Core.FromJSON EnvironmentVariable where
  parseJSON =
    Core.withObject
      "EnvironmentVariable"
      ( \x ->
          EnvironmentVariable'
            Core.<$> (x Core..:? "Secure")
            Core.<*> (x Core..: "Key")
            Core.<*> (x Core..: "Value")
      )

instance Core.Hashable EnvironmentVariable

instance Core.NFData EnvironmentVariable

instance Core.ToJSON EnvironmentVariable where
  toJSON EnvironmentVariable' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Secure" Core..=) Core.<$> secure,
            Core.Just ("Key" Core..= key),
            Core.Just ("Value" Core..= value)
          ]
      )
