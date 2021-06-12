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
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionQueryStringParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionQueryStringParameter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Additional query string parameter for the connection. You can include up
-- to 100 additional query string parameters per request. Each additional
-- parameter counts towards the event payload size, which cannot exceed 64
-- KB.
--
-- /See:/ 'newConnectionQueryStringParameter' smart constructor.
data ConnectionQueryStringParameter = ConnectionQueryStringParameter'
  { -- | The key for a query string parameter.
    key :: Core.Maybe Core.Text,
    -- | Specifies whether the value is secret.
    isValueSecret :: Core.Maybe Core.Bool,
    -- | The value associated with the key for the query string parameter.
    value :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ConnectionQueryStringParameter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'connectionQueryStringParameter_key' - The key for a query string parameter.
--
-- 'isValueSecret', 'connectionQueryStringParameter_isValueSecret' - Specifies whether the value is secret.
--
-- 'value', 'connectionQueryStringParameter_value' - The value associated with the key for the query string parameter.
newConnectionQueryStringParameter ::
  ConnectionQueryStringParameter
newConnectionQueryStringParameter =
  ConnectionQueryStringParameter'
    { key = Core.Nothing,
      isValueSecret = Core.Nothing,
      value = Core.Nothing
    }

-- | The key for a query string parameter.
connectionQueryStringParameter_key :: Lens.Lens' ConnectionQueryStringParameter (Core.Maybe Core.Text)
connectionQueryStringParameter_key = Lens.lens (\ConnectionQueryStringParameter' {key} -> key) (\s@ConnectionQueryStringParameter' {} a -> s {key = a} :: ConnectionQueryStringParameter)

-- | Specifies whether the value is secret.
connectionQueryStringParameter_isValueSecret :: Lens.Lens' ConnectionQueryStringParameter (Core.Maybe Core.Bool)
connectionQueryStringParameter_isValueSecret = Lens.lens (\ConnectionQueryStringParameter' {isValueSecret} -> isValueSecret) (\s@ConnectionQueryStringParameter' {} a -> s {isValueSecret = a} :: ConnectionQueryStringParameter)

-- | The value associated with the key for the query string parameter.
connectionQueryStringParameter_value :: Lens.Lens' ConnectionQueryStringParameter (Core.Maybe Core.Text)
connectionQueryStringParameter_value = Lens.lens (\ConnectionQueryStringParameter' {value} -> value) (\s@ConnectionQueryStringParameter' {} a -> s {value = a} :: ConnectionQueryStringParameter)

instance Core.FromJSON ConnectionQueryStringParameter where
  parseJSON =
    Core.withObject
      "ConnectionQueryStringParameter"
      ( \x ->
          ConnectionQueryStringParameter'
            Core.<$> (x Core..:? "Key")
            Core.<*> (x Core..:? "IsValueSecret")
            Core.<*> (x Core..:? "Value")
      )

instance Core.Hashable ConnectionQueryStringParameter

instance Core.NFData ConnectionQueryStringParameter

instance Core.ToJSON ConnectionQueryStringParameter where
  toJSON ConnectionQueryStringParameter' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Key" Core..=) Core.<$> key,
            ("IsValueSecret" Core..=) Core.<$> isValueSecret,
            ("Value" Core..=) Core.<$> value
          ]
      )
