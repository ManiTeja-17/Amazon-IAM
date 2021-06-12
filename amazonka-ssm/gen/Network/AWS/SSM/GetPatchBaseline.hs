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
-- Module      : Network.AWS.SSM.GetPatchBaseline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a patch baseline.
module Network.AWS.SSM.GetPatchBaseline
  ( -- * Creating a Request
    GetPatchBaseline (..),
    newGetPatchBaseline,

    -- * Request Lenses
    getPatchBaseline_baselineId,

    -- * Destructuring the Response
    GetPatchBaselineResponse (..),
    newGetPatchBaselineResponse,

    -- * Response Lenses
    getPatchBaselineResponse_createdDate,
    getPatchBaselineResponse_baselineId,
    getPatchBaselineResponse_sources,
    getPatchBaselineResponse_rejectedPatches,
    getPatchBaselineResponse_approvedPatchesEnableNonSecurity,
    getPatchBaselineResponse_approvedPatchesComplianceLevel,
    getPatchBaselineResponse_modifiedDate,
    getPatchBaselineResponse_patchGroups,
    getPatchBaselineResponse_name,
    getPatchBaselineResponse_description,
    getPatchBaselineResponse_approvedPatches,
    getPatchBaselineResponse_rejectedPatchesAction,
    getPatchBaselineResponse_operatingSystem,
    getPatchBaselineResponse_globalFilters,
    getPatchBaselineResponse_approvalRules,
    getPatchBaselineResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types

-- | /See:/ 'newGetPatchBaseline' smart constructor.
data GetPatchBaseline = GetPatchBaseline'
  { -- | The ID of the patch baseline to retrieve.
    baselineId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetPatchBaseline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'baselineId', 'getPatchBaseline_baselineId' - The ID of the patch baseline to retrieve.
newGetPatchBaseline ::
  -- | 'baselineId'
  Core.Text ->
  GetPatchBaseline
newGetPatchBaseline pBaselineId_ =
  GetPatchBaseline' {baselineId = pBaselineId_}

-- | The ID of the patch baseline to retrieve.
getPatchBaseline_baselineId :: Lens.Lens' GetPatchBaseline Core.Text
getPatchBaseline_baselineId = Lens.lens (\GetPatchBaseline' {baselineId} -> baselineId) (\s@GetPatchBaseline' {} a -> s {baselineId = a} :: GetPatchBaseline)

instance Core.AWSRequest GetPatchBaseline where
  type
    AWSResponse GetPatchBaseline =
      GetPatchBaselineResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPatchBaselineResponse'
            Core.<$> (x Core..?> "CreatedDate")
            Core.<*> (x Core..?> "BaselineId")
            Core.<*> (x Core..?> "Sources" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "RejectedPatches" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "ApprovedPatchesEnableNonSecurity")
            Core.<*> (x Core..?> "ApprovedPatchesComplianceLevel")
            Core.<*> (x Core..?> "ModifiedDate")
            Core.<*> (x Core..?> "PatchGroups" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "Name")
            Core.<*> (x Core..?> "Description")
            Core.<*> (x Core..?> "ApprovedPatches" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "RejectedPatchesAction")
            Core.<*> (x Core..?> "OperatingSystem")
            Core.<*> (x Core..?> "GlobalFilters")
            Core.<*> (x Core..?> "ApprovalRules")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetPatchBaseline

instance Core.NFData GetPatchBaseline

instance Core.ToHeaders GetPatchBaseline where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AmazonSSM.GetPatchBaseline" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetPatchBaseline where
  toJSON GetPatchBaseline' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("BaselineId" Core..= baselineId)]
      )

instance Core.ToPath GetPatchBaseline where
  toPath = Core.const "/"

instance Core.ToQuery GetPatchBaseline where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetPatchBaselineResponse' smart constructor.
data GetPatchBaselineResponse = GetPatchBaselineResponse'
  { -- | The date the patch baseline was created.
    createdDate :: Core.Maybe Core.POSIX,
    -- | The ID of the retrieved patch baseline.
    baselineId :: Core.Maybe Core.Text,
    -- | Information about the patches to use to update the instances, including
    -- target operating systems and source repositories. Applies to Linux
    -- instances only.
    sources :: Core.Maybe [PatchSource],
    -- | A list of explicitly rejected patches for the baseline.
    rejectedPatches :: Core.Maybe [Core.Text],
    -- | Indicates whether the list of approved patches includes non-security
    -- updates that should be applied to the instances. The default value is
    -- \'false\'. Applies to Linux instances only.
    approvedPatchesEnableNonSecurity :: Core.Maybe Core.Bool,
    -- | Returns the specified compliance severity level for approved patches in
    -- the patch baseline.
    approvedPatchesComplianceLevel :: Core.Maybe PatchComplianceLevel,
    -- | The date the patch baseline was last modified.
    modifiedDate :: Core.Maybe Core.POSIX,
    -- | Patch groups included in the patch baseline.
    patchGroups :: Core.Maybe [Core.Text],
    -- | The name of the patch baseline.
    name :: Core.Maybe Core.Text,
    -- | A description of the patch baseline.
    description :: Core.Maybe Core.Text,
    -- | A list of explicitly approved patches for the baseline.
    approvedPatches :: Core.Maybe [Core.Text],
    -- | The action specified to take on patches included in the RejectedPatches
    -- list. A patch can be allowed only if it is a dependency of another
    -- package, or blocked entirely along with packages that include it as a
    -- dependency.
    rejectedPatchesAction :: Core.Maybe PatchAction,
    -- | Returns the operating system specified for the patch baseline.
    operatingSystem :: Core.Maybe OperatingSystem,
    -- | A set of global filters used to exclude patches from the baseline.
    globalFilters :: Core.Maybe PatchFilterGroup,
    -- | A set of rules used to include patches in the baseline.
    approvalRules :: Core.Maybe PatchRuleGroup,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetPatchBaselineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdDate', 'getPatchBaselineResponse_createdDate' - The date the patch baseline was created.
--
-- 'baselineId', 'getPatchBaselineResponse_baselineId' - The ID of the retrieved patch baseline.
--
-- 'sources', 'getPatchBaselineResponse_sources' - Information about the patches to use to update the instances, including
-- target operating systems and source repositories. Applies to Linux
-- instances only.
--
-- 'rejectedPatches', 'getPatchBaselineResponse_rejectedPatches' - A list of explicitly rejected patches for the baseline.
--
-- 'approvedPatchesEnableNonSecurity', 'getPatchBaselineResponse_approvedPatchesEnableNonSecurity' - Indicates whether the list of approved patches includes non-security
-- updates that should be applied to the instances. The default value is
-- \'false\'. Applies to Linux instances only.
--
-- 'approvedPatchesComplianceLevel', 'getPatchBaselineResponse_approvedPatchesComplianceLevel' - Returns the specified compliance severity level for approved patches in
-- the patch baseline.
--
-- 'modifiedDate', 'getPatchBaselineResponse_modifiedDate' - The date the patch baseline was last modified.
--
-- 'patchGroups', 'getPatchBaselineResponse_patchGroups' - Patch groups included in the patch baseline.
--
-- 'name', 'getPatchBaselineResponse_name' - The name of the patch baseline.
--
-- 'description', 'getPatchBaselineResponse_description' - A description of the patch baseline.
--
-- 'approvedPatches', 'getPatchBaselineResponse_approvedPatches' - A list of explicitly approved patches for the baseline.
--
-- 'rejectedPatchesAction', 'getPatchBaselineResponse_rejectedPatchesAction' - The action specified to take on patches included in the RejectedPatches
-- list. A patch can be allowed only if it is a dependency of another
-- package, or blocked entirely along with packages that include it as a
-- dependency.
--
-- 'operatingSystem', 'getPatchBaselineResponse_operatingSystem' - Returns the operating system specified for the patch baseline.
--
-- 'globalFilters', 'getPatchBaselineResponse_globalFilters' - A set of global filters used to exclude patches from the baseline.
--
-- 'approvalRules', 'getPatchBaselineResponse_approvalRules' - A set of rules used to include patches in the baseline.
--
-- 'httpStatus', 'getPatchBaselineResponse_httpStatus' - The response's http status code.
newGetPatchBaselineResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetPatchBaselineResponse
newGetPatchBaselineResponse pHttpStatus_ =
  GetPatchBaselineResponse'
    { createdDate =
        Core.Nothing,
      baselineId = Core.Nothing,
      sources = Core.Nothing,
      rejectedPatches = Core.Nothing,
      approvedPatchesEnableNonSecurity = Core.Nothing,
      approvedPatchesComplianceLevel = Core.Nothing,
      modifiedDate = Core.Nothing,
      patchGroups = Core.Nothing,
      name = Core.Nothing,
      description = Core.Nothing,
      approvedPatches = Core.Nothing,
      rejectedPatchesAction = Core.Nothing,
      operatingSystem = Core.Nothing,
      globalFilters = Core.Nothing,
      approvalRules = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The date the patch baseline was created.
getPatchBaselineResponse_createdDate :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe Core.UTCTime)
getPatchBaselineResponse_createdDate = Lens.lens (\GetPatchBaselineResponse' {createdDate} -> createdDate) (\s@GetPatchBaselineResponse' {} a -> s {createdDate = a} :: GetPatchBaselineResponse) Core.. Lens.mapping Core._Time

-- | The ID of the retrieved patch baseline.
getPatchBaselineResponse_baselineId :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe Core.Text)
getPatchBaselineResponse_baselineId = Lens.lens (\GetPatchBaselineResponse' {baselineId} -> baselineId) (\s@GetPatchBaselineResponse' {} a -> s {baselineId = a} :: GetPatchBaselineResponse)

-- | Information about the patches to use to update the instances, including
-- target operating systems and source repositories. Applies to Linux
-- instances only.
getPatchBaselineResponse_sources :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe [PatchSource])
getPatchBaselineResponse_sources = Lens.lens (\GetPatchBaselineResponse' {sources} -> sources) (\s@GetPatchBaselineResponse' {} a -> s {sources = a} :: GetPatchBaselineResponse) Core.. Lens.mapping Lens._Coerce

