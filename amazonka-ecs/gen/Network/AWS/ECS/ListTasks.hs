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
-- Module      : Network.AWS.ECS.ListTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of tasks for a specified cluster. You can filter the
-- results by family name, by a particular container instance, or by the
-- desired status of the task with the @family@, @containerInstance@, and
-- @desiredStatus@ parameters.
--
-- Recently stopped tasks might appear in the returned results. Currently,
-- stopped tasks appear in the returned results for at least one hour.
--
-- This operation returns paginated results.
module Network.AWS.ECS.ListTasks
  ( -- * Creating a Request
    ListTasks (..),
    newListTasks,

    -- * Request Lenses
    listTasks_nextToken,
    listTasks_maxResults,
    listTasks_launchType,
    listTasks_serviceName,
    listTasks_startedBy,
    listTasks_desiredStatus,
    listTasks_containerInstance,
    listTasks_family,
    listTasks_cluster,

    -- * Destructuring the Response
    ListTasksResponse (..),
    newListTasksResponse,

    -- * Response Lenses
    listTasksResponse_nextToken,
    listTasksResponse_taskArns,
    listTasksResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ECS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListTasks' smart constructor.
data ListTasks = ListTasks'
  { -- | The @nextToken@ value returned from a @ListTasks@ request indicating
    -- that more results are available to fulfill the request and further calls
    -- will be needed. If @maxResults@ was provided, it is possible the number
    -- of results to be fewer than @maxResults@.
    --
    -- This token should be treated as an opaque identifier that is only used
    -- to retrieve the next items in a list and not for other programmatic
    -- purposes.
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum number of task results returned by @ListTasks@ in paginated
    -- output. When this parameter is used, @ListTasks@ only returns
    -- @maxResults@ results in a single page along with a @nextToken@ response
    -- element. The remaining results of the initial request can be seen by
    -- sending another @ListTasks@ request with the returned @nextToken@ value.
    -- This value can be between 1 and 100. If this parameter is not used, then
    -- @ListTasks@ returns up to 100 results and a @nextToken@ value if
    -- applicable.
    maxResults :: Core.Maybe Core.Int,
    -- | The launch type for services to list.
    launchType :: Core.Maybe LaunchType,
    -- | The name of the service with which to filter the @ListTasks@ results.
    -- Specifying a @serviceName@ limits the results to tasks that belong to
    -- that service.
    serviceName :: Core.Maybe Core.Text,
    -- | The @startedBy@ value with which to filter the task results. Specifying
    -- a @startedBy@ value limits the results to tasks that were started with
    -- that value.
    startedBy :: Core.Maybe Core.Text,
    -- | The task desired status with which to filter the @ListTasks@ results.
    -- Specifying a @desiredStatus@ of @STOPPED@ limits the results to tasks
    -- that Amazon ECS has set the desired status to @STOPPED@. This can be
    -- useful for debugging tasks that are not starting properly or have died
    -- or finished. The default status filter is @RUNNING@, which shows tasks
    -- that Amazon ECS has set the desired status to @RUNNING@.
    --
    -- Although you can filter results based on a desired status of @PENDING@,
    -- this does not return any results. Amazon ECS never sets the desired
    -- status of a task to that value (only a task\'s @lastStatus@ may have a
    -- value of @PENDING@).
    desiredStatus :: Core.Maybe DesiredStatus,
    -- | The container instance ID or full ARN of the container instance with
    -- which to filter the @ListTasks@ results. Specifying a
    -- @containerInstance@ limits the results to tasks that belong to that
    -- container instance.
    containerInstance :: Core.Maybe Core.Text,
    -- | The name of the family with which to filter the @ListTasks@ results.
    -- Specifying a @family@ limits the results to tasks that belong to that
    -- family.
    family :: Core.Maybe Core.Text,
    -- | The short name or full Amazon Resource Name (ARN) of the cluster that
    -- hosts the tasks to list. If you do not specify a cluster, the default
    -- cluster is assumed.
    cluster :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListTasks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTasks_nextToken' - The @nextToken@ value returned from a @ListTasks@ request indicating
-- that more results are available to fulfill the request and further calls
-- will be needed. If @maxResults@ was provided, it is possible the number
-- of results to be fewer than @maxResults@.
--
-- This token should be treated as an opaque identifier that is only used
-- to retrieve the next items in a list and not for other programmatic
-- purposes.
--
-- 'maxResults', 'listTasks_maxResults' - The maximum number of task results returned by @ListTasks@ in paginated
-- output. When this parameter is used, @ListTasks@ only returns
-- @maxResults@ results in a single page along with a @nextToken@ response
-- element. The remaining results of the initial request can be seen by
-- sending another @ListTasks@ request with the returned @nextToken@ value.
-- This value can be between 1 and 100. If this parameter is not used, then
-- @ListTasks@ returns up to 100 results and a @nextToken@ value if
-- applicable.
--
-- 'launchType', 'listTasks_launchType' - The launch type for services to list.
--
-- 'serviceName', 'listTasks_serviceName' - The name of the service with which to filter the @ListTasks@ results.
-- Specifying a @serviceName@ limits the results to tasks that belong to
-- that service.
--
-- 'startedBy', 'listTasks_startedBy' - The @startedBy@ value with which to filter the task results. Specifying
-- a @startedBy@ value limits the results to tasks that were started with
-- that value.
--
-- 'desiredStatus', 'listTasks_desiredStatus' - The task desired status with which to filter the @ListTasks@ results.
-- Specifying a @desiredStatus@ of @STOPPED@ limits the results to tasks
-- that Amazon ECS has set the desired status to @STOPPED@. This can be
-- useful for debugging tasks that are not starting properly or have died
-- or finished. The default status filter is @RUNNING@, which shows tasks
-- that Amazon ECS has set the desired status to @RUNNING@.
--
-- Although you can filter results based on a desired status of @PENDING@,
-- this does not return any results. Amazon ECS never sets the desired
-- status of a task to that value (only a task\'s @lastStatus@ may have a
-- value of @PENDING@).
--
-- 'containerInstance', 'listTasks_containerInstance' - The container instance ID or full ARN of the container instance with
-- which to filter the @ListTasks@ results. Specifying a
-- @containerInstance@ limits the results to tasks that belong to that
-- container instance.
--
-- 'family', 'listTasks_family' - The name of the family with which to filter the @ListTasks@ results.
-- Specifying a @family@ limits the results to tasks that belong to that
-- family.
--
-- 'cluster', 'listTasks_cluster' - The short name or full Amazon Resource Name (ARN) of the cluster that
-- hosts the tasks to list. If you do not specify a cluster, the default
-- cluster is assumed.
newListTasks ::
  ListTasks
newListTasks =
  ListTasks'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      launchType = Core.Nothing,
      serviceName = Core.Nothing,
      startedBy = Core.Nothing,
      desiredStatus = Core.Nothing,
      containerInstance = Core.Nothing,
      family = Core.Nothing,
      cluster = Core.Nothing
    }

-- | The @nextToken@ value returned from a @ListTasks@ request indicating
-- that more results are available to fulfill the request and further calls
-- will be needed. If @maxResults@ was provided, it is possible the number
-- of results to be fewer than @maxResults@.
--
-- This token should be treated as an opaque identifier that is only used
-- to retrieve the next items in a list and not for other programmatic
-- purposes.
listTasks_nextToken :: Lens.Lens' ListTasks (Core.Maybe Core.Text)
listTasks_nextToken = Lens.lens (\ListTasks' {nextToken} -> nextToken) (\s@ListTasks' {} a -> s {nextToken = a} :: ListTasks)

-- | The maximum number of task results returned by @ListTasks@ in paginated
-- output. When this parameter is used, @ListTasks@ only returns
-- @maxResults@ results in a single page along with a @nextToken@ response
-- element. The remaining results of the initial request can be seen by
-- sending another @ListTasks@ request with the returned @nextToken@ value.
-- This value can be between 1 and 100. If this parameter is not used, then
-- @ListTasks@ returns up to 100 results and a @nextToken@ value if
-- applicable.
listTasks_maxResults :: Lens.Lens' ListTasks (Core.Maybe Core.Int)
listTasks_maxResults = Lens.lens (\ListTasks' {maxResults} -> maxResults) (\s@ListTasks' {} a -> s {maxResults = a} :: ListTasks)

-- | The launch type for services to list.
listTasks_launchType :: Lens.Lens' ListTasks (Core.Maybe LaunchType)
listTasks_launchType = Lens.lens (\ListTasks' {launchType} -> launchType) (\s@ListTasks' {} a -> s {launchType = a} :: ListTasks)

-- | The name of the service with which to filter the @ListTasks@ results.
-- Specifying a @serviceName@ limits the results to tasks that belong to
-- that service.
listTasks_serviceName :: Lens.Lens' ListTasks (Core.Maybe Core.Text)
listTasks_serviceName = Lens.lens (\ListTasks' {serviceName} -> serviceName) (\s@ListTasks' {} a -> s {serviceName = a} :: ListTasks)

-- | The @startedBy@ value with which to filter the task results. Specifying
-- a @startedBy@ value limits the results to tasks that were started with
-- that value.
listTasks_startedBy :: Lens.Lens' ListTasks (Core.Maybe Core.Text)
listTasks_startedBy = Lens.lens (\ListTasks' {startedBy} -> startedBy) (\s@ListTasks' {} a -> s {startedBy = a} :: ListTasks)

-- | The task desired status with which to filter the @ListTasks@ results.
-- Specifying a @desiredStatus@ of @STOPPED@ limits the results to tasks
-- that Amazon ECS has set the desired status to @STOPPED@. This can be
-- useful for debugging tasks that are not starting properly or have died
-- or finished. The default status filter is @RUNNING@, which shows tasks
-- that Amazon ECS has set the desired status to @RUNNING@.
--
-- Although you can filter results based on a desired status of @PENDING@,
-- this does not return any results. Amazon ECS never sets the desired
-- status of a task to that value (only a task\'s @lastStatus@ may have a
-- value of @PENDING@).
listTasks_desiredStatus :: Lens.Lens' ListTasks (Core.Maybe DesiredStatus)
listTasks_desiredStatus = Lens.lens (\ListTasks' {desiredStatus} -> desiredStatus) (\s@ListTasks' {} a -> s {desiredStatus = a} :: ListTasks)

-- | The container instance ID or full ARN of the container instance with
-- which to filter the @ListTasks@ results. Specifying a
-- @containerInstance@ limits the results to tasks that belong to that
-- container instance.
listTasks_containerInstance :: Lens.Lens' ListTasks (Core.Maybe Core.Text)
listTasks_containerInstance = Lens.lens (\ListTasks' {containerInstance} -> containerInstance) (\s@ListTasks' {} a -> s {containerInstance = a} :: ListTasks)

-- | The name of the family with which to filter the @ListTasks@ results.
-- Specifying a @family@ limits the results to tasks that belong to that
-- family.
listTasks_family :: Lens.Lens' ListTasks (Core.Maybe Core.Text)
listTasks_family = Lens.lens (\ListTasks' {family} -> family) (\s@ListTasks' {} a -> s {family = a} :: ListTasks)

-- | The short name or full Amazon Resource Name (ARN) of the cluster that
-- hosts the tasks to list. If you do not specify a cluster, the default
-- cluster is assumed.
listTasks_cluster :: Lens.Lens' ListTasks (Core.Maybe Core.Text)
listTasks_cluster = Lens.lens (\ListTasks' {cluster} -> cluster) (\s@ListTasks' {} a -> s {cluster = a} :: ListTasks)

instance Core.AWSPager ListTasks where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listTasksResponse_nextToken Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listTasksResponse_taskArns Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listTasks_nextToken
          Lens..~ rs
          Lens.^? listTasksResponse_nextToken Core.. Lens._Just

instance Core.AWSRequest ListTasks where
  type AWSResponse ListTasks = ListTasksResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTasksResponse'
            Core.<$> (x Core..?> "nextToken")
            Core.<*> (x Core..?> "taskArns" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListTasks

instance Core.NFData ListTasks

instance Core.ToHeaders ListTasks where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonEC2ContainerServiceV20141113.ListTasks" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListTasks where
  toJSON ListTasks' {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextToken" Core..=) Core.<$> nextToken,
            ("maxResults" Core..=) Core.<$> maxResults,
            ("launchType" Core..=) Core.<$> launchType,
            ("serviceName" Core..=) Core.<$> serviceName,
            ("startedBy" Core..=) Core.<$> startedBy,
            ("desiredStatus" Core..=) Core.<$> desiredStatus,
            ("containerInstance" Core..=)
              Core.<$> containerInstance,
            ("family" Core..=) Core.<$> family,
            ("cluster" Core..=) Core.<$> cluster
          ]
      )

