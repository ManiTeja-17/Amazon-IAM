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
-- Module      : Network.AWS.EC2.Types.ElasticGpuSpecificationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ElasticGpuSpecificationResponse where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | Describes an elastic GPU.
--
-- /See:/ 'newElasticGpuSpecificationResponse' smart constructor.
data ElasticGpuSpecificationResponse = ElasticGpuSpecificationResponse'
  { -- | The elastic GPU type.
    type' :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ElasticGpuSpecificationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'elasticGpuSpecificationResponse_type' - The elastic GPU type.
newElasticGpuSpecificationResponse ::
  ElasticGpuSpecificationResponse
newElasticGpuSpecificationResponse =
  ElasticGpuSpecificationResponse'
    { type' =
        Core.Nothing
    }

-- | The elastic GPU type.
elasticGpuSpecificationResponse_type :: Lens.Lens' ElasticGpuSpecificationResponse (Core.Maybe Core.Text)
elasticGpuSpecificationResponse_type = Lens.lens (\ElasticGpuSpecificationResponse' {type'} -> type') (\s@ElasticGpuSpecificationResponse' {} a -> s {type' = a} :: ElasticGpuSpecificationResponse)

instance Core.FromXML ElasticGpuSpecificationResponse where
  parseXML x =
    ElasticGpuSpecificationResponse'
      Core.<$> (x Core..@? "type")

instance
  Core.Hashable
    ElasticGpuSpecificationResponse

instance Core.NFData ElasticGpuSpecificationResponse
