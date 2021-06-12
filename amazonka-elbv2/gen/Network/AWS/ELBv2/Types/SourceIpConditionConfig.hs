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
-- Module      : Network.AWS.ELBv2.Types.SourceIpConditionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.SourceIpConditionConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Information about a source IP condition.
--
-- You can use this condition to route based on the IP address of the
-- source that connects to the load balancer. If a client is behind a
-- proxy, this is the IP address of the proxy not the IP address of the
-- client.
--
-- /See:/ 'newSourceIpConditionConfig' smart constructor.
data SourceIpConditionConfig = SourceIpConditionConfig'
  { -- | One or more source IP addresses, in CIDR format. You can use both IPv4
    -- and IPv6 addresses. Wildcards are not supported.
    --
    -- If you specify multiple addresses, the condition is satisfied if the
    -- source IP address of the request matches one of the CIDR blocks. This
    -- condition is not satisfied by the addresses in the X-Forwarded-For
    -- header. To search for addresses in the X-Forwarded-For header, use
    -- HttpHeaderConditionConfig.
    values :: Core.Maybe [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SourceIpConditionConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'values', 'sourceIpConditionConfig_values' - One or more source IP addresses, in CIDR format. You can use both IPv4
-- and IPv6 addresses. Wildcards are not supported.
--
-- If you specify multiple addresses, the condition is satisfied if the
-- source IP address of the request matches one of the CIDR blocks. This
-- condition is not satisfied by the addresses in the X-Forwarded-For
-- header. To search for addresses in the X-Forwarded-For header, use
-- HttpHeaderConditionConfig.
newSourceIpConditionConfig ::
  SourceIpConditionConfig
newSourceIpConditionConfig =
  SourceIpConditionConfig' {values = Core.Nothing}

-- | One or more source IP addresses, in CIDR format. You can use both IPv4
-- and IPv6 addresses. Wildcards are not supported.
--
-- If you specify multiple addresses, the condition is satisfied if the
-- source IP address of the request matches one of the CIDR blocks. This
-- condition is not satisfied by the addresses in the X-Forwarded-For
-- header. To search for addresses in the X-Forwarded-For header, use
-- HttpHeaderConditionConfig.
sourceIpConditionConfig_values :: Lens.Lens' SourceIpConditionConfig (Core.Maybe [Core.Text])
sourceIpConditionConfig_values = Lens.lens (\SourceIpConditionConfig' {values} -> values) (\s@SourceIpConditionConfig' {} a -> s {values = a} :: SourceIpConditionConfig) Core.. Lens.mapping Lens._Coerce

instance Core.FromXML SourceIpConditionConfig where
  parseXML x =
    SourceIpConditionConfig'
      Core.<$> ( x Core..@? "Values" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "member")
               )

instance Core.Hashable SourceIpConditionConfig

instance Core.NFData SourceIpConditionConfig

instance Core.ToQuery SourceIpConditionConfig where
  toQuery SourceIpConditionConfig' {..} =
    Core.mconcat
      [ "Values"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Core.<$> values)
      ]
