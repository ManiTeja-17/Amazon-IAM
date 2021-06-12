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
-- Module      : Network.AWS.DirectConnect.DescribeLoa
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the LOA-CFA for a connection, interconnect, or link aggregation
-- group (LAG).
--
-- The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
-- is a document that is used when establishing your cross connect to AWS
-- at the colocation facility. For more information, see
-- <https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html Requesting Cross Connects at AWS Direct Connect Locations>
-- in the /AWS Direct Connect User Guide/.
module Network.AWS.DirectConnect.DescribeLoa
  ( -- * Creating a Request
    DescribeLoa (..),
    newDescribeLoa,

    -- * Request Lenses
    describeLoa_providerName,
    describeLoa_loaContentType,
    describeLoa_connectionId,

    -- * Destructuring the Response
    DescribeLoaResponse (..),
    newDescribeLoaResponse,

    -- * Response Lenses
    describeLoaResponse_loaContent,
    describeLoaResponse_loaContentType,
    describeLoaResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectConnect.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeLoa' smart constructor.
data DescribeLoa = DescribeLoa'
  { -- | The name of the service provider who establishes connectivity on your
    -- behalf. If you specify this parameter, the LOA-CFA lists the provider
    -- name alongside your company name as the requester of the cross connect.
    providerName :: Core.Maybe Core.Text,
    -- | The standard media type for the LOA-CFA document. The only supported
    -- value is application\/pdf.
    loaContentType :: Core.Maybe LoaContentType,
    -- | The ID of a connection, LAG, or interconnect.
    connectionId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeLoa' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'providerName', 'describeLoa_providerName' - The name of the service provider who establishes connectivity on your
-- behalf. If you specify this parameter, the LOA-CFA lists the provider
-- name alongside your company name as the requester of the cross connect.
--
-- 'loaContentType', 'describeLoa_loaContentType' - The standard media type for the LOA-CFA document. The only supported
-- value is application\/pdf.
--
-- 'connectionId', 'describeLoa_connectionId' - The ID of a connection, LAG, or interconnect.
newDescribeLoa ::
  -- | 'connectionId'
  Core.Text ->
  DescribeLoa
newDescribeLoa pConnectionId_ =
  DescribeLoa'
    { providerName = Core.Nothing,
      loaContentType = Core.Nothing,
      connectionId = pConnectionId_
    }

-- | The name of the service provider who establishes connectivity on your
-- behalf. If you specify this parameter, the LOA-CFA lists the provider
-- name alongside your company name as the requester of the cross connect.
describeLoa_providerName :: Lens.Lens' DescribeLoa (Core.Maybe Core.Text)
describeLoa_providerName = Lens.lens (\DescribeLoa' {providerName} -> providerName) (\s@DescribeLoa' {} a -> s {providerName = a} :: DescribeLoa)

-- | The standard media type for the LOA-CFA document. The only supported
-- value is application\/pdf.
describeLoa_loaContentType :: Lens.Lens' DescribeLoa (Core.Maybe LoaContentType)
describeLoa_loaContentType = Lens.lens (\DescribeLoa' {loaContentType} -> loaContentType) (\s@DescribeLoa' {} a -> s {loaContentType = a} :: DescribeLoa)

-- | The ID of a connection, LAG, or interconnect.
describeLoa_connectionId :: Lens.Lens' DescribeLoa Core.Text
describeLoa_connectionId = Lens.lens (\DescribeLoa' {connectionId} -> connectionId) (\s@DescribeLoa' {} a -> s {connectionId = a} :: DescribeLoa)

instance Core.AWSRequest DescribeLoa where
  type AWSResponse DescribeLoa = DescribeLoaResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeLoaResponse'
            Core.<$> (x Core..?> "loaContent")
            Core.<*> (x Core..?> "loaContentType")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeLoa

instance Core.NFData DescribeLoa

instance Core.ToHeaders DescribeLoa where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("OvertureService.DescribeLoa" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeLoa where
  toJSON DescribeLoa' {..} =
    Core.object
      ( Core.catMaybes
          [ ("providerName" Core..=) Core.<$> providerName,
            ("loaContentType" Core..=) Core.<$> loaContentType,
            Core.Just ("connectionId" Core..= connectionId)
          ]
      )

instance Core.ToPath DescribeLoa where
  toPath = Core.const "/"

instance Core.ToQuery DescribeLoa where
  toQuery = Core.const Core.mempty

-- | Information about a Letter of Authorization - Connecting Facility
-- Assignment (LOA-CFA) for a connection.
--
-- /See:/ 'newDescribeLoaResponse' smart constructor.
data DescribeLoaResponse = DescribeLoaResponse'
  { -- | The binary contents of the LOA-CFA document.
    loaContent :: Core.Maybe Core.Base64,
    -- | The standard media type for the LOA-CFA document. The only supported
    -- value is application\/pdf.
    loaContentType :: Core.Maybe LoaContentType,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeLoaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loaContent', 'describeLoaResponse_loaContent' - The binary contents of the LOA-CFA document.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'loaContentType', 'describeLoaResponse_loaContentType' - The standard media type for the LOA-CFA document. The only supported
-- value is application\/pdf.
--
-- 'httpStatus', 'describeLoaResponse_httpStatus' - The response's http status code.
newDescribeLoaResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeLoaResponse
newDescribeLoaResponse pHttpStatus_ =
  DescribeLoaResponse'
    { loaContent = Core.Nothing,
      loaContentType = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The binary contents of the LOA-CFA document.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
describeLoaResponse_loaContent :: Lens.Lens' DescribeLoaResponse (Core.Maybe Core.ByteString)
describeLoaResponse_loaContent = Lens.lens (\DescribeLoaResponse' {loaContent} -> loaContent) (\s@DescribeLoaResponse' {} a -> s {loaContent = a} :: DescribeLoaResponse) Core.. Lens.mapping Core._Base64

-- | The standard media type for the LOA-CFA document. The only supported
-- value is application\/pdf.
describeLoaResponse_loaContentType :: Lens.Lens' DescribeLoaResponse (Core.Maybe LoaContentType)
describeLoaResponse_loaContentType = Lens.lens (\DescribeLoaResponse' {loaContentType} -> loaContentType) (\s@DescribeLoaResponse' {} a -> s {loaContentType = a} :: DescribeLoaResponse)

-- | The response's http status code.
describeLoaResponse_httpStatus :: Lens.Lens' DescribeLoaResponse Core.Int
describeLoaResponse_httpStatus = Lens.lens (\DescribeLoaResponse' {httpStatus} -> httpStatus) (\s@DescribeLoaResponse' {} a -> s {httpStatus = a} :: DescribeLoaResponse)

instance Core.NFData DescribeLoaResponse