-- | A list of explicitly rejected patches for the baseline.
getPatchBaselineResponse_rejectedPatches :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe [Core.Text])
getPatchBaselineResponse_rejectedPatches = Lens.lens (\GetPatchBaselineResponse' {rejectedPatches} -> rejectedPatches) (\s@GetPatchBaselineResponse' {} a -> s {rejectedPatches = a} :: GetPatchBaselineResponse) Core.. Lens.mapping Lens._Coerce

-- | Indicates whether the list of approved patches includes non-security
-- updates that should be applied to the instances. The default value is
-- \'false\'. Applies to Linux instances only.
getPatchBaselineResponse_approvedPatchesEnableNonSecurity :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe Core.Bool)
getPatchBaselineResponse_approvedPatchesEnableNonSecurity = Lens.lens (\GetPatchBaselineResponse' {approvedPatchesEnableNonSecurity} -> approvedPatchesEnableNonSecurity) (\s@GetPatchBaselineResponse' {} a -> s {approvedPatchesEnableNonSecurity = a} :: GetPatchBaselineResponse)

-- | Returns the specified compliance severity level for approved patches in
-- the patch baseline.
getPatchBaselineResponse_approvedPatchesComplianceLevel :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe PatchComplianceLevel)
getPatchBaselineResponse_approvedPatchesComplianceLevel = Lens.lens (\GetPatchBaselineResponse' {approvedPatchesComplianceLevel} -> approvedPatchesComplianceLevel) (\s@GetPatchBaselineResponse' {} a -> s {approvedPatchesComplianceLevel = a} :: GetPatchBaselineResponse)

