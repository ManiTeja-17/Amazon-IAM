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
-- Module      : Network.AWS.Lightsail.CreateInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more Amazon Lightsail instances.
--
-- The @create instances@ operation supports tag-based access control via
-- request tags. For more information, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide>.
module Network.AWS.Lightsail.CreateInstances
  ( -- * Creating a Request
    CreateInstances (..),
    newCreateInstances,

    -- * Request Lenses
    createInstances_ipAddressType,
    createInstances_userData,
    createInstances_addOns,
    createInstances_keyPairName,
    createInstances_tags,
    createInstances_customImageName,
    createInstances_instanceNames,
    createInstances_availabilityZone,
    createInstances_blueprintId,
    createInstances_bundleId,

    -- * Destructuring the Response
    CreateInstancesResponse (..),
    newCreateInstancesResponse,

    -- * Response Lenses
    createInstancesResponse_operations,
    createInstancesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateInstances' smart constructor.
data CreateInstances = CreateInstances'
  { -- | The IP address type for the instance.
    --
    -- The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4
    -- and IPv6.
    --
    -- The default value is @dualstack@.
    ipAddressType :: Core.Maybe IpAddressType,
    -- | A launch script you can create that configures a server with additional
    -- user data. For example, you might want to run @apt-get -y update@.
    --
    -- Depending on the machine image you choose, the command to get software
    -- on your instance varies. Amazon Linux and CentOS use @yum@, Debian and
    -- Ubuntu use @apt-get@, and FreeBSD uses @pkg@. For a complete list, see
    -- the
    -- <https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image Dev Guide>.
    userData :: Core.Maybe Core.Text,
    -- | An array of objects representing the add-ons to enable for the new
    -- instance.
    addOns :: Core.Maybe [AddOnRequest],
    -- | The name of your key pair.
    keyPairName :: Core.Maybe Core.Text,
    -- | The tag keys and optional values to add to the resource during create.
    --
    -- Use the @TagResource@ action to tag a resource after it\'s created.
    tags :: Core.Maybe [Tag],
    -- | (Deprecated) The name for your custom image.
    --
    -- In releases prior to June 12, 2017, this parameter was ignored by the
    -- API. It is now deprecated.
    customImageName :: Core.Maybe Core.Text,
    -- | The names to use for your new Lightsail instances. Separate multiple
    -- values using quotation marks and commas, for example:
    -- @[\"MyFirstInstance\",\"MySecondInstance\"]@
    instanceNames :: [Core.Text],
    -- | The Availability Zone in which to create your instance. Use the
    -- following format: @us-east-2a@ (case sensitive). You can get a list of
    -- Availability Zones by using the
    -- <http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html get regions>
    -- operation. Be sure to add the @include Availability Zones@ parameter to
    -- your request.
    availabilityZone :: Core.Text,
    -- | The ID for a virtual private server image (e.g., @app_wordpress_4_4@ or
    -- @app_lamp_7_0@). Use the @get blueprints@ operation to return a list of
    -- available images (or /blueprints/).
    --
    -- Use active blueprints when creating new instances. Inactive blueprints
    -- are listed to support customers with existing instances and are not
    -- necessarily available to create new instances. Blueprints are marked
    -- inactive when they become outdated due to operating system updates or
    -- new application releases.
    blueprintId :: Core.Text,
    -- | The bundle of specification information for your virtual private server
    -- (or /instance/), including the pricing plan (e.g., @micro_1_0@).
    bundleId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ipAddressType', 'createInstances_ipAddressType' - The IP address type for the instance.
--
-- The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4
-- and IPv6.
--
-- The default value is @dualstack@.
--
-- 'userData', 'createInstances_userData' - A launch script you can create that configures a server with additional
-- user data. For example, you might want to run @apt-get -y update@.
--
-- Depending on the machine image you choose, the command to get software
-- on your instance varies. Amazon Linux and CentOS use @yum@, Debian and
-- Ubuntu use @apt-get@, and FreeBSD uses @pkg@. For a complete list, see
-- the
-- <https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image Dev Guide>.
--
-- 'addOns', 'createInstances_addOns' - An array of objects representing the add-ons to enable for the new
-- instance.
--
-- 'keyPairName', 'createInstances_keyPairName' - The name of your key pair.
--
-- 'tags', 'createInstances_tags' - The tag keys and optional values to add to the resource during create.
--
-- Use the @TagResource@ action to tag a resource after it\'s created.
--
-- 'customImageName', 'createInstances_customImageName' - (Deprecated) The name for your custom image.
--
-- In releases prior to June 12, 2017, this parameter was ignored by the
-- API. It is now deprecated.
--
-- 'instanceNames', 'createInstances_instanceNames' - The names to use for your new Lightsail instances. Separate multiple
-- values using quotation marks and commas, for example:
-- @[\"MyFirstInstance\",\"MySecondInstance\"]@
--
-- 'availabilityZone', 'createInstances_availabilityZone' - The Availability Zone in which to create your instance. Use the
-- following format: @us-east-2a@ (case sensitive). You can get a list of
-- Availability Zones by using the
-- <http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html get regions>
-- operation. Be sure to add the @include Availability Zones@ parameter to
-- your request.
--
-- 'blueprintId', 'createInstances_blueprintId' - The ID for a virtual private server image (e.g., @app_wordpress_4_4@ or
-- @app_lamp_7_0@). Use the @get blueprints@ operation to return a list of
-- available images (or /blueprints/).
--
-- Use active blueprints when creating new instances. Inactive blueprints
-- are listed to support customers with existing instances and are not
-- necessarily available to create new instances. Blueprints are marked
-- inactive when they become outdated due to operating system updates or
-- new application releases.
--
-- 'bundleId', 'createInstances_bundleId' - The bundle of specification information for your virtual private server
-- (or /instance/), including the pricing plan (e.g., @micro_1_0@).
newCreateInstances ::
  -- | 'availabilityZone'
  Core.Text ->
  -- | 'blueprintId'
  Core.Text ->
  -- | 'bundleId'
  Core.Text ->
  CreateInstances
newCreateInstances
  pAvailabilityZone_
  pBlueprintId_
  pBundleId_ =
    CreateInstances'
      { ipAddressType = Core.Nothing,
        userData = Core.Nothing,
        addOns = Core.Nothing,
        keyPairName = Core.Nothing,
        tags = Core.Nothing,
        customImageName = Core.Nothing,
        instanceNames = Core.mempty,
        availabilityZone = pAvailabilityZone_,
        blueprintId = pBlueprintId_,
        bundleId = pBundleId_
      }

-- | The IP address type for the instance.
--
-- The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4
-- and IPv6.
--
-- The default value is @dualstack@.
createInstances_ipAddressType :: Lens.Lens' CreateInstances (Core.Maybe IpAddressType)
createInstances_ipAddressType = Lens.lens (\CreateInstances' {ipAddressType} -> ipAddressType) (\s@CreateInstances' {} a -> s {ipAddressType = a} :: CreateInstances)

-- | A launch script you can create that configures a server with additional
-- user data. For example, you might want to run @apt-get -y update@.
--
-- Depending on the machine image you choose, the command to get software
-- on your instance varies. Amazon Linux and CentOS use @yum@, Debian and
-- Ubuntu use @apt-get@, and FreeBSD uses @pkg@. For a complete list, see
-- the
-- <https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image Dev Guide>.
createInstances_userData :: Lens.Lens' CreateInstances (Core.Maybe Core.Text)
createInstances_userData = Lens.lens (\CreateInstances' {userData} -> userData) (\s@CreateInstances' {} a -> s {userData = a} :: CreateInstances)

-- | An array of objects representing the add-ons to enable for the new
-- instance.
createInstances_addOns :: Lens.Lens' CreateInstances (Core.Maybe [AddOnRequest])
createInstances_addOns = Lens.lens (\CreateInstances' {addOns} -> addOns) (\s@CreateInstances' {} a -> s {addOns = a} :: CreateInstances) Core.. Lens.mapping Lens._Coerce

-- | The name of your key pair.
createInstances_keyPairName :: Lens.Lens' CreateInstances (Core.Maybe Core.Text)
createInstances_keyPairName = Lens.lens (\CreateInstances' {keyPairName} -> keyPairName) (\s@CreateInstances' {} a -> s {keyPairName = a} :: CreateInstances)

-- | The tag keys and optional values to add to the resource during create.
--
-- Use the @TagResource@ action to tag a resource after it\'s created.
createInstances_tags :: Lens.Lens' CreateInstances (Core.Maybe [Tag])
createInstances_tags = Lens.lens (\CreateInstances' {tags} -> tags) (\s@CreateInstances' {} a -> s {tags = a} :: CreateInstances) Core.. Lens.mapping Lens._Coerce

-- | (Deprecated) The name for your custom image.
--
-- In releases prior to June 12, 2017, this parameter was ignored by the
-- API. It is now deprecated.
createInstances_customImageName :: Lens.Lens' CreateInstances (Core.Maybe Core.Text)
createInstances_customImageName = Lens.lens (\CreateInstances' {customImageName} -> customImageName) (\s@CreateInstances' {} a -> s {customImageName = a} :: CreateInstances)

-- | The names to use for your new Lightsail instances. Separate multiple
-- values using quotation marks and commas, for example:
-- @[\"MyFirstInstance\",\"MySecondInstance\"]@
createInstances_instanceNames :: Lens.Lens' CreateInstances [Core.Text]
createInstances_instanceNames = Lens.lens (\CreateInstances' {instanceNames} -> instanceNames) (\s@CreateInstances' {} a -> s {instanceNames = a} :: CreateInstances) Core.. Lens._Coerce

-- | The Availability Zone in which to create your instance. Use the
-- following format: @us-east-2a@ (case sensitive). You can get a list of
-- Availability Zones by using the
-- <http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html get regions>
-- operation. Be sure to add the @include Availability Zones@ parameter to
-- your request.
createInstances_availabilityZone :: Lens.Lens' CreateInstances Core.Text
createInstances_availabilityZone = Lens.lens (\CreateInstances' {availabilityZone} -> availabilityZone) (\s@CreateInstances' {} a -> s {availabilityZone = a} :: CreateInstances)

-- | The ID for a virtual private server image (e.g., @app_wordpress_4_4@ or
-- @app_lamp_7_0@). Use the @get blueprints@ operation to return a list of
-- available images (or /blueprints/).
--
-- Use active blueprints when creating new instances. Inactive blueprints
-- are listed to support customers with existing instances and are not
-- necessarily available to create new instances. Blueprints are marked
-- inactive when they become outdated due to operating system updates or
-- new application releases.
createInstances_blueprintId :: Lens.Lens' CreateInstances Core.Text
createInstances_blueprintId = Lens.lens (\CreateInstances' {blueprintId} -> blueprintId) (\s@CreateInstances' {} a -> s {blueprintId = a} :: CreateInstances)

-- | The bundle of specification information for your virtual private server
-- (or /instance/), including the pricing plan (e.g., @micro_1_0@).
createInstances_bundleId :: Lens.Lens' CreateInstances Core.Text
createInstances_bundleId = Lens.lens (\CreateInstances' {bundleId} -> bundleId) (\s@CreateInstances' {} a -> s {bundleId = a} :: CreateInstances)

instance Core.AWSRequest CreateInstances where
  type
    AWSResponse CreateInstances =
      CreateInstancesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateInstancesResponse'
            Core.<$> (x Core..?> "operations" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateInstances

instance Core.NFData CreateInstances

instance Core.ToHeaders CreateInstances where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Lightsail_20161128.CreateInstances" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateInstances where
  toJSON CreateInstances' {..} =
    Core.object
      ( Core.catMaybes
          [ ("ipAddressType" Core..=) Core.<$> ipAddressType,
            ("userData" Core..=) Core.<$> userData,
            ("addOns" Core..=) Core.<$> addOns,
            ("keyPairName" Core..=) Core.<$> keyPairName,
            ("tags" Core..=) Core.<$> tags,
            ("customImageName" Core..=) Core.<$> customImageName,
            Core.Just ("instanceNames" Core..= instanceNames),
            Core.Just
              ("availabilityZone" Core..= availabilityZone),
            Core.Just ("blueprintId" Core..= blueprintId),
            Core.Just ("bundleId" Core..= bundleId)
          ]
      )

instance Core.ToPath CreateInstances where
  toPath = Core.const "/"

instance Core.ToQuery CreateInstances where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateInstancesResponse' smart constructor.
data CreateInstancesResponse = CreateInstancesResponse'
  { -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    operations :: Core.Maybe [Operation],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operations', 'createInstancesResponse_operations' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- 'httpStatus', 'createInstancesResponse_httpStatus' - The response's http status code.
newCreateInstancesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateInstancesResponse
newCreateInstancesResponse pHttpStatus_ =
  CreateInstancesResponse'
    { operations = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
createInstancesResponse_operations :: Lens.Lens' CreateInstancesResponse (Core.Maybe [Operation])
createInstancesResponse_operations = Lens.lens (\CreateInstancesResponse' {operations} -> operations) (\s@CreateInstancesResponse' {} a -> s {operations = a} :: CreateInstancesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
createInstancesResponse_httpStatus :: Lens.Lens' CreateInstancesResponse Core.Int
createInstancesResponse_httpStatus = Lens.lens (\CreateInstancesResponse' {httpStatus} -> httpStatus) (\s@CreateInstancesResponse' {} a -> s {httpStatus = a} :: CreateInstancesResponse)

instance Core.NFData CreateInstancesResponse
