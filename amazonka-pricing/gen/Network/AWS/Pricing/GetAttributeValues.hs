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
-- Module      : Network.AWS.Pricing.GetAttributeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of attribute values. Attibutes are similar to the details
-- in a Price List API offer file. For a list of available attributes, see
-- <http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs Offer File Definitions>
-- in the
-- <http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html AWS Billing and Cost Management User Guide>.
--
-- This operation returns paginated results.
module Network.AWS.Pricing.GetAttributeValues
  ( -- * Creating a Request
    GetAttributeValues (..),
    newGetAttributeValues,

    -- * Request Lenses
    getAttributeValues_nextToken,
    getAttributeValues_maxResults,
    getAttributeValues_serviceCode,
    getAttributeValues_attributeName,

    -- * Destructuring the Response
    GetAttributeValuesResponse (..),
    newGetAttributeValuesResponse,

    -- * Response Lenses
    getAttributeValuesResponse_nextToken,
    getAttributeValuesResponse_attributeValues,
    getAttributeValuesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pricing.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAttributeValues' smart constructor.
data GetAttributeValues = GetAttributeValues'
  { -- | The pagination token that indicates the next set of results that you
    -- want to retrieve.
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum number of results to return in response.
    maxResults :: Core.Maybe Core.Natural,
    -- | The service code for the service whose attributes you want to retrieve.
    -- For example, if you want the retrieve an EC2 attribute, use @AmazonEC2@.
    serviceCode :: Core.Text,
    -- | The name of the attribute that you want to retrieve the values for, such
    -- as @volumeType@.
    attributeName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetAttributeValues' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getAttributeValues_nextToken' - The pagination token that indicates the next set of results that you
-- want to retrieve.
--
-- 'maxResults', 'getAttributeValues_maxResults' - The maximum number of results to return in response.
--
-- 'serviceCode', 'getAttributeValues_serviceCode' - The service code for the service whose attributes you want to retrieve.
-- For example, if you want the retrieve an EC2 attribute, use @AmazonEC2@.
--
-- 'attributeName', 'getAttributeValues_attributeName' - The name of the attribute that you want to retrieve the values for, such
-- as @volumeType@.
newGetAttributeValues ::
  -- | 'serviceCode'
  Core.Text ->
  -- | 'attributeName'
  Core.Text ->
  GetAttributeValues
newGetAttributeValues pServiceCode_ pAttributeName_ =
  GetAttributeValues'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      serviceCode = pServiceCode_,
      attributeName = pAttributeName_
    }

-- | The pagination token that indicates the next set of results that you
-- want to retrieve.
getAttributeValues_nextToken :: Lens.Lens' GetAttributeValues (Core.Maybe Core.Text)
getAttributeValues_nextToken = Lens.lens (\GetAttributeValues' {nextToken} -> nextToken) (\s@GetAttributeValues' {} a -> s {nextToken = a} :: GetAttributeValues)

-- | The maximum number of results to return in response.
getAttributeValues_maxResults :: Lens.Lens' GetAttributeValues (Core.Maybe Core.Natural)
getAttributeValues_maxResults = Lens.lens (\GetAttributeValues' {maxResults} -> maxResults) (\s@GetAttributeValues' {} a -> s {maxResults = a} :: GetAttributeValues)

-- | The service code for the service whose attributes you want to retrieve.
-- For example, if you want the retrieve an EC2 attribute, use @AmazonEC2@.
getAttributeValues_serviceCode :: Lens.Lens' GetAttributeValues Core.Text
getAttributeValues_serviceCode = Lens.lens (\GetAttributeValues' {serviceCode} -> serviceCode) (\s@GetAttributeValues' {} a -> s {serviceCode = a} :: GetAttributeValues)

-- | The name of the attribute that you want to retrieve the values for, such
-- as @volumeType@.
getAttributeValues_attributeName :: Lens.Lens' GetAttributeValues Core.Text
getAttributeValues_attributeName = Lens.lens (\GetAttributeValues' {attributeName} -> attributeName) (\s@GetAttributeValues' {} a -> s {attributeName = a} :: GetAttributeValues)

instance Core.AWSPager GetAttributeValues where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getAttributeValuesResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? getAttributeValuesResponse_attributeValues
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& getAttributeValues_nextToken
          Lens..~ rs
          Lens.^? getAttributeValuesResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest GetAttributeValues where
  type
    AWSResponse GetAttributeValues =
      GetAttributeValuesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAttributeValuesResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "AttributeValues" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetAttributeValues

instance Core.NFData GetAttributeValues

instance Core.ToHeaders GetAttributeValues where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSPriceListService.GetAttributeValues" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetAttributeValues where
  toJSON GetAttributeValues' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            Core.Just ("ServiceCode" Core..= serviceCode),
            Core.Just ("AttributeName" Core..= attributeName)
          ]
      )

instance Core.ToPath GetAttributeValues where
  toPath = Core.const "/"

instance Core.ToQuery GetAttributeValues where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetAttributeValuesResponse' smart constructor.
data GetAttributeValuesResponse = GetAttributeValuesResponse'
  { -- | The pagination token that indicates the next set of results to retrieve.
    nextToken :: Core.Maybe Core.Text,
    -- | The list of values for an attribute. For example,
    -- @Throughput Optimized HDD@ and @Provisioned IOPS@ are two available
    -- values for the @AmazonEC2@ @volumeType@.
    attributeValues :: Core.Maybe [AttributeValue],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetAttributeValuesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getAttributeValuesResponse_nextToken' - The pagination token that indicates the next set of results to retrieve.
--
-- 'attributeValues', 'getAttributeValuesResponse_attributeValues' - The list of values for an attribute. For example,
-- @Throughput Optimized HDD@ and @Provisioned IOPS@ are two available
-- values for the @AmazonEC2@ @volumeType@.
--
-- 'httpStatus', 'getAttributeValuesResponse_httpStatus' - The response's http status code.
newGetAttributeValuesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetAttributeValuesResponse
newGetAttributeValuesResponse pHttpStatus_ =
  GetAttributeValuesResponse'
    { nextToken =
        Core.Nothing,
      attributeValues = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token that indicates the next set of results to retrieve.
getAttributeValuesResponse_nextToken :: Lens.Lens' GetAttributeValuesResponse (Core.Maybe Core.Text)
getAttributeValuesResponse_nextToken = Lens.lens (\GetAttributeValuesResponse' {nextToken} -> nextToken) (\s@GetAttributeValuesResponse' {} a -> s {nextToken = a} :: GetAttributeValuesResponse)

-- | The list of values for an attribute. For example,
-- @Throughput Optimized HDD@ and @Provisioned IOPS@ are two available
-- values for the @AmazonEC2@ @volumeType@.
getAttributeValuesResponse_attributeValues :: Lens.Lens' GetAttributeValuesResponse (Core.Maybe [AttributeValue])
getAttributeValuesResponse_attributeValues = Lens.lens (\GetAttributeValuesResponse' {attributeValues} -> attributeValues) (\s@GetAttributeValuesResponse' {} a -> s {attributeValues = a} :: GetAttributeValuesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
getAttributeValuesResponse_httpStatus :: Lens.Lens' GetAttributeValuesResponse Core.Int
getAttributeValuesResponse_httpStatus = Lens.lens (\GetAttributeValuesResponse' {httpStatus} -> httpStatus) (\s@GetAttributeValuesResponse' {} a -> s {httpStatus = a} :: GetAttributeValuesResponse)

instance Core.NFData GetAttributeValuesResponse