-- | The date the patch baseline was last modified.
getPatchBaselineResponse_modifiedDate :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe Core.UTCTime)
getPatchBaselineResponse_modifiedDate = Lens.lens (\GetPatchBaselineResponse' {modifiedDate} -> modifiedDate) (\s@GetPatchBaselineResponse' {} a -> s {modifiedDate = a} :: GetPatchBaselineResponse) Core.. Lens.mapping Core._Time

-- | Patch groups included in the patch baseline.
getPatchBaselineResponse_patchGroups :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe [Core.Text])
getPatchBaselineResponse_patchGroups = Lens.lens (\GetPatchBaselineResponse' {patchGroups} -> patchGroups) (\s@GetPatchBaselineResponse' {} a -> s {patchGroups = a} :: GetPatchBaselineResponse) Core.. Lens.mapping Lens._Coerce

-- | The name of the patch baseline.
getPatchBaselineResponse_name :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe Core.Text)
getPatchBaselineResponse_name = Lens.lens (\GetPatchBaselineResponse' {name} -> name) (\s@GetPatchBaselineResponse' {} a -> s {name = a} :: GetPatchBaselineResponse)

-- | A description of the patch baseline.
getPatchBaselineResponse_description :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe Core.Text)
getPatchBaselineResponse_description = Lens.lens (\GetPatchBaselineResponse' {description} -> description) (\s@GetPatchBaselineResponse' {} a -> s {description = a} :: GetPatchBaselineResponse)

