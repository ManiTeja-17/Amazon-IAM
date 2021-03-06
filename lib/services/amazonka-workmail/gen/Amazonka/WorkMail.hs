{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.WorkMail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2017-10-01@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon WorkMail is a secure, managed business email and calendaring
-- service with support for existing desktop and mobile email clients. You
-- can access your email, contacts, and calendars using Microsoft Outlook,
-- your browser, or other native iOS and Android email applications. You
-- can integrate WorkMail with your existing corporate directory and
-- control both the keys that encrypt your data and the location in which
-- your data is stored.
--
-- The WorkMail API is designed for the following scenarios:
--
-- -   Listing and describing organizations
--
-- -   Managing users
--
-- -   Managing groups
--
-- -   Managing resources
--
-- All WorkMail API operations are Amazon-authenticated and
-- certificate-signed. They not only require the use of the AWS SDK, but
-- also allow for the exclusive use of AWS Identity and Access Management
-- users and roles to help facilitate access, trust, and permission
-- policies. By creating a role and allowing an IAM user to access the
-- WorkMail site, the IAM user gains full administrative visibility into
-- the entire WorkMail organization (or as set in the IAM policy). This
-- includes, but is not limited to, the ability to create, update, and
-- delete users, groups, and resources. This allows developers to perform
-- the scenarios listed above, as well as give users the ability to grant
-- access on a selective basis using the IAM model.
module Amazonka.WorkMail
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** DirectoryUnavailableException
    _DirectoryUnavailableException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** UnsupportedOperationException
    _UnsupportedOperationException,

    -- ** DirectoryServiceAuthenticationFailedException
    _DirectoryServiceAuthenticationFailedException,

    -- ** OrganizationStateException
    _OrganizationStateException,

    -- ** EntityStateException
    _EntityStateException,

    -- ** InvalidConfigurationException
    _InvalidConfigurationException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** MailDomainStateException
    _MailDomainStateException,

    -- ** ReservedNameException
    _ReservedNameException,

    -- ** OrganizationNotFoundException
    _OrganizationNotFoundException,

    -- ** EntityNotFoundException
    _EntityNotFoundException,

    -- ** EntityAlreadyRegisteredException
    _EntityAlreadyRegisteredException,

    -- ** DirectoryInUseException
    _DirectoryInUseException,

    -- ** MailDomainInUseException
    _MailDomainInUseException,

    -- ** MailDomainNotFoundException
    _MailDomainNotFoundException,

    -- ** InvalidCustomSesConfigurationException
    _InvalidCustomSesConfigurationException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** EmailAddressInUseException
    _EmailAddressInUseException,

    -- ** NameAvailabilityException
    _NameAvailabilityException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** InvalidPasswordException
    _InvalidPasswordException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeInboundDmarcSettings
    DescribeInboundDmarcSettings (DescribeInboundDmarcSettings'),
    newDescribeInboundDmarcSettings,
    DescribeInboundDmarcSettingsResponse (DescribeInboundDmarcSettingsResponse'),
    newDescribeInboundDmarcSettingsResponse,

    -- ** GetMailDomain
    GetMailDomain (GetMailDomain'),
    newGetMailDomain,
    GetMailDomainResponse (GetMailDomainResponse'),
    newGetMailDomainResponse,

    -- ** UpdatePrimaryEmailAddress
    UpdatePrimaryEmailAddress (UpdatePrimaryEmailAddress'),
    newUpdatePrimaryEmailAddress,
    UpdatePrimaryEmailAddressResponse (UpdatePrimaryEmailAddressResponse'),
    newUpdatePrimaryEmailAddressResponse,

    -- ** DescribeResource
    DescribeResource (DescribeResource'),
    newDescribeResource,
    DescribeResourceResponse (DescribeResourceResponse'),
    newDescribeResourceResponse,

    -- ** CreateOrganization
    CreateOrganization (CreateOrganization'),
    newCreateOrganization,
    CreateOrganizationResponse (CreateOrganizationResponse'),
    newCreateOrganizationResponse,

    -- ** CreateAlias
    CreateAlias (CreateAlias'),
    newCreateAlias,
    CreateAliasResponse (CreateAliasResponse'),
    newCreateAliasResponse,

    -- ** DeleteOrganization
    DeleteOrganization (DeleteOrganization'),
    newDeleteOrganization,
    DeleteOrganizationResponse (DeleteOrganizationResponse'),
    newDeleteOrganizationResponse,

    -- ** ResetPassword
    ResetPassword (ResetPassword'),
    newResetPassword,
    ResetPasswordResponse (ResetPasswordResponse'),
    newResetPasswordResponse,

    -- ** DescribeGroup
    DescribeGroup (DescribeGroup'),
    newDescribeGroup,
    DescribeGroupResponse (DescribeGroupResponse'),
    newDescribeGroupResponse,

    -- ** DescribeMailboxExportJob
    DescribeMailboxExportJob (DescribeMailboxExportJob'),
    newDescribeMailboxExportJob,
    DescribeMailboxExportJobResponse (DescribeMailboxExportJobResponse'),
    newDescribeMailboxExportJobResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** RegisterToWorkMail
    RegisterToWorkMail (RegisterToWorkMail'),
    newRegisterToWorkMail,
    RegisterToWorkMailResponse (RegisterToWorkMailResponse'),
    newRegisterToWorkMailResponse,

    -- ** ListAliases (Paginated)
    ListAliases (ListAliases'),
    newListAliases,
    ListAliasesResponse (ListAliasesResponse'),
    newListAliasesResponse,

    -- ** PutMailboxPermissions
    PutMailboxPermissions (PutMailboxPermissions'),
    newPutMailboxPermissions,
    PutMailboxPermissionsResponse (PutMailboxPermissionsResponse'),
    newPutMailboxPermissionsResponse,

    -- ** GetMobileDeviceAccessEffect
    GetMobileDeviceAccessEffect (GetMobileDeviceAccessEffect'),
    newGetMobileDeviceAccessEffect,
    GetMobileDeviceAccessEffectResponse (GetMobileDeviceAccessEffectResponse'),
    newGetMobileDeviceAccessEffectResponse,

    -- ** DeleteMailboxPermissions
    DeleteMailboxPermissions (DeleteMailboxPermissions'),
    newDeleteMailboxPermissions,
    DeleteMailboxPermissionsResponse (DeleteMailboxPermissionsResponse'),
    newDeleteMailboxPermissionsResponse,

    -- ** ListUsers (Paginated)
    ListUsers (ListUsers'),
    newListUsers,
    ListUsersResponse (ListUsersResponse'),
    newListUsersResponse,

    -- ** PutInboundDmarcSettings
    PutInboundDmarcSettings (PutInboundDmarcSettings'),
    newPutInboundDmarcSettings,
    PutInboundDmarcSettingsResponse (PutInboundDmarcSettingsResponse'),
    newPutInboundDmarcSettingsResponse,

    -- ** GetMailboxDetails
    GetMailboxDetails (GetMailboxDetails'),
    newGetMailboxDetails,
    GetMailboxDetailsResponse (GetMailboxDetailsResponse'),
    newGetMailboxDetailsResponse,

    -- ** AssociateMemberToGroup
    AssociateMemberToGroup (AssociateMemberToGroup'),
    newAssociateMemberToGroup,
    AssociateMemberToGroupResponse (AssociateMemberToGroupResponse'),
    newAssociateMemberToGroupResponse,

    -- ** DeleteResource
    DeleteResource (DeleteResource'),
    newDeleteResource,
    DeleteResourceResponse (DeleteResourceResponse'),
    newDeleteResourceResponse,

    -- ** UpdateResource
    UpdateResource (UpdateResource'),
    newUpdateResource,
    UpdateResourceResponse (UpdateResourceResponse'),
    newUpdateResourceResponse,

    -- ** DisassociateMemberFromGroup
    DisassociateMemberFromGroup (DisassociateMemberFromGroup'),
    newDisassociateMemberFromGroup,
    DisassociateMemberFromGroupResponse (DisassociateMemberFromGroupResponse'),
    newDisassociateMemberFromGroupResponse,

    -- ** ListResources (Paginated)
    ListResources (ListResources'),
    newListResources,
    ListResourcesResponse (ListResourcesResponse'),
    newListResourcesResponse,

    -- ** DeregisterFromWorkMail
    DeregisterFromWorkMail (DeregisterFromWorkMail'),
    newDeregisterFromWorkMail,
    DeregisterFromWorkMailResponse (DeregisterFromWorkMailResponse'),
    newDeregisterFromWorkMailResponse,

    -- ** ListMailboxExportJobs
    ListMailboxExportJobs (ListMailboxExportJobs'),
    newListMailboxExportJobs,
    ListMailboxExportJobsResponse (ListMailboxExportJobsResponse'),
    newListMailboxExportJobsResponse,

    -- ** CreateMobileDeviceAccessRule
    CreateMobileDeviceAccessRule (CreateMobileDeviceAccessRule'),
    newCreateMobileDeviceAccessRule,
    CreateMobileDeviceAccessRuleResponse (CreateMobileDeviceAccessRuleResponse'),
    newCreateMobileDeviceAccessRuleResponse,

    -- ** ListMailboxPermissions (Paginated)
    ListMailboxPermissions (ListMailboxPermissions'),
    newListMailboxPermissions,
    ListMailboxPermissionsResponse (ListMailboxPermissionsResponse'),
    newListMailboxPermissionsResponse,

    -- ** GetMobileDeviceAccessOverride
    GetMobileDeviceAccessOverride (GetMobileDeviceAccessOverride'),
    newGetMobileDeviceAccessOverride,
    GetMobileDeviceAccessOverrideResponse (GetMobileDeviceAccessOverrideResponse'),
    newGetMobileDeviceAccessOverrideResponse,

    -- ** ListGroupMembers (Paginated)
    ListGroupMembers (ListGroupMembers'),
    newListGroupMembers,
    ListGroupMembersResponse (ListGroupMembersResponse'),
    newListGroupMembersResponse,

    -- ** DisassociateDelegateFromResource
    DisassociateDelegateFromResource (DisassociateDelegateFromResource'),
    newDisassociateDelegateFromResource,
    DisassociateDelegateFromResourceResponse (DisassociateDelegateFromResourceResponse'),
    newDisassociateDelegateFromResourceResponse,

    -- ** DeleteAccessControlRule
    DeleteAccessControlRule (DeleteAccessControlRule'),
    newDeleteAccessControlRule,
    DeleteAccessControlRuleResponse (DeleteAccessControlRuleResponse'),
    newDeleteAccessControlRuleResponse,

    -- ** ListResourceDelegates (Paginated)
    ListResourceDelegates (ListResourceDelegates'),
    newListResourceDelegates,
    ListResourceDelegatesResponse (ListResourceDelegatesResponse'),
    newListResourceDelegatesResponse,

    -- ** ListAccessControlRules
    ListAccessControlRules (ListAccessControlRules'),
    newListAccessControlRules,
    ListAccessControlRulesResponse (ListAccessControlRulesResponse'),
    newListAccessControlRulesResponse,

    -- ** DescribeUser
    DescribeUser (DescribeUser'),
    newDescribeUser,
    DescribeUserResponse (DescribeUserResponse'),
    newDescribeUserResponse,

    -- ** PutAccessControlRule
    PutAccessControlRule (PutAccessControlRule'),
    newPutAccessControlRule,
    PutAccessControlRuleResponse (PutAccessControlRuleResponse'),
    newPutAccessControlRuleResponse,

    -- ** StartMailboxExportJob
    StartMailboxExportJob (StartMailboxExportJob'),
    newStartMailboxExportJob,
    StartMailboxExportJobResponse (StartMailboxExportJobResponse'),
    newStartMailboxExportJobResponse,

    -- ** DeleteAlias
    DeleteAlias (DeleteAlias'),
    newDeleteAlias,
    DeleteAliasResponse (DeleteAliasResponse'),
    newDeleteAliasResponse,

    -- ** ListOrganizations (Paginated)
    ListOrganizations (ListOrganizations'),
    newListOrganizations,
    ListOrganizationsResponse (ListOrganizationsResponse'),
    newListOrganizationsResponse,

    -- ** AssociateDelegateToResource
    AssociateDelegateToResource (AssociateDelegateToResource'),
    newAssociateDelegateToResource,
    AssociateDelegateToResourceResponse (AssociateDelegateToResourceResponse'),
    newAssociateDelegateToResourceResponse,

    -- ** GetAccessControlEffect
    GetAccessControlEffect (GetAccessControlEffect'),
    newGetAccessControlEffect,
    GetAccessControlEffectResponse (GetAccessControlEffectResponse'),
    newGetAccessControlEffectResponse,

    -- ** DeleteRetentionPolicy
    DeleteRetentionPolicy (DeleteRetentionPolicy'),
    newDeleteRetentionPolicy,
    DeleteRetentionPolicyResponse (DeleteRetentionPolicyResponse'),
    newDeleteRetentionPolicyResponse,

    -- ** CreateUser
    CreateUser (CreateUser'),
    newCreateUser,
    CreateUserResponse (CreateUserResponse'),
    newCreateUserResponse,

    -- ** PutRetentionPolicy
    PutRetentionPolicy (PutRetentionPolicy'),
    newPutRetentionPolicy,
    PutRetentionPolicyResponse (PutRetentionPolicyResponse'),
    newPutRetentionPolicyResponse,

    -- ** ListMailDomains
    ListMailDomains (ListMailDomains'),
    newListMailDomains,
    ListMailDomainsResponse (ListMailDomainsResponse'),
    newListMailDomainsResponse,

    -- ** DeleteUser
    DeleteUser (DeleteUser'),
    newDeleteUser,
    DeleteUserResponse (DeleteUserResponse'),
    newDeleteUserResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** RegisterMailDomain
    RegisterMailDomain (RegisterMailDomain'),
    newRegisterMailDomain,
    RegisterMailDomainResponse (RegisterMailDomainResponse'),
    newRegisterMailDomainResponse,

    -- ** UpdateDefaultMailDomain
    UpdateDefaultMailDomain (UpdateDefaultMailDomain'),
    newUpdateDefaultMailDomain,
    UpdateDefaultMailDomainResponse (UpdateDefaultMailDomainResponse'),
    newUpdateDefaultMailDomainResponse,

    -- ** UpdateMobileDeviceAccessRule
    UpdateMobileDeviceAccessRule (UpdateMobileDeviceAccessRule'),
    newUpdateMobileDeviceAccessRule,
    UpdateMobileDeviceAccessRuleResponse (UpdateMobileDeviceAccessRuleResponse'),
    newUpdateMobileDeviceAccessRuleResponse,

    -- ** DeleteMobileDeviceAccessRule
    DeleteMobileDeviceAccessRule (DeleteMobileDeviceAccessRule'),
    newDeleteMobileDeviceAccessRule,
    DeleteMobileDeviceAccessRuleResponse (DeleteMobileDeviceAccessRuleResponse'),
    newDeleteMobileDeviceAccessRuleResponse,

    -- ** CreateGroup
    CreateGroup (CreateGroup'),
    newCreateGroup,
    CreateGroupResponse (CreateGroupResponse'),
    newCreateGroupResponse,

    -- ** UpdateMailboxQuota
    UpdateMailboxQuota (UpdateMailboxQuota'),
    newUpdateMailboxQuota,
    UpdateMailboxQuotaResponse (UpdateMailboxQuotaResponse'),
    newUpdateMailboxQuotaResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** ListMobileDeviceAccessRules
    ListMobileDeviceAccessRules (ListMobileDeviceAccessRules'),
    newListMobileDeviceAccessRules,
    ListMobileDeviceAccessRulesResponse (ListMobileDeviceAccessRulesResponse'),
    newListMobileDeviceAccessRulesResponse,

    -- ** DeleteGroup
    DeleteGroup (DeleteGroup'),
    newDeleteGroup,
    DeleteGroupResponse (DeleteGroupResponse'),
    newDeleteGroupResponse,

    -- ** ListGroups (Paginated)
    ListGroups (ListGroups'),
    newListGroups,
    ListGroupsResponse (ListGroupsResponse'),
    newListGroupsResponse,

    -- ** DescribeOrganization
    DescribeOrganization (DescribeOrganization'),
    newDescribeOrganization,
    DescribeOrganizationResponse (DescribeOrganizationResponse'),
    newDescribeOrganizationResponse,

    -- ** CreateResource
    CreateResource (CreateResource'),
    newCreateResource,
    CreateResourceResponse (CreateResourceResponse'),
    newCreateResourceResponse,

    -- ** GetDefaultRetentionPolicy
    GetDefaultRetentionPolicy (GetDefaultRetentionPolicy'),
    newGetDefaultRetentionPolicy,
    GetDefaultRetentionPolicyResponse (GetDefaultRetentionPolicyResponse'),
    newGetDefaultRetentionPolicyResponse,

    -- ** DeregisterMailDomain
    DeregisterMailDomain (DeregisterMailDomain'),
    newDeregisterMailDomain,
    DeregisterMailDomainResponse (DeregisterMailDomainResponse'),
    newDeregisterMailDomainResponse,

    -- ** CancelMailboxExportJob
    CancelMailboxExportJob (CancelMailboxExportJob'),
    newCancelMailboxExportJob,
    CancelMailboxExportJobResponse (CancelMailboxExportJobResponse'),
    newCancelMailboxExportJobResponse,

    -- ** ListMobileDeviceAccessOverrides
    ListMobileDeviceAccessOverrides (ListMobileDeviceAccessOverrides'),
    newListMobileDeviceAccessOverrides,
    ListMobileDeviceAccessOverridesResponse (ListMobileDeviceAccessOverridesResponse'),
    newListMobileDeviceAccessOverridesResponse,

    -- ** DeleteMobileDeviceAccessOverride
    DeleteMobileDeviceAccessOverride (DeleteMobileDeviceAccessOverride'),
    newDeleteMobileDeviceAccessOverride,
    DeleteMobileDeviceAccessOverrideResponse (DeleteMobileDeviceAccessOverrideResponse'),
    newDeleteMobileDeviceAccessOverrideResponse,

    -- ** PutMobileDeviceAccessOverride
    PutMobileDeviceAccessOverride (PutMobileDeviceAccessOverride'),
    newPutMobileDeviceAccessOverride,
    PutMobileDeviceAccessOverrideResponse (PutMobileDeviceAccessOverrideResponse'),
    newPutMobileDeviceAccessOverrideResponse,

    -- * Types

    -- ** AccessControlRuleEffect
    AccessControlRuleEffect (..),

    -- ** DnsRecordVerificationStatus
    DnsRecordVerificationStatus (..),

    -- ** EntityState
    EntityState (..),

    -- ** FolderName
    FolderName (..),

    -- ** MailboxExportJobState
    MailboxExportJobState (..),

    -- ** MemberType
    MemberType (..),

    -- ** MobileDeviceAccessRuleEffect
    MobileDeviceAccessRuleEffect (..),

    -- ** PermissionType
    PermissionType (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** RetentionAction
    RetentionAction (..),

    -- ** UserRole
    UserRole (..),

    -- ** AccessControlRule
    AccessControlRule (AccessControlRule'),
    newAccessControlRule,

    -- ** BookingOptions
    BookingOptions (BookingOptions'),
    newBookingOptions,

    -- ** Delegate
    Delegate (Delegate'),
    newDelegate,

    -- ** DnsRecord
    DnsRecord (DnsRecord'),
    newDnsRecord,

    -- ** Domain
    Domain (Domain'),
    newDomain,

    -- ** FolderConfiguration
    FolderConfiguration (FolderConfiguration'),
    newFolderConfiguration,

    -- ** Group
    Group (Group'),
    newGroup,

    -- ** MailDomainSummary
    MailDomainSummary (MailDomainSummary'),
    newMailDomainSummary,

    -- ** MailboxExportJob
    MailboxExportJob (MailboxExportJob'),
    newMailboxExportJob,

    -- ** Member
    Member (Member'),
    newMember,

    -- ** MobileDeviceAccessMatchedRule
    MobileDeviceAccessMatchedRule (MobileDeviceAccessMatchedRule'),
    newMobileDeviceAccessMatchedRule,

    -- ** MobileDeviceAccessOverride
    MobileDeviceAccessOverride (MobileDeviceAccessOverride'),
    newMobileDeviceAccessOverride,

    -- ** MobileDeviceAccessRule
    MobileDeviceAccessRule (MobileDeviceAccessRule'),
    newMobileDeviceAccessRule,

    -- ** OrganizationSummary
    OrganizationSummary (OrganizationSummary'),
    newOrganizationSummary,

    -- ** Permission
    Permission (Permission'),
    newPermission,

    -- ** Resource
    Resource (Resource'),
    newResource,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** User
    User (User'),
    newUser,
  )
where

import Amazonka.WorkMail.AssociateDelegateToResource
import Amazonka.WorkMail.AssociateMemberToGroup
import Amazonka.WorkMail.CancelMailboxExportJob
import Amazonka.WorkMail.CreateAlias
import Amazonka.WorkMail.CreateGroup
import Amazonka.WorkMail.CreateMobileDeviceAccessRule
import Amazonka.WorkMail.CreateOrganization
import Amazonka.WorkMail.CreateResource
import Amazonka.WorkMail.CreateUser
import Amazonka.WorkMail.DeleteAccessControlRule
import Amazonka.WorkMail.DeleteAlias
import Amazonka.WorkMail.DeleteGroup
import Amazonka.WorkMail.DeleteMailboxPermissions
import Amazonka.WorkMail.DeleteMobileDeviceAccessOverride
import Amazonka.WorkMail.DeleteMobileDeviceAccessRule
import Amazonka.WorkMail.DeleteOrganization
import Amazonka.WorkMail.DeleteResource
import Amazonka.WorkMail.DeleteRetentionPolicy
import Amazonka.WorkMail.DeleteUser
import Amazonka.WorkMail.DeregisterFromWorkMail
import Amazonka.WorkMail.DeregisterMailDomain
import Amazonka.WorkMail.DescribeGroup
import Amazonka.WorkMail.DescribeInboundDmarcSettings
import Amazonka.WorkMail.DescribeMailboxExportJob
import Amazonka.WorkMail.DescribeOrganization
import Amazonka.WorkMail.DescribeResource
import Amazonka.WorkMail.DescribeUser
import Amazonka.WorkMail.DisassociateDelegateFromResource
import Amazonka.WorkMail.DisassociateMemberFromGroup
import Amazonka.WorkMail.GetAccessControlEffect
import Amazonka.WorkMail.GetDefaultRetentionPolicy
import Amazonka.WorkMail.GetMailDomain
import Amazonka.WorkMail.GetMailboxDetails
import Amazonka.WorkMail.GetMobileDeviceAccessEffect
import Amazonka.WorkMail.GetMobileDeviceAccessOverride
import Amazonka.WorkMail.Lens
import Amazonka.WorkMail.ListAccessControlRules
import Amazonka.WorkMail.ListAliases
import Amazonka.WorkMail.ListGroupMembers
import Amazonka.WorkMail.ListGroups
import Amazonka.WorkMail.ListMailDomains
import Amazonka.WorkMail.ListMailboxExportJobs
import Amazonka.WorkMail.ListMailboxPermissions
import Amazonka.WorkMail.ListMobileDeviceAccessOverrides
import Amazonka.WorkMail.ListMobileDeviceAccessRules
import Amazonka.WorkMail.ListOrganizations
import Amazonka.WorkMail.ListResourceDelegates
import Amazonka.WorkMail.ListResources
import Amazonka.WorkMail.ListTagsForResource
import Amazonka.WorkMail.ListUsers
import Amazonka.WorkMail.PutAccessControlRule
import Amazonka.WorkMail.PutInboundDmarcSettings
import Amazonka.WorkMail.PutMailboxPermissions
import Amazonka.WorkMail.PutMobileDeviceAccessOverride
import Amazonka.WorkMail.PutRetentionPolicy
import Amazonka.WorkMail.RegisterMailDomain
import Amazonka.WorkMail.RegisterToWorkMail
import Amazonka.WorkMail.ResetPassword
import Amazonka.WorkMail.StartMailboxExportJob
import Amazonka.WorkMail.TagResource
import Amazonka.WorkMail.Types
import Amazonka.WorkMail.UntagResource
import Amazonka.WorkMail.UpdateDefaultMailDomain
import Amazonka.WorkMail.UpdateMailboxQuota
import Amazonka.WorkMail.UpdateMobileDeviceAccessRule
import Amazonka.WorkMail.UpdatePrimaryEmailAddress
import Amazonka.WorkMail.UpdateResource
import Amazonka.WorkMail.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'WorkMail'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
