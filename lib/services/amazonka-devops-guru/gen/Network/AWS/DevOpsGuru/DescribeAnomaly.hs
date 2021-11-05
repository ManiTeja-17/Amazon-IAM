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
-- Module      : Network.AWS.DevOpsGuru.DescribeAnomaly
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about an anomaly that you specify using its ID.
module Network.AWS.DevOpsGuru.DescribeAnomaly
  ( -- * Creating a Request
    DescribeAnomaly (..),
    newDescribeAnomaly,

    -- * Request Lenses
    describeAnomaly_id,

    -- * Destructuring the Response
    DescribeAnomalyResponse (..),
    newDescribeAnomalyResponse,

    -- * Response Lenses
    describeAnomalyResponse_reactiveAnomaly,
    describeAnomalyResponse_proactiveAnomaly,
    describeAnomalyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DevOpsGuru.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAnomaly' smart constructor.
data DescribeAnomaly = DescribeAnomaly'
  { -- | The ID of the anomaly.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAnomaly' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'describeAnomaly_id' - The ID of the anomaly.
newDescribeAnomaly ::
  -- | 'id'
  Prelude.Text ->
  DescribeAnomaly
newDescribeAnomaly pId_ = DescribeAnomaly' {id = pId_}

-- | The ID of the anomaly.
describeAnomaly_id :: Lens.Lens' DescribeAnomaly Prelude.Text
describeAnomaly_id = Lens.lens (\DescribeAnomaly' {id} -> id) (\s@DescribeAnomaly' {} a -> s {id = a} :: DescribeAnomaly)

instance Core.AWSRequest DescribeAnomaly where
  type
    AWSResponse DescribeAnomaly =
      DescribeAnomalyResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAnomalyResponse'
            Prelude.<$> (x Core..?> "ReactiveAnomaly")
            Prelude.<*> (x Core..?> "ProactiveAnomaly")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAnomaly

instance Prelude.NFData DescribeAnomaly

instance Core.ToHeaders DescribeAnomaly where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeAnomaly where
  toPath DescribeAnomaly' {..} =
    Prelude.mconcat ["/anomalies/", Core.toBS id]

instance Core.ToQuery DescribeAnomaly where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAnomalyResponse' smart constructor.
data DescribeAnomalyResponse = DescribeAnomalyResponse'
  { -- | A @ProactiveAnomaly@ object that represents the requested anomaly.
    reactiveAnomaly :: Prelude.Maybe ReactiveAnomaly,
    -- | A @ReactiveAnomaly@ object that represents the requested anomaly.
    proactiveAnomaly :: Prelude.Maybe ProactiveAnomaly,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAnomalyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reactiveAnomaly', 'describeAnomalyResponse_reactiveAnomaly' - A @ProactiveAnomaly@ object that represents the requested anomaly.
--
-- 'proactiveAnomaly', 'describeAnomalyResponse_proactiveAnomaly' - A @ReactiveAnomaly@ object that represents the requested anomaly.
--
-- 'httpStatus', 'describeAnomalyResponse_httpStatus' - The response's http status code.
newDescribeAnomalyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAnomalyResponse
newDescribeAnomalyResponse pHttpStatus_ =
  DescribeAnomalyResponse'
    { reactiveAnomaly =
        Prelude.Nothing,
      proactiveAnomaly = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A @ProactiveAnomaly@ object that represents the requested anomaly.
describeAnomalyResponse_reactiveAnomaly :: Lens.Lens' DescribeAnomalyResponse (Prelude.Maybe ReactiveAnomaly)
describeAnomalyResponse_reactiveAnomaly = Lens.lens (\DescribeAnomalyResponse' {reactiveAnomaly} -> reactiveAnomaly) (\s@DescribeAnomalyResponse' {} a -> s {reactiveAnomaly = a} :: DescribeAnomalyResponse)

-- | A @ReactiveAnomaly@ object that represents the requested anomaly.
describeAnomalyResponse_proactiveAnomaly :: Lens.Lens' DescribeAnomalyResponse (Prelude.Maybe ProactiveAnomaly)
describeAnomalyResponse_proactiveAnomaly = Lens.lens (\DescribeAnomalyResponse' {proactiveAnomaly} -> proactiveAnomaly) (\s@DescribeAnomalyResponse' {} a -> s {proactiveAnomaly = a} :: DescribeAnomalyResponse)

-- | The response's http status code.
describeAnomalyResponse_httpStatus :: Lens.Lens' DescribeAnomalyResponse Prelude.Int
describeAnomalyResponse_httpStatus = Lens.lens (\DescribeAnomalyResponse' {httpStatus} -> httpStatus) (\s@DescribeAnomalyResponse' {} a -> s {httpStatus = a} :: DescribeAnomalyResponse)

instance Prelude.NFData DescribeAnomalyResponse