-- | A list of explicitly approved patches for the baseline.
getPatchBaselineResponse_approvedPatches :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe [Core.Text])
getPatchBaselineResponse_approvedPatches = Lens.lens (\GetPatchBaselineResponse' {approvedPatches} -> approvedPatches) (\s@GetPatchBaselineResponse' {} a -> s {approvedPatches = a} :: GetPatchBaselineResponse) Core.. Lens.mapping Lens._Coerce

-- | The action specified to take on patches included in the RejectedPatches
-- list. A patch can be allowed only if it is a dependency of another
-- package, or blocked entirely along with packages that include it as a
-- dependency.
getPatchBaselineResponse_rejectedPatchesAction :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe PatchAction)
getPatchBaselineResponse_rejectedPatchesAction = Lens.lens (\GetPatchBaselineResponse' {rejectedPatchesAction} -> rejectedPatchesAction) (\s@GetPatchBaselineResponse' {} a -> s {rejectedPatchesAction = a} :: GetPatchBaselineResponse)

-- | Returns the operating system specified for the patch baseline.
getPatchBaselineResponse_operatingSystem :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe OperatingSystem)
getPatchBaselineResponse_operatingSystem = Lens.lens (\GetPatchBaselineResponse' {operatingSystem} -> operatingSystem) (\s@GetPatchBaselineResponse' {} a -> s {operatingSystem = a} :: GetPatchBaselineResponse)

-- | A set of global filters used to exclude patches from the baseline.
getPatchBaselineResponse_globalFilters :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe PatchFilterGroup)
getPatchBaselineResponse_globalFilters = Lens.lens (\GetPatchBaselineResponse' {globalFilters} -> globalFilters) (\s@GetPatchBaselineResponse' {} a -> s {globalFilters = a} :: GetPatchBaselineResponse)

-- | A set of rules used to include patches in the baseline.
getPatchBaselineResponse_approvalRules :: Lens.Lens' GetPatchBaselineResponse (Core.Maybe PatchRuleGroup)
getPatchBaselineResponse_approvalRules = Lens.lens (\GetPatchBaselineResponse' {approvalRules} -> approvalRules) (\s@GetPatchBaselineResponse' {} a -> s {approvalRules = a} :: GetPatchBaselineResponse)

-- | The response's http status code.
getPatchBaselineResponse_httpStatus :: Lens.Lens' GetPatchBaselineResponse Core.Int
getPatchBaselineResponse_httpStatus = Lens.lens (\GetPatchBaselineResponse' {httpStatus} -> httpStatus) (\s@GetPatchBaselineResponse' {} a -> s {httpStatus = a} :: GetPatchBaselineResponse)

instance Core.NFData GetPatchBaselineResponse
