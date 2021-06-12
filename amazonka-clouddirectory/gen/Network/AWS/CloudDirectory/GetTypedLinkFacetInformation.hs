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
-- Module      : Network.AWS.CloudDirectory.GetTypedLinkFacetInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the identity attribute order for a specific TypedLinkFacet. For
-- more information, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
module Network.AWS.CloudDirectory.GetTypedLinkFacetInformation
  ( -- * Creating a Request
    GetTypedLinkFacetInformation (..),
    newGetTypedLinkFacetInformation,

    -- * Request Lenses
    getTypedLinkFacetInformation_schemaArn,
    getTypedLinkFacetInformation_name,

    -- * Destructuring the Response
    GetTypedLinkFacetInformationResponse (..),
    newGetTypedLinkFacetInformationResponse,

    -- * Response Lenses
    getTypedLinkFacetInformationResponse_identityAttributeOrder,
    getTypedLinkFacetInformationResponse_httpStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetTypedLinkFacetInformation' smart constructor.
data GetTypedLinkFacetInformation = GetTypedLinkFacetInformation'
  { -- | The Amazon Resource Name (ARN) that is associated with the schema. For
    -- more information, see arns.
    schemaArn :: Core.Text,
    -- | The unique name of the typed link facet.
    name :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetTypedLinkFacetInformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaArn', 'getTypedLinkFacetInformation_schemaArn' - The Amazon Resource Name (ARN) that is associated with the schema. For
-- more information, see arns.
--
-- 'name', 'getTypedLinkFacetInformation_name' - The unique name of the typed link facet.
newGetTypedLinkFacetInformation ::
  -- | 'schemaArn'
  Core.Text ->
  -- | 'name'
  Core.Text ->
  GetTypedLinkFacetInformation
newGetTypedLinkFacetInformation pSchemaArn_ pName_ =
  GetTypedLinkFacetInformation'
    { schemaArn =
        pSchemaArn_,
      name = pName_
    }

-- | The Amazon Resource Name (ARN) that is associated with the schema. For
-- more information, see arns.
getTypedLinkFacetInformation_schemaArn :: Lens.Lens' GetTypedLinkFacetInformation Core.Text
getTypedLinkFacetInformation_schemaArn = Lens.lens (\GetTypedLinkFacetInformation' {schemaArn} -> schemaArn) (\s@GetTypedLinkFacetInformation' {} a -> s {schemaArn = a} :: GetTypedLinkFacetInformation)

-- | The unique name of the typed link facet.
getTypedLinkFacetInformation_name :: Lens.Lens' GetTypedLinkFacetInformation Core.Text
getTypedLinkFacetInformation_name = Lens.lens (\GetTypedLinkFacetInformation' {name} -> name) (\s@GetTypedLinkFacetInformation' {} a -> s {name = a} :: GetTypedLinkFacetInformation)

instance Core.AWSRequest GetTypedLinkFacetInformation where
  type
    AWSResponse GetTypedLinkFacetInformation =
      GetTypedLinkFacetInformationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetTypedLinkFacetInformationResponse'
            Core.<$> ( x Core..?> "IdentityAttributeOrder"
                         Core..!@ Core.mempty
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetTypedLinkFacetInformation

instance Core.NFData GetTypedLinkFacetInformation

instance Core.ToHeaders GetTypedLinkFacetInformation where
  toHeaders GetTypedLinkFacetInformation' {..} =
    Core.mconcat
      ["x-amz-data-partition" Core.=# schemaArn]

instance Core.ToJSON GetTypedLinkFacetInformation where
  toJSON GetTypedLinkFacetInformation' {..} =
    Core.object
      (Core.catMaybes [Core.Just ("Name" Core..= name)])

instance Core.ToPath GetTypedLinkFacetInformation where
  toPath =
    Core.const
      "/amazonclouddirectory/2017-01-11/typedlink/facet/get"

instance Core.ToQuery GetTypedLinkFacetInformation where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetTypedLinkFacetInformationResponse' smart constructor.
data GetTypedLinkFacetInformationResponse = GetTypedLinkFacetInformationResponse'
  { -- | The order of identity attributes for the facet, from most significant to
    -- least significant. The ability to filter typed links considers the order
    -- that the attributes are defined on the typed link facet. When providing
    -- ranges to typed link selection, any inexact ranges must be specified at
    -- the end. Any attributes that do not have a range specified are presumed
    -- to match the entire range. Filters are interpreted in the order of the
    -- attributes on the typed link facet, not the order in which they are
    -- supplied to any API calls. For more information about identity
    -- attributes, see
    -- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
    identityAttributeOrder :: Core.Maybe [Core.Text],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetTypedLinkFacetInformationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identityAttributeOrder', 'getTypedLinkFacetInformationResponse_identityAttributeOrder' - The order of identity attributes for the facet, from most significant to
-- least significant. The ability to filter typed links considers the order
-- that the attributes are defined on the typed link facet. When providing
-- ranges to typed link selection, any inexact ranges must be specified at
-- the end. Any attributes that do not have a range specified are presumed
-- to match the entire range. Filters are interpreted in the order of the
-- attributes on the typed link facet, not the order in which they are
-- supplied to any API calls. For more information about identity
-- attributes, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
--
-- 'httpStatus', 'getTypedLinkFacetInformationResponse_httpStatus' - The response's http status code.
newGetTypedLinkFacetInformationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetTypedLinkFacetInformationResponse
newGetTypedLinkFacetInformationResponse pHttpStatus_ =
  GetTypedLinkFacetInformationResponse'
    { identityAttributeOrder =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The order of identity attributes for the facet, from most significant to
-- least significant. The ability to filter typed links considers the order
-- that the attributes are defined on the typed link facet. When providing
-- ranges to typed link selection, any inexact ranges must be specified at
-- the end. Any attributes that do not have a range specified are presumed
-- to match the entire range. Filters are interpreted in the order of the
-- attributes on the typed link facet, not the order in which they are
-- supplied to any API calls. For more information about identity
-- attributes, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
getTypedLinkFacetInformationResponse_identityAttributeOrder :: Lens.Lens' GetTypedLinkFacetInformationResponse (Core.Maybe [Core.Text])
getTypedLinkFacetInformationResponse_identityAttributeOrder = Lens.lens (\GetTypedLinkFacetInformationResponse' {identityAttributeOrder} -> identityAttributeOrder) (\s@GetTypedLinkFacetInformationResponse' {} a -> s {identityAttributeOrder = a} :: GetTypedLinkFacetInformationResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
getTypedLinkFacetInformationResponse_httpStatus :: Lens.Lens' GetTypedLinkFacetInformationResponse Core.Int
getTypedLinkFacetInformationResponse_httpStatus = Lens.lens (\GetTypedLinkFacetInformationResponse' {httpStatus} -> httpStatus) (\s@GetTypedLinkFacetInformationResponse' {} a -> s {httpStatus = a} :: GetTypedLinkFacetInformationResponse)

instance
  Core.NFData
    GetTypedLinkFacetInformationResponse
