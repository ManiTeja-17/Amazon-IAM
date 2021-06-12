{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.DescribeRulesPackages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the rules packages that are specified by the ARNs of the rules
-- packages.
module Network.AWS.Inspector.DescribeRulesPackages
  ( -- * Creating a Request
    DescribeRulesPackages (..),
    newDescribeRulesPackages,

    -- * Request Lenses
    describeRulesPackages_locale,
    describeRulesPackages_rulesPackageArns,

    -- * Destructuring the Response
    DescribeRulesPackagesResponse (..),
    newDescribeRulesPackagesResponse,

    -- * Response Lenses
    describeRulesPackagesResponse_httpStatus,
    describeRulesPackagesResponse_rulesPackages,
    describeRulesPackagesResponse_failedItems,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Inspector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeRulesPackages' smart constructor.
data DescribeRulesPackages = DescribeRulesPackages'
  { -- | The locale that you want to translate a rules package description into.
    locale :: Core.Maybe Locale,
    -- | The ARN that specifies the rules package that you want to describe.
    rulesPackageArns :: Core.NonEmpty Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeRulesPackages' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locale', 'describeRulesPackages_locale' - The locale that you want to translate a rules package description into.
--
-- 'rulesPackageArns', 'describeRulesPackages_rulesPackageArns' - The ARN that specifies the rules package that you want to describe.
newDescribeRulesPackages ::
  -- | 'rulesPackageArns'
  Core.NonEmpty Core.Text ->
  DescribeRulesPackages
newDescribeRulesPackages pRulesPackageArns_ =
  DescribeRulesPackages'
    { locale = Core.Nothing,
      rulesPackageArns =
        Lens._Coerce Lens.# pRulesPackageArns_
    }

-- | The locale that you want to translate a rules package description into.
describeRulesPackages_locale :: Lens.Lens' DescribeRulesPackages (Core.Maybe Locale)
describeRulesPackages_locale = Lens.lens (\DescribeRulesPackages' {locale} -> locale) (\s@DescribeRulesPackages' {} a -> s {locale = a} :: DescribeRulesPackages)

-- | The ARN that specifies the rules package that you want to describe.
describeRulesPackages_rulesPackageArns :: Lens.Lens' DescribeRulesPackages (Core.NonEmpty Core.Text)
describeRulesPackages_rulesPackageArns = Lens.lens (\DescribeRulesPackages' {rulesPackageArns} -> rulesPackageArns) (\s@DescribeRulesPackages' {} a -> s {rulesPackageArns = a} :: DescribeRulesPackages) Core.. Lens._Coerce

instance Core.AWSRequest DescribeRulesPackages where
  type
    AWSResponse DescribeRulesPackages =
      DescribeRulesPackagesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRulesPackagesResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..?> "rulesPackages" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "failedItems" Core..!@ Core.mempty)
      )

instance Core.Hashable DescribeRulesPackages

instance Core.NFData DescribeRulesPackages

instance Core.ToHeaders DescribeRulesPackages where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "InspectorService.DescribeRulesPackages" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeRulesPackages where
  toJSON DescribeRulesPackages' {..} =
    Core.object
      ( Core.catMaybes
          [ ("locale" Core..=) Core.<$> locale,
            Core.Just
              ("rulesPackageArns" Core..= rulesPackageArns)
          ]
      )

instance Core.ToPath DescribeRulesPackages where
  toPath = Core.const "/"

instance Core.ToQuery DescribeRulesPackages where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeRulesPackagesResponse' smart constructor.
data DescribeRulesPackagesResponse = DescribeRulesPackagesResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | Information about the rules package.
    rulesPackages :: [RulesPackage],
    -- | Rules package details that cannot be described. An error code is
    -- provided for each failed item.
    failedItems :: Core.HashMap Core.Text FailedItemDetails
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeRulesPackagesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeRulesPackagesResponse_httpStatus' - The response's http status code.
--
-- 'rulesPackages', 'describeRulesPackagesResponse_rulesPackages' - Information about the rules package.
--
-- 'failedItems', 'describeRulesPackagesResponse_failedItems' - Rules package details that cannot be described. An error code is
-- provided for each failed item.
newDescribeRulesPackagesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeRulesPackagesResponse
newDescribeRulesPackagesResponse pHttpStatus_ =
  DescribeRulesPackagesResponse'
    { httpStatus =
        pHttpStatus_,
      rulesPackages = Core.mempty,
      failedItems = Core.mempty
    }

-- | The response's http status code.
describeRulesPackagesResponse_httpStatus :: Lens.Lens' DescribeRulesPackagesResponse Core.Int
describeRulesPackagesResponse_httpStatus = Lens.lens (\DescribeRulesPackagesResponse' {httpStatus} -> httpStatus) (\s@DescribeRulesPackagesResponse' {} a -> s {httpStatus = a} :: DescribeRulesPackagesResponse)

-- | Information about the rules package.
describeRulesPackagesResponse_rulesPackages :: Lens.Lens' DescribeRulesPackagesResponse [RulesPackage]
describeRulesPackagesResponse_rulesPackages = Lens.lens (\DescribeRulesPackagesResponse' {rulesPackages} -> rulesPackages) (\s@DescribeRulesPackagesResponse' {} a -> s {rulesPackages = a} :: DescribeRulesPackagesResponse) Core.. Lens._Coerce

-- | Rules package details that cannot be described. An error code is
-- provided for each failed item.
describeRulesPackagesResponse_failedItems :: Lens.Lens' DescribeRulesPackagesResponse (Core.HashMap Core.Text FailedItemDetails)
describeRulesPackagesResponse_failedItems = Lens.lens (\DescribeRulesPackagesResponse' {failedItems} -> failedItems) (\s@DescribeRulesPackagesResponse' {} a -> s {failedItems = a} :: DescribeRulesPackagesResponse) Core.. Lens._Coerce

instance Core.NFData DescribeRulesPackagesResponse
