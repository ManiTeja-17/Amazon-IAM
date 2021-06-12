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
-- Module      : Network.AWS.Redshift.DescribeAccountAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of attributes attached to an account
module Network.AWS.Redshift.DescribeAccountAttributes
  ( -- * Creating a Request
    DescribeAccountAttributes (..),
    newDescribeAccountAttributes,

    -- * Request Lenses
    describeAccountAttributes_attributeNames,

    -- * Destructuring the Response
    DescribeAccountAttributesResponse (..),
    newDescribeAccountAttributesResponse,

    -- * Response Lenses
    describeAccountAttributesResponse_accountAttributes,
    describeAccountAttributesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAccountAttributes' smart constructor.
data DescribeAccountAttributes = DescribeAccountAttributes'
  { -- | A list of attribute names.
    attributeNames :: Core.Maybe [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeAccountAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributeNames', 'describeAccountAttributes_attributeNames' - A list of attribute names.
newDescribeAccountAttributes ::
  DescribeAccountAttributes
newDescribeAccountAttributes =
  DescribeAccountAttributes'
    { attributeNames =
        Core.Nothing
    }

-- | A list of attribute names.
describeAccountAttributes_attributeNames :: Lens.Lens' DescribeAccountAttributes (Core.Maybe [Core.Text])
describeAccountAttributes_attributeNames = Lens.lens (\DescribeAccountAttributes' {attributeNames} -> attributeNames) (\s@DescribeAccountAttributes' {} a -> s {attributeNames = a} :: DescribeAccountAttributes) Core.. Lens.mapping Lens._Coerce

instance Core.AWSRequest DescribeAccountAttributes where
  type
    AWSResponse DescribeAccountAttributes =
      DescribeAccountAttributesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeAccountAttributesResult"
      ( \s h x ->
          DescribeAccountAttributesResponse'
            Core.<$> ( x Core..@? "AccountAttributes" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "AccountAttribute")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeAccountAttributes

instance Core.NFData DescribeAccountAttributes

instance Core.ToHeaders DescribeAccountAttributes where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DescribeAccountAttributes where
  toPath = Core.const "/"

instance Core.ToQuery DescribeAccountAttributes where
  toQuery DescribeAccountAttributes' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DescribeAccountAttributes" :: Core.ByteString),
        "Version" Core.=: ("2012-12-01" :: Core.ByteString),
        "AttributeNames"
          Core.=: Core.toQuery
            ( Core.toQueryList "AttributeName"
                Core.<$> attributeNames
            )
      ]

-- | /See:/ 'newDescribeAccountAttributesResponse' smart constructor.
data DescribeAccountAttributesResponse = DescribeAccountAttributesResponse'
  { -- | A list of attributes assigned to an account.
    accountAttributes :: Core.Maybe [AccountAttribute],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeAccountAttributesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountAttributes', 'describeAccountAttributesResponse_accountAttributes' - A list of attributes assigned to an account.
--
-- 'httpStatus', 'describeAccountAttributesResponse_httpStatus' - The response's http status code.
newDescribeAccountAttributesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeAccountAttributesResponse
newDescribeAccountAttributesResponse pHttpStatus_ =
  DescribeAccountAttributesResponse'
    { accountAttributes =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of attributes assigned to an account.
describeAccountAttributesResponse_accountAttributes :: Lens.Lens' DescribeAccountAttributesResponse (Core.Maybe [AccountAttribute])
describeAccountAttributesResponse_accountAttributes = Lens.lens (\DescribeAccountAttributesResponse' {accountAttributes} -> accountAttributes) (\s@DescribeAccountAttributesResponse' {} a -> s {accountAttributes = a} :: DescribeAccountAttributesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeAccountAttributesResponse_httpStatus :: Lens.Lens' DescribeAccountAttributesResponse Core.Int
describeAccountAttributesResponse_httpStatus = Lens.lens (\DescribeAccountAttributesResponse' {httpStatus} -> httpStatus) (\s@DescribeAccountAttributesResponse' {} a -> s {httpStatus = a} :: DescribeAccountAttributesResponse)

instance
  Core.NFData
    DescribeAccountAttributesResponse
