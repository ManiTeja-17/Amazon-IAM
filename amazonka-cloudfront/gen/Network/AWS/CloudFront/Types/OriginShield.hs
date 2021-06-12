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
-- Module      : Network.AWS.CloudFront.Types.OriginShield
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginShield where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | CloudFront Origin Shield.
--
-- Using Origin Shield can help reduce the load on your origin. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html Using Origin Shield>
-- in the /Amazon CloudFront Developer Guide/.
--
-- /See:/ 'newOriginShield' smart constructor.
data OriginShield = OriginShield'
  { -- | The AWS Region for Origin Shield.
    --
    -- Specify the AWS Region that has the lowest latency to your origin. To
    -- specify a region, use the region code, not the region name. For example,
    -- specify the US East (Ohio) region as @us-east-2@.
    --
    -- When you enable CloudFront Origin Shield, you must specify the AWS
    -- Region for Origin Shield. For the list of AWS Regions that you can
    -- specify, and for help choosing the best Region for your origin, see
    -- <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html#choose-origin-shield-region Choosing the AWS Region for Origin Shield>
    -- in the /Amazon CloudFront Developer Guide/.
    originShieldRegion :: Core.Maybe Core.Text,
    -- | A flag that specifies whether Origin Shield is enabled.
    --
    -- When it’s enabled, CloudFront routes all requests through Origin Shield,
    -- which can help protect your origin. When it’s disabled, CloudFront might
    -- send requests directly to your origin from multiple edge locations or
    -- regional edge caches.
    enabled :: Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'OriginShield' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'originShieldRegion', 'originShield_originShieldRegion' - The AWS Region for Origin Shield.
--
-- Specify the AWS Region that has the lowest latency to your origin. To
-- specify a region, use the region code, not the region name. For example,
-- specify the US East (Ohio) region as @us-east-2@.
--
-- When you enable CloudFront Origin Shield, you must specify the AWS
-- Region for Origin Shield. For the list of AWS Regions that you can
-- specify, and for help choosing the best Region for your origin, see
-- <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html#choose-origin-shield-region Choosing the AWS Region for Origin Shield>
-- in the /Amazon CloudFront Developer Guide/.
--
-- 'enabled', 'originShield_enabled' - A flag that specifies whether Origin Shield is enabled.
--
-- When it’s enabled, CloudFront routes all requests through Origin Shield,
-- which can help protect your origin. When it’s disabled, CloudFront might
-- send requests directly to your origin from multiple edge locations or
-- regional edge caches.
newOriginShield ::
  -- | 'enabled'
  Core.Bool ->
  OriginShield
newOriginShield pEnabled_ =
  OriginShield'
    { originShieldRegion = Core.Nothing,
      enabled = pEnabled_
    }

-- | The AWS Region for Origin Shield.
--
-- Specify the AWS Region that has the lowest latency to your origin. To
-- specify a region, use the region code, not the region name. For example,
-- specify the US East (Ohio) region as @us-east-2@.
--
-- When you enable CloudFront Origin Shield, you must specify the AWS
-- Region for Origin Shield. For the list of AWS Regions that you can
-- specify, and for help choosing the best Region for your origin, see
-- <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html#choose-origin-shield-region Choosing the AWS Region for Origin Shield>
-- in the /Amazon CloudFront Developer Guide/.
originShield_originShieldRegion :: Lens.Lens' OriginShield (Core.Maybe Core.Text)
originShield_originShieldRegion = Lens.lens (\OriginShield' {originShieldRegion} -> originShieldRegion) (\s@OriginShield' {} a -> s {originShieldRegion = a} :: OriginShield)

-- | A flag that specifies whether Origin Shield is enabled.
--
-- When it’s enabled, CloudFront routes all requests through Origin Shield,
-- which can help protect your origin. When it’s disabled, CloudFront might
-- send requests directly to your origin from multiple edge locations or
-- regional edge caches.
originShield_enabled :: Lens.Lens' OriginShield Core.Bool
originShield_enabled = Lens.lens (\OriginShield' {enabled} -> enabled) (\s@OriginShield' {} a -> s {enabled = a} :: OriginShield)

instance Core.FromXML OriginShield where
  parseXML x =
    OriginShield'
      Core.<$> (x Core..@? "OriginShieldRegion")
      Core.<*> (x Core..@ "Enabled")

instance Core.Hashable OriginShield

instance Core.NFData OriginShield

instance Core.ToXML OriginShield where
  toXML OriginShield' {..} =
    Core.mconcat
      [ "OriginShieldRegion" Core.@= originShieldRegion,
        "Enabled" Core.@= enabled
      ]