instance Core.ToPath ListTasks where
  toPath = Core.const "/"

instance Core.ToQuery ListTasks where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListTasksResponse' smart constructor.
data ListTasksResponse = ListTasksResponse'
  { -- | The @nextToken@ value to include in a future @ListTasks@ request. When
    -- the results of a @ListTasks@ request exceed @maxResults@, this value can
    -- be used to retrieve the next page of results. This value is @null@ when
    -- there are no more results to return.
    nextToken :: Core.Maybe Core.Text,
    -- | The list of task ARN entries for the @ListTasks@ request.
    taskArns :: Core.Maybe [Core.Text],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListTasksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTasksResponse_nextToken' - The @nextToken@ value to include in a future @ListTasks@ request. When
-- the results of a @ListTasks@ request exceed @maxResults@, this value can
-- be used to retrieve the next page of results. This value is @null@ when
-- there are no more results to return.
--
-- 'taskArns', 'listTasksResponse_taskArns' - The list of task ARN entries for the @ListTasks@ request.
--
-- 'httpStatus', 'listTasksResponse_httpStatus' - The response's http status code.
newListTasksResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListTasksResponse
newListTasksResponse pHttpStatus_ =
  ListTasksResponse'
    { nextToken = Core.Nothing,
      taskArns = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The @nextToken@ value to include in a future @ListTasks@ request. When
-- the results of a @ListTasks@ request exceed @maxResults@, this value can
-- be used to retrieve the next page of results. This value is @null@ when
-- there are no more results to return.
listTasksResponse_nextToken :: Lens.Lens' ListTasksResponse (Core.Maybe Core.Text)
listTasksResponse_nextToken = Lens.lens (\ListTasksResponse' {nextToken} -> nextToken) (\s@ListTasksResponse' {} a -> s {nextToken = a} :: ListTasksResponse)

-- | The list of task ARN entries for the @ListTasks@ request.
listTasksResponse_taskArns :: Lens.Lens' ListTasksResponse (Core.Maybe [Core.Text])
listTasksResponse_taskArns = Lens.lens (\ListTasksResponse' {taskArns} -> taskArns) (\s@ListTasksResponse' {} a -> s {taskArns = a} :: ListTasksResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listTasksResponse_httpStatus :: Lens.Lens' ListTasksResponse Core.Int
listTasksResponse_httpStatus = Lens.lens (\ListTasksResponse' {httpStatus} -> httpStatus) (\s@ListTasksResponse' {} a -> s {httpStatus = a} :: ListTasksResponse)

instance Core.NFData ListTasksResponse
