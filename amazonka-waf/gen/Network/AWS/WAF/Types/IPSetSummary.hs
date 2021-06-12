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
-- Module      : Network.AWS.WAF.Types.IPSetSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.IPSetSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | This is __AWS WAF Classic__ documentation. For more information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic>
-- in the developer guide.
--
-- __For the latest version of AWS WAF__, use the AWS WAFV2 API and see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html AWS WAF Developer Guide>.
-- With the latest version, AWS WAF has a single set of endpoints for
-- regional and global use.
--
-- Contains the identifier and the name of the @IPSet@.
--
-- /See:/ 'newIPSetSummary' smart constructor.
data IPSetSummary = IPSetSummary'
  { -- | The @IPSetId@ for an IPSet. You can use @IPSetId@ in a GetIPSet request
    -- to get detailed information about an IPSet.
    iPSetId :: Core.Text,
    -- | A friendly name or description of the IPSet. You can\'t change the name
    -- of an @IPSet@ after you create it.
    name :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'IPSetSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'iPSetId', 'iPSetSummary_iPSetId' - The @IPSetId@ for an IPSet. You can use @IPSetId@ in a GetIPSet request
-- to get detailed information about an IPSet.
--
-- 'name', 'iPSetSummary_name' - A friendly name or description of the IPSet. You can\'t change the name
-- of an @IPSet@ after you create it.
newIPSetSummary ::
  -- | 'iPSetId'
  Core.Text ->
  -- | 'name'
  Core.Text ->
  IPSetSummary
newIPSetSummary pIPSetId_ pName_ =
  IPSetSummary' {iPSetId = pIPSetId_, name = pName_}

-- | The @IPSetId@ for an IPSet. You can use @IPSetId@ in a GetIPSet request
-- to get detailed information about an IPSet.
iPSetSummary_iPSetId :: Lens.Lens' IPSetSummary Core.Text
iPSetSummary_iPSetId = Lens.lens (\IPSetSummary' {iPSetId} -> iPSetId) (\s@IPSetSummary' {} a -> s {iPSetId = a} :: IPSetSummary)

-- | A friendly name or description of the IPSet. You can\'t change the name
-- of an @IPSet@ after you create it.
iPSetSummary_name :: Lens.Lens' IPSetSummary Core.Text
iPSetSummary_name = Lens.lens (\IPSetSummary' {name} -> name) (\s@IPSetSummary' {} a -> s {name = a} :: IPSetSummary)

instance Core.FromJSON IPSetSummary where
  parseJSON =
    Core.withObject
      "IPSetSummary"
      ( \x ->
          IPSetSummary'
            Core.<$> (x Core..: "IPSetId") Core.<*> (x Core..: "Name")
      )

instance Core.Hashable IPSetSummary

instance Core.NFData IPSetSummary
