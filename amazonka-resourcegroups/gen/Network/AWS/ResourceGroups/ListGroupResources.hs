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
-- Module      : Network.AWS.ResourceGroups.ListGroupResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of ARNs of the resources that are members of a specified
-- resource group.
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
-- -   @resource-groups:ListGroupResources@
--
-- This operation returns paginated results.
module Network.AWS.ResourceGroups.ListGroupResources
  ( -- * Creating a Request
    ListGroupResources (..),
    newListGroupResources,

    -- * Request Lenses
    listGroupResources_nextToken,
    listGroupResources_maxResults,
    listGroupResources_groupName,
    listGroupResources_group,
    listGroupResources_filters,

    -- * Destructuring the Response
    ListGroupResourcesResponse (..),
    newListGroupResourcesResponse,

    -- * Response Lenses
    listGroupResourcesResponse_nextToken,
    listGroupResourcesResponse_resourceIdentifiers,
    listGroupResourcesResponse_resources,
    listGroupResourcesResponse_queryErrors,
    listGroupResourcesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import Network.AWS.ResourceGroups.Types
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListGroupResources' smart constructor.
data ListGroupResources = ListGroupResources'
  { -- | The parameter for receiving additional results if you receive a
    -- @NextToken@ response in a previous request. A @NextToken@ response
    -- indicates that more output is available. Set this parameter to the value
    -- provided by a previous call\'s @NextToken@ response to indicate where
    -- the output should continue from.
    nextToken :: Core.Maybe Core.Text,
    -- | The total number of results that you want included on each page of the
    -- response. If you do not include this parameter, it defaults to a value
    -- that is specific to the operation. If additional items exist beyond the
    -- maximum you specify, the @NextToken@ response element is present and has
    -- a value (is not null). Include that value as the @NextToken@ request
    -- parameter in the next call to the operation to get the next part of the
    -- results. Note that the service might return fewer results than the
    -- maximum even when there are more results available. You should check
    -- @NextToken@ after every operation to ensure that you receive all of the
    -- results.
    maxResults :: Core.Maybe Core.Natural,
    -- | /__Deprecated - don\'t use this parameter. Use the @Group@ request field
    -- instead.__/
    groupName :: Core.Maybe Core.Text,
    -- | The name or the ARN of the resource group
    group' :: Core.Maybe Core.Text,
    -- | Filters, formatted as ResourceFilter objects, that you want to apply to
    -- a @ListGroupResources@ operation. Filters the results to include only
    -- those of the specified resource types.
    --
    -- -   @resource-type@ - Filter resources by their type. Specify up to five
    --     resource types in the format @AWS::ServiceCode::ResourceType@. For
    --     example, @AWS::EC2::Instance@, or @AWS::S3::Bucket@.
    --
    -- When you specify a @resource-type@ filter for @ListGroupResources@, AWS
    -- Resource Groups validates your filter resource types against the types
    -- that are defined in the query associated with the group. For example, if
    -- a group contains only S3 buckets because its query specifies only that
    -- resource type, but your @resource-type@ filter includes EC2 instances,
    -- AWS Resource Groups does not filter for EC2 instances. In this case, a
    -- @ListGroupResources@ request returns a @BadRequestException@ error with
    -- a message similar to the following:
    --
    -- @The resource types specified as filters in the request are not valid.@
    --
    -- The error includes a list of resource types that failed the validation
    -- because they are not part of the query associated with the group. This
    -- validation doesn\'t occur when the group query specifies
    -- @AWS::AllSupported@, because a group based on such a query can contain
    -- any of the allowed resource types for the query type (tag-based or AWS
    -- CloudFormation stack-based queries).
    filters :: Core.Maybe [ResourceFilter]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListGroupResources' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGroupResources_nextToken' - The parameter for receiving additional results if you receive a
-- @NextToken@ response in a previous request. A @NextToken@ response
-- indicates that more output is available. Set this parameter to the value
-- provided by a previous call\'s @NextToken@ response to indicate where
-- the output should continue from.
--
-- 'maxResults', 'listGroupResources_maxResults' - The total number of results that you want included on each page of the
-- response. If you do not include this parameter, it defaults to a value
-- that is specific to the operation. If additional items exist beyond the
-- maximum you specify, the @NextToken@ response element is present and has
-- a value (is not null). Include that value as the @NextToken@ request
-- parameter in the next call to the operation to get the next part of the
-- results. Note that the service might return fewer results than the
-- maximum even when there are more results available. You should check
-- @NextToken@ after every operation to ensure that you receive all of the
-- results.
--
-- 'groupName', 'listGroupResources_groupName' - /__Deprecated - don\'t use this parameter. Use the @Group@ request field
-- instead.__/
--
-- 'group'', 'listGroupResources_group' - The name or the ARN of the resource group
--
-- 'filters', 'listGroupResources_filters' - Filters, formatted as ResourceFilter objects, that you want to apply to
-- a @ListGroupResources@ operation. Filters the results to include only
-- those of the specified resource types.
--
-- -   @resource-type@ - Filter resources by their type. Specify up to five
--     resource types in the format @AWS::ServiceCode::ResourceType@. For
--     example, @AWS::EC2::Instance@, or @AWS::S3::Bucket@.
--
-- When you specify a @resource-type@ filter for @ListGroupResources@, AWS
-- Resource Groups validates your filter resource types against the types
-- that are defined in the query associated with the group. For example, if
-- a group contains only S3 buckets because its query specifies only that
-- resource type, but your @resource-type@ filter includes EC2 instances,
-- AWS Resource Groups does not filter for EC2 instances. In this case, a
-- @ListGroupResources@ request returns a @BadRequestException@ error with
-- a message similar to the following:
--
-- @The resource types specified as filters in the request are not valid.@
--
-- The error includes a list of resource types that failed the validation
-- because they are not part of the query associated with the group. This
-- validation doesn\'t occur when the group query specifies
-- @AWS::AllSupported@, because a group based on such a query can contain
-- any of the allowed resource types for the query type (tag-based or AWS
-- CloudFormation stack-based queries).
newListGroupResources ::
  ListGroupResources
newListGroupResources =
  ListGroupResources'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      groupName = Core.Nothing,
      group' = Core.Nothing,
      filters = Core.Nothing
    }

-- | The parameter for receiving additional results if you receive a
-- @NextToken@ response in a previous request. A @NextToken@ response
-- indicates that more output is available. Set this parameter to the value
-- provided by a previous call\'s @NextToken@ response to indicate where
-- the output should continue from.
listGroupResources_nextToken :: Lens.Lens' ListGroupResources (Core.Maybe Core.Text)
listGroupResources_nextToken = Lens.lens (\ListGroupResources' {nextToken} -> nextToken) (\s@ListGroupResources' {} a -> s {nextToken = a} :: ListGroupResources)

-- | The total number of results that you want included on each page of the
-- response. If you do not include this parameter, it defaults to a value
-- that is specific to the operation. If additional items exist beyond the
-- maximum you specify, the @NextToken@ response element is present and has
-- a value (is not null). Include that value as the @NextToken@ request
-- parameter in the next call to the operation to get the next part of the
-- results. Note that the service might return fewer results than the
-- maximum even when there are more results available. You should check
-- @NextToken@ after every operation to ensure that you receive all of the
-- results.
listGroupResources_maxResults :: Lens.Lens' ListGroupResources (Core.Maybe Core.Natural)
listGroupResources_maxResults = Lens.lens (\ListGroupResources' {maxResults} -> maxResults) (\s@ListGroupResources' {} a -> s {maxResults = a} :: ListGroupResources)

-- | /__Deprecated - don\'t use this parameter. Use the @Group@ request field
-- instead.__/
listGroupResources_groupName :: Lens.Lens' ListGroupResources (Core.Maybe Core.Text)
listGroupResources_groupName = Lens.lens (\ListGroupResources' {groupName} -> groupName) (\s@ListGroupResources' {} a -> s {groupName = a} :: ListGroupResources)

-- | The name or the ARN of the resource group
listGroupResources_group :: Lens.Lens' ListGroupResources (Core.Maybe Core.Text)
listGroupResources_group = Lens.lens (\ListGroupResources' {group'} -> group') (\s@ListGroupResources' {} a -> s {group' = a} :: ListGroupResources)

-- | Filters, formatted as ResourceFilter objects, that you want to apply to
-- a @ListGroupResources@ operation. Filters the results to include only
-- those of the specified resource types.
--
-- -   @resource-type@ - Filter resources by their type. Specify up to five
--     resource types in the format @AWS::ServiceCode::ResourceType@. For
--     example, @AWS::EC2::Instance@, or @AWS::S3::Bucket@.
--
-- When you specify a @resource-type@ filter for @ListGroupResources@, AWS
-- Resource Groups validates your filter resource types against the types
-- that are defined in the query associated with the group. For example, if
-- a group contains only S3 buckets because its query specifies only that
-- resource type, but your @resource-type@ filter includes EC2 instances,
-- AWS Resource Groups does not filter for EC2 instances. In this case, a
-- @ListGroupResources@ request returns a @BadRequestException@ error with
-- a message similar to the following:
--
-- @The resource types specified as filters in the request are not valid.@
--
-- The error includes a list of resource types that failed the validation
-- because they are not part of the query associated with the group. This
-- validation doesn\'t occur when the group query specifies
-- @AWS::AllSupported@, because a group based on such a query can contain
-- any of the allowed resource types for the query type (tag-based or AWS
-- CloudFormation stack-based queries).
listGroupResources_filters :: Lens.Lens' ListGroupResources (Core.Maybe [ResourceFilter])
listGroupResources_filters = Lens.lens (\ListGroupResources' {filters} -> filters) (\s@ListGroupResources' {} a -> s {filters = a} :: ListGroupResources) Core.. Lens.mapping Lens._Coerce

instance Core.AWSPager ListGroupResources where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listGroupResourcesResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listGroupResourcesResponse_resourceIdentifiers
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listGroupResourcesResponse_resources
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listGroupResources_nextToken
          Lens..~ rs
          Lens.^? listGroupResourcesResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest ListGroupResources where
  type
    AWSResponse ListGroupResources =
      ListGroupResourcesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGroupResourcesResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> ( x Core..?> "ResourceIdentifiers"
                         Core..!@ Core.mempty
                     )
            Core.<*> (x Core..?> "Resources" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "QueryErrors" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListGroupResources

instance Core.NFData ListGroupResources

instance Core.ToHeaders ListGroupResources where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON ListGroupResources where
  toJSON ListGroupResources' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("GroupName" Core..=) Core.<$> groupName,
            ("Group" Core..=) Core.<$> group',
            ("Filters" Core..=) Core.<$> filters
          ]
      )

instance Core.ToPath ListGroupResources where
  toPath = Core.const "/list-group-resources"

instance Core.ToQuery ListGroupResources where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListGroupResourcesResponse' smart constructor.
data ListGroupResourcesResponse = ListGroupResourcesResponse'
  { -- | If present, indicates that more output is available than is included in
    -- the current response. Use this value in the @NextToken@ request
    -- parameter in a subsequent call to the operation to get the next part of
    -- the output. You should repeat this until the @NextToken@ response
    -- element comes back as @null@.
    nextToken :: Core.Maybe Core.Text,
    -- | __/Deprecated - don\'t use this parameter. Use the @Resources@ response
    -- field instead./__
    resourceIdentifiers :: Core.Maybe [ResourceIdentifier],
    -- | An array of resources from which you can determine each resource\'s
    -- identity, type, and group membership status.
    resources :: Core.Maybe [ListGroupResourcesItem],
    -- | A list of @QueryError@ objects. Each error is an object that contains
    -- @ErrorCode@ and @Message@ structures. Possible values for @ErrorCode@
    -- are @CLOUDFORMATION_STACK_INACTIVE@ and
    -- @CLOUDFORMATION_STACK_NOT_EXISTING@.
    queryErrors :: Core.Maybe [QueryError],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListGroupResourcesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGroupResourcesResponse_nextToken' - If present, indicates that more output is available than is included in
-- the current response. Use this value in the @NextToken@ request
-- parameter in a subsequent call to the operation to get the next part of
-- the output. You should repeat this until the @NextToken@ response
-- element comes back as @null@.
--
-- 'resourceIdentifiers', 'listGroupResourcesResponse_resourceIdentifiers' - __/Deprecated - don\'t use this parameter. Use the @Resources@ response
-- field instead./__
--
-- 'resources', 'listGroupResourcesResponse_resources' - An array of resources from which you can determine each resource\'s
-- identity, type, and group membership status.
--
-- 'queryErrors', 'listGroupResourcesResponse_queryErrors' - A list of @QueryError@ objects. Each error is an object that contains
-- @ErrorCode@ and @Message@ structures. Possible values for @ErrorCode@
-- are @CLOUDFORMATION_STACK_INACTIVE@ and
-- @CLOUDFORMATION_STACK_NOT_EXISTING@.
--
-- 'httpStatus', 'listGroupResourcesResponse_httpStatus' - The response's http status code.
newListGroupResourcesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListGroupResourcesResponse
newListGroupResourcesResponse pHttpStatus_ =
  ListGroupResourcesResponse'
    { nextToken =
        Core.Nothing,
      resourceIdentifiers = Core.Nothing,
      resources = Core.Nothing,
      queryErrors = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If present, indicates that more output is available than is included in
-- the current response. Use this value in the @NextToken@ request
-- parameter in a subsequent call to the operation to get the next part of
-- the output. You should repeat this until the @NextToken@ response
-- element comes back as @null@.
listGroupResourcesResponse_nextToken :: Lens.Lens' ListGroupResourcesResponse (Core.Maybe Core.Text)
listGroupResourcesResponse_nextToken = Lens.lens (\ListGroupResourcesResponse' {nextToken} -> nextToken) (\s@ListGroupResourcesResponse' {} a -> s {nextToken = a} :: ListGroupResourcesResponse)

-- | __/Deprecated - don\'t use this parameter. Use the @Resources@ response
-- field instead./__
listGroupResourcesResponse_resourceIdentifiers :: Lens.Lens' ListGroupResourcesResponse (Core.Maybe [ResourceIdentifier])
listGroupResourcesResponse_resourceIdentifiers = Lens.lens (\ListGroupResourcesResponse' {resourceIdentifiers} -> resourceIdentifiers) (\s@ListGroupResourcesResponse' {} a -> s {resourceIdentifiers = a} :: ListGroupResourcesResponse) Core.. Lens.mapping Lens._Coerce

-- | An array of resources from which you can determine each resource\'s
-- identity, type, and group membership status.
listGroupResourcesResponse_resources :: Lens.Lens' ListGroupResourcesResponse (Core.Maybe [ListGroupResourcesItem])
listGroupResourcesResponse_resources = Lens.lens (\ListGroupResourcesResponse' {resources} -> resources) (\s@ListGroupResourcesResponse' {} a -> s {resources = a} :: ListGroupResourcesResponse) Core.. Lens.mapping Lens._Coerce

-- | A list of @QueryError@ objects. Each error is an object that contains
-- @ErrorCode@ and @Message@ structures. Possible values for @ErrorCode@
-- are @CLOUDFORMATION_STACK_INACTIVE@ and
-- @CLOUDFORMATION_STACK_NOT_EXISTING@.
listGroupResourcesResponse_queryErrors :: Lens.Lens' ListGroupResourcesResponse (Core.Maybe [QueryError])
listGroupResourcesResponse_queryErrors = Lens.lens (\ListGroupResourcesResponse' {queryErrors} -> queryErrors) (\s@ListGroupResourcesResponse' {} a -> s {queryErrors = a} :: ListGroupResourcesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listGroupResourcesResponse_httpStatus :: Lens.Lens' ListGroupResourcesResponse Core.Int
listGroupResourcesResponse_httpStatus = Lens.lens (\ListGroupResourcesResponse' {httpStatus} -> httpStatus) (\s@ListGroupResourcesResponse' {} a -> s {httpStatus = a} :: ListGroupResourcesResponse)

instance Core.NFData ListGroupResourcesResponse
