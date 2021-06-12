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
-- Module      : Network.AWS.Redshift.Types.ClusterParameterGroupNameMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ClusterParameterGroupNameMessage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Redshift.Internal

-- |
--
-- /See:/ 'newClusterParameterGroupNameMessage' smart constructor.
data ClusterParameterGroupNameMessage = ClusterParameterGroupNameMessage'
  { -- | The status of the parameter group. For example, if you made a change to
    -- a parameter group name-value pair, then the change could be pending a
    -- reboot of an associated cluster.
    parameterGroupStatus :: Core.Maybe Core.Text,
    -- | The name of the cluster parameter group.
    parameterGroupName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ClusterParameterGroupNameMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parameterGroupStatus', 'clusterParameterGroupNameMessage_parameterGroupStatus' - The status of the parameter group. For example, if you made a change to
-- a parameter group name-value pair, then the change could be pending a
-- reboot of an associated cluster.
--
-- 'parameterGroupName', 'clusterParameterGroupNameMessage_parameterGroupName' - The name of the cluster parameter group.
newClusterParameterGroupNameMessage ::
  ClusterParameterGroupNameMessage
newClusterParameterGroupNameMessage =
  ClusterParameterGroupNameMessage'
    { parameterGroupStatus =
        Core.Nothing,
      parameterGroupName = Core.Nothing
    }

-- | The status of the parameter group. For example, if you made a change to
-- a parameter group name-value pair, then the change could be pending a
-- reboot of an associated cluster.
clusterParameterGroupNameMessage_parameterGroupStatus :: Lens.Lens' ClusterParameterGroupNameMessage (Core.Maybe Core.Text)
clusterParameterGroupNameMessage_parameterGroupStatus = Lens.lens (\ClusterParameterGroupNameMessage' {parameterGroupStatus} -> parameterGroupStatus) (\s@ClusterParameterGroupNameMessage' {} a -> s {parameterGroupStatus = a} :: ClusterParameterGroupNameMessage)

-- | The name of the cluster parameter group.
clusterParameterGroupNameMessage_parameterGroupName :: Lens.Lens' ClusterParameterGroupNameMessage (Core.Maybe Core.Text)
clusterParameterGroupNameMessage_parameterGroupName = Lens.lens (\ClusterParameterGroupNameMessage' {parameterGroupName} -> parameterGroupName) (\s@ClusterParameterGroupNameMessage' {} a -> s {parameterGroupName = a} :: ClusterParameterGroupNameMessage)

instance
  Core.FromXML
    ClusterParameterGroupNameMessage
  where
  parseXML x =
    ClusterParameterGroupNameMessage'
      Core.<$> (x Core..@? "ParameterGroupStatus")
      Core.<*> (x Core..@? "ParameterGroupName")

instance
  Core.Hashable
    ClusterParameterGroupNameMessage

instance Core.NFData ClusterParameterGroupNameMessage
