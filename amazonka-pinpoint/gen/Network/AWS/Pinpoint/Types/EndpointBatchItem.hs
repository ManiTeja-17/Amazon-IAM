{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointBatchItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EndpointBatchItem where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.ChannelType
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointUser

-- | Specifies an endpoint to create or update and the settings and
-- attributes to set or change for the endpoint.
--
-- /See:/ 'newEndpointBatchItem' smart constructor.
data EndpointBatchItem = EndpointBatchItem'
  { -- | One or more custom attributes that describe the user who\'s associated
    -- with the endpoint.
    user :: Core.Maybe EndpointUser,
    -- | The destination address for messages or push notifications that you send
    -- to the endpoint. The address varies by channel. For a push-notification
    -- channel, use the token provided by the push notification service, such
    -- as an Apple Push Notification service (APNs) device token or a Firebase
    -- Cloud Messaging (FCM) registration token. For the SMS channel, use a
    -- phone number in E.164 format, such as +12065550100. For the email
    -- channel, use an email address.
    address :: Core.Maybe Core.Text,
    -- | The channel to use when sending messages or push notifications to the
    -- endpoint.
    channelType :: Core.Maybe ChannelType,
    -- | The unique identifier for the endpoint in the context of the batch.
    id :: Core.Maybe Core.Text,
    -- | Specifies whether the user who\'s associated with the endpoint has opted
    -- out of receiving messages and push notifications from you. Possible
    -- values are: ALL, the user has opted out and doesn\'t want to receive any
    -- messages or push notifications; and, NONE, the user hasn\'t opted out
    -- and wants to receive all messages and push notifications.
    optOut :: Core.Maybe Core.Text,
    -- | The demographic information for the endpoint, such as the time zone and
    -- platform.
    demographic :: Core.Maybe EndpointDemographic,
    -- | One or more custom attributes that describe the endpoint by associating
    -- a name with an array of values. For example, the value of a custom
    -- attribute named Interests might be: [\"Science\", \"Music\",
    -- \"Travel\"]. You can use these attributes as filter criteria when you
    -- create segments. Attribute names are case sensitive.
    --
    -- An attribute name can contain up to 50 characters. An attribute value
    -- can contain up to 100 characters. When you define the name of a custom
    -- attribute, avoid using the following characters: number sign (#), colon
    -- (:), question mark (?), backslash (\\), and slash (\/). The Amazon
    -- Pinpoint console can\'t display attribute names that contain these
    -- characters. This restriction doesn\'t apply to attribute values.
    attributes :: Core.Maybe (Core.HashMap Core.Text [Core.Text]),
    -- | Specifies whether to send messages or push notifications to the
    -- endpoint. Valid values are: ACTIVE, messages are sent to the endpoint;
    -- and, INACTIVE, messages aren’t sent to the endpoint.
    --
    -- Amazon Pinpoint automatically sets this value to ACTIVE when you create
    -- an endpoint or update an existing endpoint. Amazon Pinpoint
    -- automatically sets this value to INACTIVE if you update another endpoint
    -- that has the same address specified by the Address property.
    endpointStatus :: Core.Maybe Core.Text,
    -- | One or more custom metrics that your app reports to Amazon Pinpoint for
    -- the endpoint.
    metrics :: Core.Maybe (Core.HashMap Core.Text Core.Double),
    -- | The unique identifier for the request to create or update the endpoint.
    requestId :: Core.Maybe Core.Text,
    -- | The date and time, in ISO 8601 format, when the endpoint was created or
    -- updated.
    effectiveDate :: Core.Maybe Core.Text,
    -- | The geographic information for the endpoint.
    location :: Core.Maybe EndpointLocation
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EndpointBatchItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'user', 'endpointBatchItem_user' - One or more custom attributes that describe the user who\'s associated
-- with the endpoint.
--
-- 'address', 'endpointBatchItem_address' - The destination address for messages or push notifications that you send
-- to the endpoint. The address varies by channel. For a push-notification
-- channel, use the token provided by the push notification service, such
-- as an Apple Push Notification service (APNs) device token or a Firebase
-- Cloud Messaging (FCM) registration token. For the SMS channel, use a
-- phone number in E.164 format, such as +12065550100. For the email
-- channel, use an email address.
--
-- 'channelType', 'endpointBatchItem_channelType' - The channel to use when sending messages or push notifications to the
-- endpoint.
--
-- 'id', 'endpointBatchItem_id' - The unique identifier for the endpoint in the context of the batch.
--
-- 'optOut', 'endpointBatchItem_optOut' - Specifies whether the user who\'s associated with the endpoint has opted
-- out of receiving messages and push notifications from you. Possible
-- values are: ALL, the user has opted out and doesn\'t want to receive any
-- messages or push notifications; and, NONE, the user hasn\'t opted out
-- and wants to receive all messages and push notifications.
--
-- 'demographic', 'endpointBatchItem_demographic' - The demographic information for the endpoint, such as the time zone and
-- platform.
--
-- 'attributes', 'endpointBatchItem_attributes' - One or more custom attributes that describe the endpoint by associating
-- a name with an array of values. For example, the value of a custom
-- attribute named Interests might be: [\"Science\", \"Music\",
-- \"Travel\"]. You can use these attributes as filter criteria when you
-- create segments. Attribute names are case sensitive.
--
-- An attribute name can contain up to 50 characters. An attribute value
-- can contain up to 100 characters. When you define the name of a custom
-- attribute, avoid using the following characters: number sign (#), colon
-- (:), question mark (?), backslash (\\), and slash (\/). The Amazon
-- Pinpoint console can\'t display attribute names that contain these
-- characters. This restriction doesn\'t apply to attribute values.
--
-- 'endpointStatus', 'endpointBatchItem_endpointStatus' - Specifies whether to send messages or push notifications to the
-- endpoint. Valid values are: ACTIVE, messages are sent to the endpoint;
-- and, INACTIVE, messages aren’t sent to the endpoint.
--
-- Amazon Pinpoint automatically sets this value to ACTIVE when you create
-- an endpoint or update an existing endpoint. Amazon Pinpoint
-- automatically sets this value to INACTIVE if you update another endpoint
-- that has the same address specified by the Address property.
--
-- 'metrics', 'endpointBatchItem_metrics' - One or more custom metrics that your app reports to Amazon Pinpoint for
-- the endpoint.
--
-- 'requestId', 'endpointBatchItem_requestId' - The unique identifier for the request to create or update the endpoint.
--
-- 'effectiveDate', 'endpointBatchItem_effectiveDate' - The date and time, in ISO 8601 format, when the endpoint was created or
-- updated.
--
-- 'location', 'endpointBatchItem_location' - The geographic information for the endpoint.
newEndpointBatchItem ::
  EndpointBatchItem
newEndpointBatchItem =
  EndpointBatchItem'
    { user = Core.Nothing,
      address = Core.Nothing,
      channelType = Core.Nothing,
      id = Core.Nothing,
      optOut = Core.Nothing,
      demographic = Core.Nothing,
      attributes = Core.Nothing,
      endpointStatus = Core.Nothing,
      metrics = Core.Nothing,
      requestId = Core.Nothing,
      effectiveDate = Core.Nothing,
      location = Core.Nothing
    }

-- | One or more custom attributes that describe the user who\'s associated
-- with the endpoint.
endpointBatchItem_user :: Lens.Lens' EndpointBatchItem (Core.Maybe EndpointUser)
endpointBatchItem_user = Lens.lens (\EndpointBatchItem' {user} -> user) (\s@EndpointBatchItem' {} a -> s {user = a} :: EndpointBatchItem)

-- | The destination address for messages or push notifications that you send
-- to the endpoint. The address varies by channel. For a push-notification
-- channel, use the token provided by the push notification service, such
-- as an Apple Push Notification service (APNs) device token or a Firebase
-- Cloud Messaging (FCM) registration token. For the SMS channel, use a
-- phone number in E.164 format, such as +12065550100. For the email
-- channel, use an email address.
endpointBatchItem_address :: Lens.Lens' EndpointBatchItem (Core.Maybe Core.Text)
endpointBatchItem_address = Lens.lens (\EndpointBatchItem' {address} -> address) (\s@EndpointBatchItem' {} a -> s {address = a} :: EndpointBatchItem)

-- | The channel to use when sending messages or push notifications to the
-- endpoint.
endpointBatchItem_channelType :: Lens.Lens' EndpointBatchItem (Core.Maybe ChannelType)
endpointBatchItem_channelType = Lens.lens (\EndpointBatchItem' {channelType} -> channelType) (\s@EndpointBatchItem' {} a -> s {channelType = a} :: EndpointBatchItem)

-- | The unique identifier for the endpoint in the context of the batch.
endpointBatchItem_id :: Lens.Lens' EndpointBatchItem (Core.Maybe Core.Text)
endpointBatchItem_id = Lens.lens (\EndpointBatchItem' {id} -> id) (\s@EndpointBatchItem' {} a -> s {id = a} :: EndpointBatchItem)

-- | Specifies whether the user who\'s associated with the endpoint has opted
-- out of receiving messages and push notifications from you. Possible
-- values are: ALL, the user has opted out and doesn\'t want to receive any
-- messages or push notifications; and, NONE, the user hasn\'t opted out
-- and wants to receive all messages and push notifications.
endpointBatchItem_optOut :: Lens.Lens' EndpointBatchItem (Core.Maybe Core.Text)
endpointBatchItem_optOut = Lens.lens (\EndpointBatchItem' {optOut} -> optOut) (\s@EndpointBatchItem' {} a -> s {optOut = a} :: EndpointBatchItem)

-- | The demographic information for the endpoint, such as the time zone and
-- platform.
endpointBatchItem_demographic :: Lens.Lens' EndpointBatchItem (Core.Maybe EndpointDemographic)
endpointBatchItem_demographic = Lens.lens (\EndpointBatchItem' {demographic} -> demographic) (\s@EndpointBatchItem' {} a -> s {demographic = a} :: EndpointBatchItem)

-- | One or more custom attributes that describe the endpoint by associating
-- a name with an array of values. For example, the value of a custom
-- attribute named Interests might be: [\"Science\", \"Music\",
-- \"Travel\"]. You can use these attributes as filter criteria when you
-- create segments. Attribute names are case sensitive.
--
-- An attribute name can contain up to 50 characters. An attribute value
-- can contain up to 100 characters. When you define the name of a custom
-- attribute, avoid using the following characters: number sign (#), colon
-- (:), question mark (?), backslash (\\), and slash (\/). The Amazon
-- Pinpoint console can\'t display attribute names that contain these
-- characters. This restriction doesn\'t apply to attribute values.
endpointBatchItem_attributes :: Lens.Lens' EndpointBatchItem (Core.Maybe (Core.HashMap Core.Text [Core.Text]))
endpointBatchItem_attributes = Lens.lens (\EndpointBatchItem' {attributes} -> attributes) (\s@EndpointBatchItem' {} a -> s {attributes = a} :: EndpointBatchItem) Core.. Lens.mapping Lens._Coerce

-- | Specifies whether to send messages or push notifications to the
-- endpoint. Valid values are: ACTIVE, messages are sent to the endpoint;
-- and, INACTIVE, messages aren’t sent to the endpoint.
--
-- Amazon Pinpoint automatically sets this value to ACTIVE when you create
-- an endpoint or update an existing endpoint. Amazon Pinpoint
-- automatically sets this value to INACTIVE if you update another endpoint
-- that has the same address specified by the Address property.
endpointBatchItem_endpointStatus :: Lens.Lens' EndpointBatchItem (Core.Maybe Core.Text)
endpointBatchItem_endpointStatus = Lens.lens (\EndpointBatchItem' {endpointStatus} -> endpointStatus) (\s@EndpointBatchItem' {} a -> s {endpointStatus = a} :: EndpointBatchItem)

-- | One or more custom metrics that your app reports to Amazon Pinpoint for
-- the endpoint.
endpointBatchItem_metrics :: Lens.Lens' EndpointBatchItem (Core.Maybe (Core.HashMap Core.Text Core.Double))
endpointBatchItem_metrics = Lens.lens (\EndpointBatchItem' {metrics} -> metrics) (\s@EndpointBatchItem' {} a -> s {metrics = a} :: EndpointBatchItem) Core.. Lens.mapping Lens._Coerce

-- | The unique identifier for the request to create or update the endpoint.
endpointBatchItem_requestId :: Lens.Lens' EndpointBatchItem (Core.Maybe Core.Text)
endpointBatchItem_requestId = Lens.lens (\EndpointBatchItem' {requestId} -> requestId) (\s@EndpointBatchItem' {} a -> s {requestId = a} :: EndpointBatchItem)

-- | The date and time, in ISO 8601 format, when the endpoint was created or
-- updated.
endpointBatchItem_effectiveDate :: Lens.Lens' EndpointBatchItem (Core.Maybe Core.Text)
endpointBatchItem_effectiveDate = Lens.lens (\EndpointBatchItem' {effectiveDate} -> effectiveDate) (\s@EndpointBatchItem' {} a -> s {effectiveDate = a} :: EndpointBatchItem)

-- | The geographic information for the endpoint.
endpointBatchItem_location :: Lens.Lens' EndpointBatchItem (Core.Maybe EndpointLocation)
endpointBatchItem_location = Lens.lens (\EndpointBatchItem' {location} -> location) (\s@EndpointBatchItem' {} a -> s {location = a} :: EndpointBatchItem)

instance Core.Hashable EndpointBatchItem

instance Core.NFData EndpointBatchItem

instance Core.ToJSON EndpointBatchItem where
  toJSON EndpointBatchItem' {..} =
    Core.object
      ( Core.catMaybes
          [ ("User" Core..=) Core.<$> user,
            ("Address" Core..=) Core.<$> address,
            ("ChannelType" Core..=) Core.<$> channelType,
            ("Id" Core..=) Core.<$> id,
            ("OptOut" Core..=) Core.<$> optOut,
            ("Demographic" Core..=) Core.<$> demographic,
            ("Attributes" Core..=) Core.<$> attributes,
            ("EndpointStatus" Core..=) Core.<$> endpointStatus,
            ("Metrics" Core..=) Core.<$> metrics,
            ("RequestId" Core..=) Core.<$> requestId,
            ("EffectiveDate" Core..=) Core.<$> effectiveDate,
            ("Location" Core..=) Core.<$> location
          ]
      )
