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
-- Module      : Network.AWS.GuardDuty.GetFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes Amazon GuardDuty findings specified by finding IDs.
module Network.AWS.GuardDuty.GetFindings
  ( -- * Creating a Request
    GetFindings (..),
    newGetFindings,

    -- * Request Lenses
    getFindings_sortCriteria,
    getFindings_detectorId,
    getFindings_findingIds,

    -- * Destructuring the Response
    GetFindingsResponse (..),
    newGetFindingsResponse,

    -- * Response Lenses
    getFindingsResponse_httpStatus,
    getFindingsResponse_findings,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetFindings' smart constructor.
data GetFindings = GetFindings'
  { -- | Represents the criteria used for sorting findings.
    sortCriteria :: Core.Maybe SortCriteria,
    -- | The ID of the detector that specifies the GuardDuty service whose
    -- findings you want to retrieve.
    detectorId :: Core.Text,
    -- | The IDs of the findings that you want to retrieve.
    findingIds :: [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetFindings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortCriteria', 'getFindings_sortCriteria' - Represents the criteria used for sorting findings.
--
-- 'detectorId', 'getFindings_detectorId' - The ID of the detector that specifies the GuardDuty service whose
-- findings you want to retrieve.
--
-- 'findingIds', 'getFindings_findingIds' - The IDs of the findings that you want to retrieve.
newGetFindings ::
  -- | 'detectorId'
  Core.Text ->
  GetFindings
newGetFindings pDetectorId_ =
  GetFindings'
    { sortCriteria = Core.Nothing,
      detectorId = pDetectorId_,
      findingIds = Core.mempty
    }

-- | Represents the criteria used for sorting findings.
getFindings_sortCriteria :: Lens.Lens' GetFindings (Core.Maybe SortCriteria)
getFindings_sortCriteria = Lens.lens (\GetFindings' {sortCriteria} -> sortCriteria) (\s@GetFindings' {} a -> s {sortCriteria = a} :: GetFindings)

-- | The ID of the detector that specifies the GuardDuty service whose
-- findings you want to retrieve.
getFindings_detectorId :: Lens.Lens' GetFindings Core.Text
getFindings_detectorId = Lens.lens (\GetFindings' {detectorId} -> detectorId) (\s@GetFindings' {} a -> s {detectorId = a} :: GetFindings)

-- | The IDs of the findings that you want to retrieve.
getFindings_findingIds :: Lens.Lens' GetFindings [Core.Text]
getFindings_findingIds = Lens.lens (\GetFindings' {findingIds} -> findingIds) (\s@GetFindings' {} a -> s {findingIds = a} :: GetFindings) Core.. Lens._Coerce

instance Core.AWSRequest GetFindings where
  type AWSResponse GetFindings = GetFindingsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFindingsResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..?> "findings" Core..!@ Core.mempty)
      )

instance Core.Hashable GetFindings

instance Core.NFData GetFindings

instance Core.ToHeaders GetFindings where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetFindings where
  toJSON GetFindings' {..} =
    Core.object
      ( Core.catMaybes
          [ ("sortCriteria" Core..=) Core.<$> sortCriteria,
            Core.Just ("findingIds" Core..= findingIds)
          ]
      )

instance Core.ToPath GetFindings where
  toPath GetFindings' {..} =
    Core.mconcat
      ["/detector/", Core.toBS detectorId, "/findings/get"]

instance Core.ToQuery GetFindings where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetFindingsResponse' smart constructor.
data GetFindingsResponse = GetFindingsResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | A list of findings.
    findings :: [Finding]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetFindingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getFindingsResponse_httpStatus' - The response's http status code.
--
-- 'findings', 'getFindingsResponse_findings' - A list of findings.
newGetFindingsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetFindingsResponse
newGetFindingsResponse pHttpStatus_ =
  GetFindingsResponse'
    { httpStatus = pHttpStatus_,
      findings = Core.mempty
    }

-- | The response's http status code.
getFindingsResponse_httpStatus :: Lens.Lens' GetFindingsResponse Core.Int
getFindingsResponse_httpStatus = Lens.lens (\GetFindingsResponse' {httpStatus} -> httpStatus) (\s@GetFindingsResponse' {} a -> s {httpStatus = a} :: GetFindingsResponse)

-- | A list of findings.
getFindingsResponse_findings :: Lens.Lens' GetFindingsResponse [Finding]
getFindingsResponse_findings = Lens.lens (\GetFindingsResponse' {findings} -> findings) (\s@GetFindingsResponse' {} a -> s {findings = a} :: GetFindingsResponse) Core.. Lens._Coerce

instance Core.NFData GetFindingsResponse
