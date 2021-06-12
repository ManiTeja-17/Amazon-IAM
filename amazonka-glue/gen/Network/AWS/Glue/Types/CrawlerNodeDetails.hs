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
-- Module      : Network.AWS.Glue.Types.CrawlerNodeDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlerNodeDetails where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types.Crawl
import qualified Network.AWS.Lens as Lens

-- | The details of a Crawler node present in the workflow.
--
-- /See:/ 'newCrawlerNodeDetails' smart constructor.
data CrawlerNodeDetails = CrawlerNodeDetails'
  { -- | A list of crawls represented by the crawl node.
    crawls :: Core.Maybe [Crawl]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CrawlerNodeDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'crawls', 'crawlerNodeDetails_crawls' - A list of crawls represented by the crawl node.
newCrawlerNodeDetails ::
  CrawlerNodeDetails
newCrawlerNodeDetails =
  CrawlerNodeDetails' {crawls = Core.Nothing}

-- | A list of crawls represented by the crawl node.
crawlerNodeDetails_crawls :: Lens.Lens' CrawlerNodeDetails (Core.Maybe [Crawl])
crawlerNodeDetails_crawls = Lens.lens (\CrawlerNodeDetails' {crawls} -> crawls) (\s@CrawlerNodeDetails' {} a -> s {crawls = a} :: CrawlerNodeDetails) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON CrawlerNodeDetails where
  parseJSON =
    Core.withObject
      "CrawlerNodeDetails"
      ( \x ->
          CrawlerNodeDetails'
            Core.<$> (x Core..:? "Crawls" Core..!= Core.mempty)
      )

instance Core.Hashable CrawlerNodeDetails

instance Core.NFData CrawlerNodeDetails
