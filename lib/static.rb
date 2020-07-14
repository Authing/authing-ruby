module Static
  module ReadEmailSentList
    Name = "ReadEmailSentList"
    Query = <<-EOS
    query ReadEmailSentList($page: Int, $count: Int, $sortBy: String){
    ReadEmailSentList(page: $page, count: $count, sortBy: $sortBy){
        list{
            _id
            subject
            content
            sender
            receivers
            createdAt
        }
        totalCount
    }
}
  EOS
  end

  module ReadEmailSentListByClient
    Name = "ReadEmailSentListByClient"
    Query = <<-EOS
    query ReadEmailSentListByClient($client: String!, $page: Int, $count: Int){
    ReadEmailSentListByClient(client: $client, page: $page, count: $count){
        totalCount
        list{
            _id
            user
            subject
            content
            sender
            receivers
            post
            createdAt
            rejected
            isDeleted
            client
        }
    }
}
  EOS
  end

  module ReadEmailProvider
    Name = "ReadEmailProvider"
    Query = <<-EOS
    query ReadEmailProvider($clientId: String){
    ReadEmailProvider(clientId: $clientId){
        _id
        name
        image
        description
        fields{
            label
            type
            placeholder
            help
            value
            options
        }
        client
        user
        status
        provider{
            _id
            name
            image
            description
            client
            user
            status
        }
    }
}
  EOS
  end

  module ReadEmailProviderByClientAndName
    Name = "ReadEmailProviderByClientAndName"
    Query = <<-EOS
    query ReadEmailProviderByClientAndName($clientId: String){
    ReadEmailProviderByClientAndName(clientId: $clientId){
        _id
        user
        client
        status
        fields{
            label
            type
            placeholder
            help
            value
            options
        }
        provider{
            _id
            name
            image
            description
        }
    }
}
  EOS
  end

  module ReadEmailTemplatesByClient
    Name = "ReadEmailTemplatesByClient"
    Query = <<-EOS
    query ReadEmailTemplatesByClient($clientId: String!){
    ReadEmailTemplatesByClient(clientId: $clientId){
        _id
        user
        client
        template{
            _id
            type
            sender
            object
            hasURL
            URLExpireTime
            status
            redirectTo
            content
        }
        type
        sender
        object
        hasURL
        URLExpireTime
        redirectTo
        status
        content
    }
}
  EOS
  end

  module ReadEmailProviderWithClient
    Name = "ReadEmailProviderWithClient"
    Query = <<-EOS
    query ReadEmailProviderWithClient{
    ReadEmailProviderWithClient{
        _id
        user
        client
        status
        fields{
            label
            type
            placeholder
            help
            value
            options
        }
        provider{
            _id
            name
            image
            description
        }
    }
}
  EOS
  end

  module ReadEmailTemplateByClientAndType
    Name = "ReadEmailTemplateByClientAndType"
    Query = <<-EOS
    query ReadEmailTemplateByClientAndType($type: String!, $client: String!){
    ReadEmailTemplateByClientAndType(type: $type, client: $client){
        _id
        type
        sender
        object
        hasURL
        URLExpireTime
        status
        redirectTo
        content
    }
}
  EOS
  end

  module PreviewEmailByType
    Name = "PreviewEmailByType"
    Query = <<-EOS
    query PreviewEmailByType($type: String!, $client: String!, $meta_data: String){
    PreviewEmailByType(type: $type, client: $client, meta_data: $meta_data)
}
  EOS
  end

  module ReadEmailTemplatesBySystem
    Name = "ReadEmailTemplatesBySystem"
    Query = <<-EOS
    query ReadEmailTemplatesBySystem{
    ReadEmailTemplatesBySystem{
        _id
        user
        client
        template{
            _id
            type
            sender
            object
            hasURL
            URLExpireTime
            status
            redirectTo
            content
        }
        type
        sender
        object
        hasURL
        URLExpireTime
        redirectTo
        status
        content
    }
}
  EOS
  end

  module ReadOauthList
    Name = "ReadOauthList"
    Query = <<-EOS
    query ReadOauthList($clientId: String, $dontGetURL: Boolean, $useGuard: Boolean){
    ReadOauthList(clientId: $clientId, dontGetURL: $dontGetURL, useGuard: $useGuard){
        _id
        name
        alias
        image
        description
        enabled
        url
        client
        user
        oAuthUrl
        wxappLogo
        fields{
            label
            type
            placeholder
            value
            checked
        }
        oauth{
            _id
            name
            alias
            image
            description
            enabled
            url
            client
            user
            oAuthUrl
            wxappLogo
        }
    }
}
  EOS
  end

  module ReadSAMLSPList
    Name = "ReadSAMLSPList"
    Query = <<-EOS
    query ReadSAMLSPList($clientId: String!){
    ReadSAMLSPList(clientId: $clientId){
        providerName
        url
        logo
    }
}
  EOS
  end

  module UserOAuthCount
    Name = "userOAuthCount"
    Query = <<-EOS
    query userOAuthCount($userIds: [String]){
    userOAuthCount(userIds: $userIds)
}
  EOS
  end

  module WxQRCodeLog
    Name = "wxQRCodeLog"
    Query = <<-EOS
    query wxQRCodeLog($page: Int, $count: Int, $clientId: String, $sortBy: String){
    wxQRCodeLog(page: $page, count: $count, clientId: $clientId, sortBy: $sortBy){
        list{
            random
            expiredAt
            createdAt
            success
            qrcode
            used
            accessToken
            openid
            userInfo
            redirect
        }
        totalCount
    }
}
  EOS
  end

  module QuerySystemOAuthSetting
    Name = "querySystemOAuthSetting"
    Query = <<-EOS
    query querySystemOAuthSetting{
    querySystemOAuthSetting{
        _id
        name
        alias
        image
        description
        enabled
        url
        client
        user
        oAuthUrl
        wxappLogo
        fields{
            label
            type
            placeholder
            value
            checked
        }
        oauth{
            _id
            name
            alias
            image
            description
            enabled
            url
            client
            user
            oAuthUrl
            wxappLogo
        }
    }
}
  EOS
  end

  module NotBindOAuthList
    Name = "notBindOAuthList"
    Query = <<-EOS
    query notBindOAuthList($client: String, $user: String){
    notBindOAuthList(client: $client, user: $user){
        type
        oAuthUrl
        image
        name
        binded
    }
}
  EOS
  end

  module QueryClientIdByAppId
    Name = "QueryClientIdByAppId"
    Query = <<-EOS
    query QueryClientIdByAppId($appId: String){
    QueryClientIdByAppId(appId: $appId){
        _id
        name
        domain
        image
        redirectUris
        appSecret
        client_id
        clientId
        grants
        description
        homepageURL
        isDeleted
        when
        css
        loginUrl
        casExpire
    }
}
  EOS
  end

  module GetOAuthedAppInfo
    Name = "getOAuthedAppInfo"
    Query = <<-EOS
    query getOAuthedAppInfo($appId: String!){
    getOAuthedAppInfo(appId: $appId){
        _id
        name
        domain
        image
        redirectUris
        appSecret
        client_id
        clientId
        grants
        description
        homepageURL
        isDeleted
        when
        css
        loginUrl
        casExpire
    }
}
  EOS
  end

  module GetOAuthedAppList
    Name = "getOAuthedAppList"
    Query = <<-EOS
    query getOAuthedAppList($clientId: String, $page: Int, $count: Int){
    getOAuthedAppList(clientId: $clientId, page: $page, count: $count){
        totalCount
        list{
            _id
            name
            domain
            image
            redirectUris
            appSecret
            client_id
            clientId
            grants
            description
            homepageURL
            isDeleted
            when
            css
            loginUrl
            casExpire
        }
    }
}
  EOS
  end

  module GetOIDCAppInfo
    Name = "GetOIDCAppInfo"
    Query = <<-EOS
    query GetOIDCAppInfo($appId: String!){
    GetOIDCAppInfo(appId: $appId){
        _id
        name
        domain
        image
        redirect_uris
        client_id
        client_secret
        token_endpoint_auth_method
        id_token_signed_response_alg
        id_token_encrypted_response_alg
        id_token_encrypted_response_enc
        userinfo_signed_response_alg
        userinfo_encrypted_response_alg
        userinfo_encrypted_response_enc
        request_object_signing_alg
        request_object_encryption_alg
        request_object_encryption_enc
        jwks_uri
        _jwks_uri
        custom_jwks
        jwks
        _jwks
        clientId
        grant_types
        response_types
        description
        homepageURL
        isDeleted
        isDefault
        when
        css
        authorization_code_expire
        id_token_expire
        access_token_expire
        cas_expire
        loginUrl
        customStyles{
            forceLogin
            hideQRCode
            hideUP
            hideUsername
            hideRegister
            hidePhone
            hideSocial
            hideClose
            hidePhonePassword
            defaultLoginMethod
        }
    }
}
  EOS
  end

  module GetOIDCAppList
    Name = "GetOIDCAppList"
    Query = <<-EOS
    query GetOIDCAppList($clientId: String, $page: Int, $count: Int){
    GetOIDCAppList(clientId: $clientId, page: $page, count: $count){
        totalCount
        list{
            _id
            name
            domain
            image
            redirect_uris
            client_id
            client_secret
            token_endpoint_auth_method
            id_token_signed_response_alg
            id_token_encrypted_response_alg
            id_token_encrypted_response_enc
            userinfo_signed_response_alg
            userinfo_encrypted_response_alg
            userinfo_encrypted_response_enc
            request_object_signing_alg
            request_object_encryption_alg
            request_object_encryption_enc
            jwks_uri
            _jwks_uri
            custom_jwks
            jwks
            _jwks
            clientId
            grant_types
            response_types
            description
            homepageURL
            isDeleted
            isDefault
            when
            css
            authorization_code_expire
            id_token_expire
            access_token_expire
            cas_expire
            loginUrl
        }
    }
}
  EOS
  end

  module QueryProviderInfoByDomain
    Name = "queryProviderInfoByDomain"
    Query = <<-EOS
    query queryProviderInfoByDomain($domain: String){
    queryProviderInfoByDomain(domain: $domain){
        _id
        type
        name
        image
        domain
        clientId
        client_id
        css
        redirect_uris
    }
}
  EOS
  end

  module QueryProviderInfoByAppId
    Name = "queryProviderInfoByAppId"
    Query = <<-EOS
    query queryProviderInfoByAppId($appId: String){
    queryProviderInfoByAppId(appId: $appId){
        _id
        type
        name
        image
        domain
        clientId
        client_id
        css
        redirect_uris
    }
}
  EOS
  end

  module QueryAppInfoByAppID
    Name = "QueryAppInfoByAppID"
    Query = <<-EOS
    query QueryAppInfoByAppID($appId: String, $responseType: String, $redirectUrl: String){
    QueryAppInfoByAppID(appId: $appId, responseType: $responseType, redirectUrl: $redirectUrl){
        _id
        name
        domain
        image
        redirectUris
        appSecret
        client_id
        clientId
        grants
        description
        homepageURL
        isDeleted
        when
        css
        loginUrl
        casExpire
    }
}
  EOS
  end

  module QueryAppInfoByDomain
    Name = "QueryAppInfoByDomain"
    Query = <<-EOS
    query QueryAppInfoByDomain($domain: String){
    QueryAppInfoByDomain(domain: $domain){
        _id
        name
        domain
        image
        redirectUris
        appSecret
        client_id
        clientId
        grants
        description
        homepageURL
        isDeleted
        when
        css
        loginUrl
        casExpire
    }
}
  EOS
  end

  module QueryOIDCAppInfoByDomain
    Name = "QueryOIDCAppInfoByDomain"
    Query = <<-EOS
    query QueryOIDCAppInfoByDomain($domain: String){
    QueryOIDCAppInfoByDomain(domain: $domain){
        _id
        name
        domain
        image
        redirect_uris
        client_id
        client_secret
        token_endpoint_auth_method
        id_token_signed_response_alg
        id_token_encrypted_response_alg
        id_token_encrypted_response_enc
        userinfo_signed_response_alg
        userinfo_encrypted_response_alg
        userinfo_encrypted_response_enc
        request_object_signing_alg
        request_object_encryption_alg
        request_object_encryption_enc
        jwks_uri
        _jwks_uri
        custom_jwks
        jwks
        _jwks
        clientId
        grant_types
        response_types
        description
        homepageURL
        isDeleted
        isDefault
        when
        css
        authorization_code_expire
        id_token_expire
        access_token_expire
        cas_expire
        loginUrl
        customStyles{
            forceLogin
            hideQRCode
            hideUP
            hideUsername
            hideRegister
            hidePhone
            hideSocial
            hideClose
            hidePhonePassword
            defaultLoginMethod
        }
    }
}
  EOS
  end

  module QueryOIDCAppInfoByAppID
    Name = "QueryOIDCAppInfoByAppID"
    Query = <<-EOS
    query QueryOIDCAppInfoByAppID($appId: String, $responseType: String, $redirectUrl: String){
    QueryOIDCAppInfoByAppID(appId: $appId, responseType: $responseType, redirectUrl: $redirectUrl){
        _id
        name
        domain
        image
        redirect_uris
        client_id
        client_secret
        token_endpoint_auth_method
        id_token_signed_response_alg
        id_token_encrypted_response_alg
        id_token_encrypted_response_enc
        userinfo_signed_response_alg
        userinfo_encrypted_response_alg
        userinfo_encrypted_response_enc
        request_object_signing_alg
        request_object_encryption_alg
        request_object_encryption_enc
        jwks_uri
        _jwks_uri
        custom_jwks
        jwks
        _jwks
        clientId
        grant_types
        response_types
        description
        homepageURL
        isDeleted
        isDefault
        when
        css
        authorization_code_expire
        id_token_expire
        access_token_expire
        cas_expire
        loginUrl
        customStyles{
            forceLogin
            hideQRCode
            hideUP
            hideUsername
            hideRegister
            hidePhone
            hideSocial
            hideClose
            hidePhonePassword
            defaultLoginMethod
        }
    }
}
  EOS
  end

  module QuerySAMLServiceProviderInfoByAppID
    Name = "QuerySAMLServiceProviderInfoByAppID"
    Query = <<-EOS
    query QuerySAMLServiceProviderInfoByAppID($appId: String!){
    QuerySAMLServiceProviderInfoByAppID(appId: $appId){
        _id
        name
        domain
        image
        appSecret
        defaultIdPMap{
            _id
            name
            image
            description
            isDeleted
        }
        defaultIdPMapId
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        IdPMetadata
        IdPEntityID
        assertionConsumeService{
            binding
            url
            isDefault
        }
        mappings{
            username
            nickname
            photo
            company
            providerName
            email
        }
        redirectUrl
        loginUrl
        logoutUrl
        nameId
        enableSignRes
        resSignPublicKey
        hasResEncrypted
        resEncryptAlgorithm
        resAbstractAlgorithm
        resDecryptPrivateKey
        resDecryptPrivateKeyPass
        resEncryptPublicKey
        enableSignReq
        reqSignAlgorithm
        reqAbstractAlgorithm
        reqSignPrivateKey
        reqSignPrivateKeyPass
        reqSignPublicKey
        SPUrl
    }
}
  EOS
  end

  module QuerySAMLServiceProviderInfoByDomain
    Name = "QuerySAMLServiceProviderInfoByDomain"
    Query = <<-EOS
    query QuerySAMLServiceProviderInfoByDomain($domain: String!){
    QuerySAMLServiceProviderInfoByDomain(domain: $domain){
        _id
        name
        domain
        image
        appSecret
        defaultIdPMap{
            _id
            name
            image
            description
            isDeleted
        }
        defaultIdPMapId
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        IdPMetadata
        IdPEntityID
        assertionConsumeService{
            binding
            url
            isDefault
        }
        mappings{
            username
            nickname
            photo
            company
            providerName
            email
        }
        redirectUrl
        loginUrl
        logoutUrl
        nameId
        enableSignRes
        resSignPublicKey
        hasResEncrypted
        resEncryptAlgorithm
        resAbstractAlgorithm
        resDecryptPrivateKey
        resDecryptPrivateKeyPass
        resEncryptPublicKey
        enableSignReq
        reqSignAlgorithm
        reqAbstractAlgorithm
        reqSignPrivateKey
        reqSignPrivateKeyPass
        reqSignPublicKey
        SPUrl
    }
}
  EOS
  end

  module QuerySAMLIdentityProviderInfoByAppID
    Name = "QuerySAMLIdentityProviderInfoByAppID"
    Query = <<-EOS
    query QuerySAMLIdentityProviderInfoByAppID($appId: String){
    QuerySAMLIdentityProviderInfoByAppID(appId: $appId){
        _id
        name
        domain
        image
        appSecret
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        attributeNameFormat
        customAttributes
        emailDomainTransformation
        authnContextClassRef
        IdPMetadata
        assertionConsumerUrl
        bindings
        nameIds
        attributes
        enableSignRes
        resSignAlgorithm
        resAbstractAlgorithm
        resSignPublicKey
        resSignPrivateKey
        resSignPrivateKeyPass
        enableSignReq
        reqSignPublicKey
        enableEncryptRes
        resEncryptPublicKey
        css
    }
}
  EOS
  end

  module QuerySAMLIdentityProviderInfoByDomain
    Name = "QuerySAMLIdentityProviderInfoByDomain"
    Query = <<-EOS
    query QuerySAMLIdentityProviderInfoByDomain($domain: String){
    QuerySAMLIdentityProviderInfoByDomain(domain: $domain){
        _id
        name
        domain
        image
        appSecret
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        attributeNameFormat
        customAttributes
        emailDomainTransformation
        authnContextClassRef
        IdPMetadata
        assertionConsumerUrl
        bindings
        nameIds
        attributes
        enableSignRes
        resSignAlgorithm
        resAbstractAlgorithm
        resSignPublicKey
        resSignPrivateKey
        resSignPrivateKeyPass
        enableSignReq
        reqSignPublicKey
        enableEncryptRes
        resEncryptPublicKey
        css
    }
}
  EOS
  end

  module QueryDefaultSAMLIdentityProviderSettingsList
    Name = "QueryDefaultSAMLIdentityProviderSettingsList"
    Query = <<-EOS
    query QueryDefaultSAMLIdentityProviderSettingsList($page: Int, $count: Int){
    QueryDefaultSAMLIdentityProviderSettingsList(page: $page, count: $count){
        list{
            _id
            name
            image
            description
            isDeleted
        }
        totalCount
    }
}
  EOS
  end

  module GetSAMLServiceProviderList
    Name = "GetSAMLServiceProviderList"
    Query = <<-EOS
    query GetSAMLServiceProviderList($clientId: String, $page: Int, $count: Int){
    GetSAMLServiceProviderList(clientId: $clientId, page: $page, count: $count){
        totalCount
        list{
            _id
            name
            domain
            image
            appSecret
            defaultIdPMapId
            appId
            clientId
            description
            isDeleted
            enabled
            when
            SPMetadata
            IdPMetadata
            IdPEntityID
            redirectUrl
            loginUrl
            logoutUrl
            nameId
            enableSignRes
            resSignPublicKey
            hasResEncrypted
            resEncryptAlgorithm
            resAbstractAlgorithm
            resDecryptPrivateKey
            resDecryptPrivateKeyPass
            resEncryptPublicKey
            enableSignReq
            reqSignAlgorithm
            reqAbstractAlgorithm
            reqSignPrivateKey
            reqSignPrivateKeyPass
            reqSignPublicKey
            SPUrl
        }
    }
}
  EOS
  end

  module GetSAMLServiceProviderInfo
    Name = "GetSAMLServiceProviderInfo"
    Query = <<-EOS
    query GetSAMLServiceProviderInfo($appId: String!){
    GetSAMLServiceProviderInfo(appId: $appId){
        _id
        name
        domain
        image
        appSecret
        defaultIdPMap{
            _id
            name
            image
            description
            isDeleted
        }
        defaultIdPMapId
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        IdPMetadata
        IdPEntityID
        assertionConsumeService{
            binding
            url
            isDefault
        }
        mappings{
            username
            nickname
            photo
            company
            providerName
            email
        }
        redirectUrl
        loginUrl
        logoutUrl
        nameId
        enableSignRes
        resSignPublicKey
        hasResEncrypted
        resEncryptAlgorithm
        resAbstractAlgorithm
        resDecryptPrivateKey
        resDecryptPrivateKeyPass
        resEncryptPublicKey
        enableSignReq
        reqSignAlgorithm
        reqAbstractAlgorithm
        reqSignPrivateKey
        reqSignPrivateKeyPass
        reqSignPublicKey
        SPUrl
    }
}
  EOS
  end

  module GetSAMLIdentityProviderInfo
    Name = "GetSAMLIdentityProviderInfo"
    Query = <<-EOS
    query GetSAMLIdentityProviderInfo($appId: String!){
    GetSAMLIdentityProviderInfo(appId: $appId){
        _id
        name
        domain
        image
        appSecret
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        attributeNameFormat
        customAttributes
        emailDomainTransformation
        authnContextClassRef
        IdPMetadata
        assertionConsumerUrl
        bindings
        nameIds
        attributes
        enableSignRes
        resSignAlgorithm
        resAbstractAlgorithm
        resSignPublicKey
        resSignPrivateKey
        resSignPrivateKeyPass
        enableSignReq
        reqSignPublicKey
        enableEncryptRes
        resEncryptPublicKey
        css
    }
}
  EOS
  end

  module GetSAMLIdentityProviderList
    Name = "GetSAMLIdentityProviderList"
    Query = <<-EOS
    query GetSAMLIdentityProviderList($clientId: String, $page: Int, $count: Int){
    GetSAMLIdentityProviderList(clientId: $clientId, page: $page, count: $count){
        totalCount
        list{
            _id
            name
            domain
            image
            appSecret
            appId
            clientId
            description
            isDeleted
            enabled
            when
            SPMetadata
            attributeNameFormat
            customAttributes
            emailDomainTransformation
            authnContextClassRef
            IdPMetadata
            assertionConsumerUrl
            bindings
            nameIds
            attributes
            enableSignRes
            resSignAlgorithm
            resAbstractAlgorithm
            resSignPublicKey
            resSignPrivateKey
            resSignPrivateKeyPass
            enableSignReq
            reqSignPublicKey
            enableEncryptRes
            resEncryptPublicKey
            css
        }
    }
}
  EOS
  end

  module QueryLDAPServerList
    Name = "QueryLDAPServerList"
    Query = <<-EOS
    query QueryLDAPServerList($clientId: String!, $page: Int, $count: Int){
    QueryLDAPServerList(clientId: $clientId, page: $page, count: $count){
        list{
            _id
            name
            clientId
            userId
            ldapLink
            baseDN
            searchStandard
            emailPostfix
            username
            password
            description
            enabled
            isDeleted
            createdAt
            updatedAt
        }
        totalCount
    }
}
  EOS
  end

  module TestLDAPServer
    Name = "TestLDAPServer"
    Query = <<-EOS
    query TestLDAPServer($name: String!, $clientId: String!, $userId: String!, $ldapLink: String!, $baseDN: String!, $searchStandard: String!, $username: String!, $password: String!, $emailPostfix: String, $description: String, $enabled: Boolean){
    TestLDAPServer(name: $name, clientId: $clientId, userId: $userId, ldapLink: $ldapLink, baseDN: $baseDN, searchStandard: $searchStandard, username: $username, password: $password, emailPostfix: $emailPostfix, description: $description, enabled: $enabled){
        result
    }
}
  EOS
  end

  module TestLDAPUser
    Name = "TestLDAPUser"
    Query = <<-EOS
    query TestLDAPUser($testUsername: String!, $testPassword: String!, $name: String!, $clientId: String!, $userId: String!, $ldapLink: String!, $baseDN: String!, $searchStandard: String!, $username: String!, $password: String!, $emailPostfix: String, $description: String, $enabled: Boolean){
    TestLDAPUser(testUsername: $testUsername, testPassword: $testPassword, name: $name, clientId: $clientId, userId: $userId, ldapLink: $ldapLink, baseDN: $baseDN, searchStandard: $searchStandard, username: $username, password: $password, emailPostfix: $emailPostfix, description: $description, enabled: $enabled){
        result
    }
}
  EOS
  end

  module QueryClientHasLDAPConfigs
    Name = "QueryClientHasLDAPConfigs"
    Query = <<-EOS
    query QueryClientHasLDAPConfigs($clientId: String){
    QueryClientHasLDAPConfigs(clientId: $clientId){
        result
    }
}
  EOS
  end

  module GetUserAuthorizedApps
    Name = "GetUserAuthorizedApps"
    Query = <<-EOS
    query GetUserAuthorizedApps($clientId: String, $userId: String, $page: Int, $count: Int){
    GetUserAuthorizedApps(clientId: $clientId, userId: $userId, page: $page, count: $count){
        totalCount
        OAuthApps{
            _id
            name
            domain
            image
            redirectUris
            appSecret
            client_id
            clientId
            grants
            description
            homepageURL
            isDeleted
            when
            css
            loginUrl
            casExpire
        }
        OIDCApps{
            _id
            name
            domain
            image
            redirect_uris
            client_id
            client_secret
            token_endpoint_auth_method
            id_token_signed_response_alg
            id_token_encrypted_response_alg
            id_token_encrypted_response_enc
            userinfo_signed_response_alg
            userinfo_encrypted_response_alg
            userinfo_encrypted_response_enc
            request_object_signing_alg
            request_object_encryption_alg
            request_object_encryption_enc
            jwks_uri
            _jwks_uri
            custom_jwks
            jwks
            _jwks
            clientId
            grant_types
            response_types
            description
            homepageURL
            isDeleted
            isDefault
            when
            css
            authorization_code_expire
            id_token_expire
            access_token_expire
            cas_expire
            loginUrl
        }
    }
}
  EOS
  end

  module IsAppAuthorizedByUser
    Name = "isAppAuthorizedByUser"
    Query = <<-EOS
    query isAppAuthorizedByUser($userId: String, $appId: String){
    isAppAuthorizedByUser(userId: $userId, appId: $appId){
        authorized
    }
}
  EOS
  end

  module CheckIsReservedDomain
    Name = "checkIsReservedDomain"
    Query = <<-EOS
    query checkIsReservedDomain($domainValue: String!){
    checkIsReservedDomain(domainValue: $domainValue){
        domainValue
        isReserved
    }
}
  EOS
  end

  module ReadSystemPricing
    Name = "ReadSystemPricing"
    Query = <<-EOS
    query ReadSystemPricing{
    ReadSystemPricing{
        _id
        type
        startNumber
        freeNumber
        startPrice
        maxNumber
        d
        features
    }
}
  EOS
  end

  module ReadOrders
    Name = "ReadOrders"
    Query = <<-EOS
    query ReadOrders($user: String, $page: Int, $count: Int){
    ReadOrders(user: $user, page: $page, count: $count){
        list{
            _id
            client
            user
            timeOfPurchase
            flowNumber
            price
            createdAt
            completed
            payMethod
            endAt
        }
        totalCount
    }
}
  EOS
  end

  module ReadUserPricing
    Name = "ReadUserPricing"
    Query = <<-EOS
    query ReadUserPricing($userId: String, $clientId: String){
    ReadUserPricing(userId: $userId, clientId: $clientId){
        user
        client
        isFree
        pricing{
            number
        }
        freeNumber
    }
}
  EOS
  end

  module Users
    Name = "users"
    Query = <<-EOS
    query users($registerInClient: String, $page: Int, $count: Int, $populate: Boolean){
    users(registerInClient: $registerInClient, page: $page, count: $count, populate: $populate){
        list{
            _id
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            username
            nickname
            company
            photo
            browser
            device
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            customData
            metadata
        }
        totalCount
    }
}
  EOS
  end

  module UsersByOidcApp
    Name = "usersByOidcApp"
    Query = <<-EOS
    query usersByOidcApp($userPoolId: String, $page: Int, $count: Int, $appId: String){
    usersByOidcApp(userPoolId: $userPoolId, page: $page, count: $count, appId: $appId){
        list
        totalCount
    }
}
  EOS
  end

  module User
    Name = "user"
    Query = <<-EOS
    query user($id: String, $registerInClient: String, $token: String, $auth: Boolean, $userLoginHistoryPage: Int, $userLoginHistoryCount: Int){
    user(id: $id, registerInClient: $registerInClient, token: $token, auth: $auth, userLoginHistoryPage: $userLoginHistoryPage, userLoginHistoryCount: $userLoginHistoryCount){
        _id
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        username
        nickname
        company
        photo
        browser
        device
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        metadata
    }
}
  EOS
  end

  module UserAnalytics
    Name = "userAnalytics"
    Query = <<-EOS
    query userAnalytics($clientId: String){
    userAnalytics(clientId: $clientId){
        usersAddedToday{
            length
        }
        usersAddedLastWeek{
            length
        }
        usersLoginLastWeek{
            length
        }
        totalUsers{
            length
        }
        allUsers
        totalApps
    }
}
  EOS
  end

  module IsLoginExpired
    Name = "isLoginExpired"
    Query = <<-EOS
    query isLoginExpired($id: String!){
    isLoginExpired(id: $id)
}
  EOS
  end

  module Client
    Name = "client"
    Query = <<-EOS
    query client($id: String!, $userId: String!, $fromAdmin: Boolean){
    client(id: $id, userId: $userId, fromAdmin: $fromAdmin){
        _id
        user{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userPoolTypes{
            _id
            name
            description
            image
            example
        }
        usersCount
        logo
        emailVerifiedDefault
        sendWelcomeEmail
        registerDisabled
        showWXMPQRCode
        useMiniLogin
        useSelfWxapp
        allowedOrigins
        name
        secret
        token
        descriptions
        jwtExpired
        createdAt
        isDeleted
        frequentRegisterCheck{
            timeInterval
            limit
            enable
        }
        loginFailCheck{
            timeInterval
            limit
            enable
        }
        enableEmail
        changePhoneStrategy{
            verifyOldPhone
        }
        changeEmailStrategy{
            verifyOldEmail
        }
        qrcodeLoginStrategy{
            qrcodeExpiresAfter
            returnFullUserInfo
            allowExchangeUserInfoFromBrowser
            ticketExpiresAfter
        }
        app2WxappLoginStrategy{
            ticketExpriresAfter
            ticketExchangeUserInfoNeedSecret
        }
    }
}
  EOS
  end

  module UserClients
    Name = "userClients"
    Query = <<-EOS
    query userClients($userId: String!, $page: Int, $count: Int, $computeUsersCount: Boolean){
    userClients(userId: $userId, page: $page, count: $count, computeUsersCount: $computeUsersCount){
        list{
            _id
            usersCount
            logo
            emailVerifiedDefault
            sendWelcomeEmail
            registerDisabled
            showWXMPQRCode
            useMiniLogin
            useSelfWxapp
            allowedOrigins
            name
            secret
            token
            descriptions
            jwtExpired
            createdAt
            isDeleted
            enableEmail
        }
        totalCount
    }
}
  EOS
  end

  module SearchUser
    Name = "searchUser"
    Query = <<-EOS
    query searchUser($type: String!, $value: String!, $registerInClient: String!, $page: Int, $count: Int){
    searchUser(type: $type, value: $value, registerInClient: $registerInClient, page: $page, count: $count){
        list{
            _id
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            username
            nickname
            company
            photo
            browser
            device
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            customData
            metadata
        }
        totalCount
    }
}
  EOS
  end

  module UserClientTypes
    Name = "userClientTypes"
    Query = <<-EOS
    query userClientTypes{
    userClientTypes{
        _id
        name
        description
        image
        example
    }
}
  EOS
  end

  module IsClientOfUser
    Name = "isClientOfUser"
    Query = <<-EOS
    query isClientOfUser($email: String, $password: String, $clientId: String){
    isClientOfUser(email: $email, password: $password, clientId: $clientId)
}
  EOS
  end

  module GetAccessTokenByAppSecret
    Name = "getAccessTokenByAppSecret"
    Query = <<-EOS
    query getAccessTokenByAppSecret($secret: String, $clientId: String, $retUserId: Boolean, $timestamp: String, $signature: String, $nonce: Int){
    getAccessTokenByAppSecret(secret: $secret, clientId: $clientId, retUserId: $retUserId, timestamp: $timestamp, signature: $signature, nonce: $nonce)
}
  EOS
  end

  module LoginCount
    Name = "loginCount"
    Query = <<-EOS
    query loginCount($userId: String, $clientId: String, $month: String){
    loginCount(userId: $userId, clientId: $clientId, month: $month){
        _id
        client
        count
        month
        isError
        totalNumber
    }
}
  EOS
  end

  module QiNiuUploadToken
    Name = "qiNiuUploadToken"
    Query = <<-EOS
    query qiNiuUploadToken($type: String){
    qiNiuUploadToken(type: $type)
}
  EOS
  end

  module DecodeJwtToken
    Name = "decodeJwtToken"
    Query = <<-EOS
    query decodeJwtToken($token: String){
    decodeJwtToken(token: $token){
        data{
            email
            id
            clientId
            unionid
        }
        status{
            message
            code
            status
        }
        iat
        exp
    }
}
  EOS
  end

  module CheckLoginStatus
    Name = "checkLoginStatus"
    Query = <<-EOS
    query checkLoginStatus($token: String){
    checkLoginStatus(token: $token){
        message
        code
        status
        token{
            iat
            exp
        }
    }
}
  EOS
  end

  module GetAppSecretByClientId
    Name = "getAppSecretByClientId"
    Query = <<-EOS
    query getAppSecretByClientId($token: String, $clientId: String){
    getAppSecretByClientId(token: $token, clientId: $clientId){
        secret
        clientId
    }
}
  EOS
  end

  module PreviewEmailTemplate
    Name = "previewEmailTemplate"
    Query = <<-EOS
    query previewEmailTemplate($type: String, $client: String){
    previewEmailTemplate(type: $type, client: $client){
        message
        code
        status
    }
}
  EOS
  end

  module LoginHotDotPicData
    Name = "loginHotDotPicData"
    Query = <<-EOS
    query loginHotDotPicData($client: String){
    loginHotDotPicData(client: $client){
        list
    }
}
  EOS
  end

  module RegisterEveryDayCount
    Name = "registerEveryDayCount"
    Query = <<-EOS
    query registerEveryDayCount($client: String){
    registerEveryDayCount(client: $client){
        list
    }
}
  EOS
  end

  module Statistic
    Name = "statistic"
    Query = <<-EOS
    query statistic($sortBy: String, $page: Int, $count: Int){
    statistic(sortBy: $sortBy, page: $page, count: $count){
        list{
            _id
            username
            email
            loginsCount
            appsCount
            OAuthCount
        }
        totalCount
    }
}
  EOS
  end

  module UserClientList
    Name = "userClientList"
    Query = <<-EOS
    query userClientList($page: Int, $count: Int, $sortBy: String){
    userClientList(page: $page, count: $count, sortBy: $sortBy){
        list{
            _id
            name
            createdAt
            usersCount
        }
        totalCount
    }
}
  EOS
  end

  module UsersInGroup
    Name = "usersInGroup"
    Query = <<-EOS
    query usersInGroup($group: String, $page: Int, $count: Int){
    usersInGroup(group: $group, page: $page, count: $count){
        list{
            email
            username
            _id
            upgrade
        }
        totalCount
    }
}
  EOS
  end

  module QpsByTime
    Name = "qpsByTime"
    Query = <<-EOS
    query qpsByTime($startTime: String, $endTime: String, $currentTime: String){
    qpsByTime(startTime: $startTime, endTime: $endTime, currentTime: $currentTime){
        qps
        time
    }
}
  EOS
  end

  module TodayGeoDistribution
    Name = "todayGeoDistribution"
    Query = <<-EOS
    query todayGeoDistribution($today: String){
    todayGeoDistribution(today: $today){
        city
        size
        point
    }
}
  EOS
  end

  module FindClientsByIdArray
    Name = "findClientsByIdArray"
    Query = <<-EOS
    query findClientsByIdArray($clientsId: [String]){
    findClientsByIdArray(clientsId: $clientsId){
        list{
            _id
            name
            createdAt
            usersCount
        }
        totalCount
    }
}
  EOS
  end

  module RecentServiceCall
    Name = "recentServiceCall"
    Query = <<-EOS
    query recentServiceCall($today: String){
    recentServiceCall(today: $today){
        userService{
            day
            count
        }
        emailService{
            day
            count
        }
        oAuthService{
            day
            count
        }
        payService{
            day
            count
        }
    }
}
  EOS
  end

  module PlatformUserGrowthTrend
    Name = "platformUserGrowthTrend"
    Query = <<-EOS
    query platformUserGrowthTrend($today: String){
    platformUserGrowthTrend(today: $today){
        day
        count
    }
}
  EOS
  end

  module RequestList
    Name = "requestList"
    Query = <<-EOS
    query requestList($page: Int, $count: Int){
    requestList(page: $page, count: $count){
        totalCount
        list{
            _id
            when
            where
            ip
            size
            responseTime
            service
        }
    }
}
  EOS
  end

  module BindedOAuthList
    Name = "bindedOAuthList"
    Query = <<-EOS
    query bindedOAuthList($client: String!, $user: String){
    bindedOAuthList(client: $client, user: $user){
        _id
        user
        client
        type
        unionid
        userInfo
        createdAt
    }
}
  EOS
  end

  module UserPatch
    Name = "userPatch"
    Query = <<-EOS
    query userPatch($ids: String){
    userPatch(ids: $ids){
        list{
            _id
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            username
            nickname
            company
            photo
            browser
            device
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            customData
            metadata
        }
        totalCount
    }
}
  EOS
  end

  module IsClientBelongToUser
    Name = "isClientBelongToUser"
    Query = <<-EOS
    query isClientBelongToUser($userId: String, $clientId: String, $permissionDescriptors: [PermissionDescriptorsListInputType]){
    isClientBelongToUser(userId: $userId, clientId: $clientId, permissionDescriptors: $permissionDescriptors)
}
  EOS
  end

  module QueryClient
    Name = "queryClient"
    Query = <<-EOS
    query queryClient($id: String!){
    queryClient(id: $id){
        _id
        user{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userPoolTypes{
            _id
            name
            description
            image
            example
        }
        usersCount
        logo
        emailVerifiedDefault
        sendWelcomeEmail
        registerDisabled
        showWXMPQRCode
        useMiniLogin
        useSelfWxapp
        allowedOrigins
        name
        secret
        token
        descriptions
        jwtExpired
        createdAt
        isDeleted
        frequentRegisterCheck{
            timeInterval
            limit
            enable
        }
        loginFailCheck{
            timeInterval
            limit
            enable
        }
        enableEmail
        changePhoneStrategy{
            verifyOldPhone
        }
        changeEmailStrategy{
            verifyOldEmail
        }
        qrcodeLoginStrategy{
            qrcodeExpiresAfter
            returnFullUserInfo
            allowExchangeUserInfoFromBrowser
            ticketExpiresAfter
        }
        app2WxappLoginStrategy{
            ticketExpriresAfter
            ticketExchangeUserInfoNeedSecret
        }
    }
}
  EOS
  end

  module ClientRoles
    Name = "clientRoles"
    Query = <<-EOS
    query clientRoles($client: String!, $page: Int, $count: Int){
    clientRoles(client: $client, page: $page, count: $count){
        list{
            _id
            name
            descriptions
            client
            permissions
            createdAt
        }
        totalCount
    }
}
  EOS
  end

  module UserGroup
    Name = "userGroup"
    Query = <<-EOS
    query userGroup($group: String!, $client: String!, $page: Int, $count: Int){
    userGroup(group: $group, client: $client, page: $page, count: $count){
        list{
            _id
            createdAt
        }
        totalCount
    }
}
  EOS
  end

  module QueryRoleByUserId
    Name = "queryRoleByUserId"
    Query = <<-EOS
    query queryRoleByUserId($user: String!, $client: String!){
    queryRoleByUserId(user: $user, client: $client){
        list{
            _id
            createdAt
        }
        totalCount
    }
}
  EOS
  end

  module GetClientWhenSdkInit
    Name = "getClientWhenSdkInit"
    Query = <<-EOS
    query getClientWhenSdkInit($secret: String, $clientId: String, $retUserId: Boolean, $timestamp: String, $signature: String, $nonce: Int){
    getClientWhenSdkInit(secret: $secret, clientId: $clientId, retUserId: $retUserId, timestamp: $timestamp, signature: $signature, nonce: $nonce){
        clientInfo{
            _id
            usersCount
            logo
            emailVerifiedDefault
            sendWelcomeEmail
            registerDisabled
            showWXMPQRCode
            useMiniLogin
            useSelfWxapp
            allowedOrigins
            name
            secret
            token
            descriptions
            jwtExpired
            createdAt
            isDeleted
            enableEmail
        }
        accessToken
    }
}
  EOS
  end

  module GetWebhookDetail
    Name = "getWebhookDetail"
    Query = <<-EOS
    query getWebhookDetail($client: String!){
    getWebhookDetail(client: $client){
        _id
        client
        events{
            name
            label
            description
        }
        url
        isLastTimeSuccess
        contentType
        secret
        enable
    }
}
  EOS
  end

  module GetAllWebhooks
    Name = "getAllWebhooks"
    Query = <<-EOS
    query getAllWebhooks($client: String!){
    getAllWebhooks(client: $client){
        _id
        client
        events{
            name
            label
            description
        }
        url
        isLastTimeSuccess
        contentType
        secret
        enable
    }
}
  EOS
  end

  module GetWebhookLogDetail
    Name = "getWebhookLogDetail"
    Query = <<-EOS
    query getWebhookLogDetail($id: String!){
    getWebhookLogDetail(id: $id){
        _id
        webhook
        client
        event
        request{
            headers
            payload
        }
        response{
            headers
            body
            statusCode
        }
        errorMessage
        when
    }
}
  EOS
  end

  module GetWebhookLogs
    Name = "getWebhookLogs"
    Query = <<-EOS
    query getWebhookLogs($webhook: String!){
    getWebhookLogs(webhook: $webhook){
        _id
        webhook
        client
        event
        request{
            headers
            payload
        }
        response{
            headers
            body
            statusCode
        }
        errorMessage
        when
    }
}
  EOS
  end

  module GetWebhookSettingOptions
    Name = "getWebhookSettingOptions"
    Query = <<-EOS
    query getWebhookSettingOptions{
    getWebhookSettingOptions{
        webhookEvents{
            name
            label
            description
        }
        contentTypes{
            name
            label
        }
    }
}
  EOS
  end

  module QueryCollaborativeUserPoolByUserId
    Name = "queryCollaborativeUserPoolByUserId"
    Query = <<-EOS
    query queryCollaborativeUserPoolByUserId($userId: String!, $page: Int, $count: Int){
    queryCollaborativeUserPoolByUserId(userId: $userId, page: $page, count: $count){
        list{
            _id
            createdAt
        }
        totalCount
    }
}
  EOS
  end

  module QueryCollaboratorsByUserPoolId
    Name = "queryCollaboratorsByUserPoolId"
    Query = <<-EOS
    query queryCollaboratorsByUserPoolId($userPoolId: String!, $count: Int, $page: Int){
    queryCollaboratorsByUserPoolId(userPoolId: $userPoolId, count: $count, page: $page){
        collaborationId
        list{
            _id
            createdAt
        }
    }
}
  EOS
  end

  module QueryCollaboratorPermissions
    Name = "queryCollaboratorPermissions"
    Query = <<-EOS
    query queryCollaboratorPermissions($userId: String, $collaborationId: String){
    queryCollaboratorPermissions(userId: $userId, collaborationId: $collaborationId){
        collaborator{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        list{
            permissionId
            name
            operationAllow
        }
    }
}
  EOS
  end

  module QueryPasswordStrengthSettingsByUserPoolId
    Name = "queryPasswordStrengthSettingsByUserPoolId"
    Query = <<-EOS
    query queryPasswordStrengthSettingsByUserPoolId($userPoolId: String!){
    queryPasswordStrengthSettingsByUserPoolId(userPoolId: $userPoolId){
        userPoolId
        pwdStrength
    }
}
  EOS
  end

  module QueryCollaborationByUserPoolIdAndUserId
    Name = "queryCollaborationByUserPoolIdAndUserId"
    Query = <<-EOS
    query queryCollaborationByUserPoolIdAndUserId($userId: String!, $userPoolId: String!){
    queryCollaborationByUserPoolIdAndUserId(userId: $userId, userPoolId: $userPoolId){
        _id
        createdAt
        owner{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        collaborator{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        userPool{
            _id
            usersCount
            logo
            emailVerifiedDefault
            sendWelcomeEmail
            registerDisabled
            showWXMPQRCode
            useMiniLogin
            useSelfWxapp
            allowedOrigins
            name
            secret
            token
            descriptions
            jwtExpired
            createdAt
            isDeleted
            enableEmail
        }
        permissionDescriptors{
            permissionId
            name
            operationAllow
        }
    }
}
  EOS
  end

  module QueryPermissionList
    Name = "queryPermissionList"
    Query = <<-EOS
    query queryPermissionList{
    queryPermissionList{
        list{
            _id
            name
            affect
            description
        }
        totalCount
    }
}
  EOS
  end

  module SearchUserBasicInfoById
    Name = "searchUserBasicInfoById"
    Query = <<-EOS
    query searchUserBasicInfoById($userId: String){
    searchUserBasicInfoById(userId: $userId){
        _id
        username
        photo
        email
    }
}
  EOS
  end

  module QueryPasswordFaasEnabled
    Name = "queryPasswordFaasEnabled"
    Query = <<-EOS
    query queryPasswordFaasEnabled($client: String!){
    queryPasswordFaasEnabled(client: $client){
        encryptUrl
        decryptUrl
        user
        client
        logs
        enable
        createdAt
        updatedAt
    }
}
  EOS
  end

  module EmailDomainTopNList
    Name = "emailDomainTopNList"
    Query = <<-EOS
    query emailDomainTopNList($userPoolId: String!){
    emailDomainTopNList(userPoolId: $userPoolId){
        domain
        count
    }
}
  EOS
  end

  module RegisterMethodTopList
    Name = "registerMethodTopList"
    Query = <<-EOS
    query registerMethodTopList($userPoolId: String!){
    registerMethodTopList(userPoolId: $userPoolId){
        method
        count
    }
}
  EOS
  end

  module QuerySMSSendCount
    Name = "querySMSSendCount"
    Query = <<-EOS
    query querySMSSendCount($userPoolId: String!){
    querySMSSendCount(userPoolId: $userPoolId){
        count
        limitCount
    }
}
  EOS
  end

  module QueryInvitation
    Name = "queryInvitation"
    Query = <<-EOS
    query queryInvitation($client: String!){
    queryInvitation(client: $client){
        client
        phone
        isDeleted
        createdAt
        updatedAt
    }
}
  EOS
  end

  module QueryInvitationState
    Name = "queryInvitationState"
    Query = <<-EOS
    query queryInvitationState($client: String!){
    queryInvitationState(client: $client){
        client
        enablePhone
        createdAt
        updatedAt
    }
}
  EOS
  end

  module QueryMFA
    Name = "queryMFA"
    Query = <<-EOS
    query queryMFA($_id: String, $userId: String, $userPoolId: String){
    queryMFA(_id: $_id, userId: $userId, userPoolId: $userPoolId){
        _id
        userId
        userPoolId
        enable
        shareKey
    }
}
  EOS
  end

  module QueryAuthorizedUserPool
    Name = "queryAuthorizedUserPool"
    Query = <<-EOS
    query queryAuthorizedUserPool($unionid: String, $phone: String, $openid: String, $page: Int, $count: Int){
    queryAuthorizedUserPool(unionid: $unionid, phone: $phone, openid: $openid, page: $page, count: $count){
        list{
            userId
        }
        total
    }
}
  EOS
  end

  module GetCustomMFA
    Name = "getCustomMFA"
    Query = <<-EOS
    query getCustomMFA($userIdInMiniLogin: String!, $page: Int, $count: Int){
    getCustomMFA(userIdInMiniLogin: $userIdInMiniLogin, page: $page, count: $count){
        list{
            _id
            userIdInMiniLogin
            remark
            name
            secret
        }
        total
    }
}
  EOS
  end

  module ValidatePassword
    Name = "validatePassword"
    Query = <<-EOS
    query validatePassword($userPool: String!, $password: String!, $encryptedPassword: String!){
    validatePassword(userPool: $userPool, password: $password, encryptedPassword: $encryptedPassword){
        isValid
    }
}
  EOS
  end

  module GetUserLoginAreaStatisticOfClient
    Name = "getUserLoginAreaStatisticOfClient"
    Query = <<-EOS
    query getUserLoginAreaStatisticOfClient($userPool: String!, $start: String, $end: String){
    getUserLoginAreaStatisticOfClient(userPool: $userPool, start: $start, end: $end)
}
  EOS
  end

  module GetUserPoolSettings
    Name = "getUserPoolSettings"
    Query = <<-EOS
    query getUserPoolSettings($userPoolId: String!){
    getUserPoolSettings(userPoolId: $userPoolId){
        _id
        user{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userPoolTypes{
            _id
            name
            description
            image
            example
        }
        usersCount
        logo
        emailVerifiedDefault
        sendWelcomeEmail
        registerDisabled
        showWXMPQRCode
        useMiniLogin
        useSelfWxapp
        allowedOrigins
        name
        secret
        token
        descriptions
        jwtExpired
        createdAt
        isDeleted
        frequentRegisterCheck{
            timeInterval
            limit
            enable
        }
        loginFailCheck{
            timeInterval
            limit
            enable
        }
        enableEmail
        changePhoneStrategy{
            verifyOldPhone
        }
        changeEmailStrategy{
            verifyOldEmail
        }
        qrcodeLoginStrategy{
            qrcodeExpiresAfter
            returnFullUserInfo
            allowExchangeUserInfoFromBrowser
            ticketExpiresAfter
        }
        app2WxappLoginStrategy{
            ticketExpriresAfter
            ticketExchangeUserInfoNeedSecret
        }
    }
}
  EOS
  end

  module QueryAuthAuditRecords
    Name = "queryAuthAuditRecords"
    Query = <<-EOS
    query queryAuthAuditRecords($userPoolId: String!, $sortBy: String, $page: Int, $count: Int){
    queryAuthAuditRecords(userPoolId: $userPoolId, sortBy: $sortBy, page: $page, count: $count){
        list{
            userPoolId
            appType
            appId
            event
            userId
            createdAt
        }
        totalCount
    }
}
  EOS
  end

  module QueryUserPoolCommonInfo
    Name = "queryUserPoolCommonInfo"
    Query = <<-EOS
    query queryUserPoolCommonInfo($userPoolId: String!){
    queryUserPoolCommonInfo(userPoolId: $userPoolId){
        _id
        changePhoneStrategy{
            verifyOldPhone
        }
        changeEmailStrategy{
            verifyOldEmail
        }
    }
}
  EOS
  end

  module IsDomainAvaliable
    Name = "isDomainAvaliable"
    Query = <<-EOS
    query isDomainAvaliable($domain: String!){
    isDomainAvaliable(domain: $domain)
}
  EOS
  end

  module CheckPhoneCode
    Name = "checkPhoneCode"
    Query = <<-EOS
    query checkPhoneCode($userPoolId: String!, $phone: String!, $phoneCode: String!){
    checkPhoneCode(userPoolId: $userPoolId, phone: $phone, phoneCode: $phoneCode){
        message
        code
        status
    }
}
  EOS
  end

  module UserExist
    Name = "userExist"
    Query = <<-EOS
    query userExist($userPoolId: String!, $email: String, $phone: String, $username: String){
    userExist(userPoolId: $userPoolId, email: $email, phone: $phone, username: $username)
}
  EOS
  end

  module AdConnectorByProvider
    Name = "adConnectorByProvider"
    Query = <<-EOS
    query adConnectorByProvider($providerId: String!, $providerType: providerType!){
    adConnectorByProvider(providerId: $providerId, providerType: $providerType){
        _id
        name
        logo
        status
    }
}
  EOS
  end

  module IsAdConnectorAlive
    Name = "isAdConnectorAlive"
    Query = <<-EOS
    query isAdConnectorAlive($adConnectorId: String){
    isAdConnectorAlive(adConnectorId: $adConnectorId){
        isAlive
    }
}
  EOS
  end

  module AdConnectorList
    Name = "adConnectorList"
    Query = <<-EOS
    query adConnectorList($userPoolId: String!, $providerType: providerType){
    adConnectorList(userPoolId: $userPoolId, providerType: $providerType){
        _id
        name
        secret
        salt
        logo
        enabled
        userPoolId
        status
        createdAt
    }
}
  EOS
  end

  module ProviderListByADConnector
    Name = "providerListByADConnector"
    Query = <<-EOS
    query providerListByADConnector($_id: String!){
    providerListByADConnector(_id: $_id){
        providerType
        providerId
        userPoolId
        adConnectorId
    }
}
  EOS
  end

  module CheckAdConnectorStatus
    Name = "checkAdConnectorStatus"
    Query = <<-EOS
    query checkAdConnectorStatus($adConnectorId: String!){
    checkAdConnectorStatus(adConnectorId: $adConnectorId)
}
  EOS
  end

  module RbacRole
    Name = "rbacRole"
    Query = <<-EOS
    query rbacRole($sortBy: SortByEnum, $page: Int, $count: Int, $_id: String!){
    rbacRole(_id: $_id){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RbacRoleList
    Name = "rbacRoleList"
    Query = <<-EOS
    query rbacRoleList($userPoolId: String!, $sortBy: SortByEnum, $page: Int, $count: Int){
    rbacRoleList(userPoolId: $userPoolId, sortBy: $sortBy, page: $page, count: $count){
        totalCount
        list{
            _id
            userPoolId
            name
            description
            createdAt
            updatedAt
        }
    }
}
  EOS
  end

  module RbacGroup
    Name = "rbacGroup"
    Query = <<-EOS
    query rbacGroup($sortBy: SortByEnum, $page: Int, $count: Int, $_id: String!){
    rbacGroup(_id: $_id){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RbacGroupList
    Name = "rbacGroupList"
    Query = <<-EOS
    query rbacGroupList($userPoolId: String!, $sortBy: SortByEnum, $page: Int, $count: Int){
    rbacGroupList(userPoolId: $userPoolId, sortBy: $sortBy, page: $page, count: $count){
        totalCount
        list{
            _id
            userPoolId
            name
            description
            createdAt
            updatedAt
        }
    }
}
  EOS
  end

  module RbacPermission
    Name = "rbacPermission"
    Query = <<-EOS
    query rbacPermission($_id: String!){
    rbacPermission(_id: $_id){
        _id
        name
        userPoolId
        createdAt
        updatedAt
        description
    }
}
  EOS
  end

  module RbacPermissionList
    Name = "rbacPermissionList"
    Query = <<-EOS
    query rbacPermissionList($userPoolId: String!, $sortBy: SortByEnum, $page: Int, $count: Int){
    rbacPermissionList(userPoolId: $userPoolId, sortBy: $sortBy, page: $page, count: $count){
        totalCount
        list{
            _id
            name
            userPoolId
            createdAt
            updatedAt
            description
        }
    }
}
  EOS
  end

  module UserPermissionList
    Name = "userPermissionList"
    Query = <<-EOS
    query userPermissionList($_id: String!){
    userPermissionList(_id: $_id){
        totalCount
        list{
            _id
            name
            userPoolId
            createdAt
            updatedAt
            description
        }
        rawList
    }
}
  EOS
  end

  module UserGroupList
    Name = "userGroupList"
    Query = <<-EOS
    query userGroupList($_id: String!){
    userGroupList(_id: $_id){
        totalCount
        list{
            _id
            userPoolId
            name
            description
            createdAt
            updatedAt
        }
        rawList
    }
}
  EOS
  end

  module UserRoleList
    Name = "userRoleList"
    Query = <<-EOS
    query userRoleList($_id: String!){
    userRoleList(_id: $_id){
        totalCount
        list{
            _id
            userPoolId
            name
            description
            createdAt
            updatedAt
        }
        rawList
    }
}
  EOS
  end

  module Org
    Name = "org"
    Query = <<-EOS
    query org($_id: String!){
    org(_id: $_id){
        _id
        nodes{
            _id
            name
            description
            createdAt
            updatedAt
            children
            root
        }
    }
}
  EOS
  end

  module Orgs
    Name = "orgs"
    Query = <<-EOS
    query orgs($userPoolId: String!){
    orgs(userPoolId: $userPoolId){
        totalCount
        list{
            _id
        }
    }
}
  EOS
  end

  module OrgRootNode
    Name = "orgRootNode"
    Query = <<-EOS
    query orgRootNode($sortBy: SortByEnum, $page: Int, $count: Int, $_id: String!){
    orgRootNode(_id: $_id){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module OrgChildrenNodes
    Name = "orgChildrenNodes"
    Query = <<-EOS
    query orgChildrenNodes($input: OrgChildrenNodesInput!){
    orgChildrenNodes(input: $input){
        group{
            _id
            userPoolId
            name
            description
            createdAt
            updatedAt
        }
        depth
    }
}
  EOS
  end

  module IsRootNodeOfOrg
    Name = "isRootNodeOfOrg"
    Query = <<-EOS
    query isRootNodeOfOrg($input: IsRootNodeOfOrgInput!){
    isRootNodeOfOrg(input: $input)
}
  EOS
  end

  module OrgNodeUserList
    Name = "orgNodeUserList"
    Query = <<-EOS
    query orgNodeUserList($orgId: String!, $nodeId: String!, $page: Int, $count: Int, $includeChildrenNodes: Boolean){
    orgNodeUserList(orgId: $orgId, nodeId: $nodeId, page: $page, count: $count, includeChildrenNodes: $includeChildrenNodes){
        list{
            _id
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            username
            nickname
            company
            photo
            browser
            device
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            customData
            metadata
        }
        totalCount
    }
}
  EOS
  end

  module RuleById
    Name = "ruleById"
    Query = <<-EOS
    query ruleById($_id: String!){
    ruleById(_id: $_id){
        _id
        userPoolId
        name
        description
        type
        enabled
        faasUrl
        code
        order
        async
        createdAt
        updatedAt
    }
}
  EOS
  end

  module Rules
    Name = "rules"
    Query = <<-EOS
    query rules($userPoolId: String!){
    rules(userPoolId: $userPoolId){
        totalCount
        list{
            _id
            userPoolId
            name
            description
            type
            enabled
            faasUrl
            code
            order
            async
            createdAt
            updatedAt
        }
    }
}
  EOS
  end

  module RuleEnv
    Name = "ruleEnv"
    Query = <<-EOS
    query ruleEnv($userPoolId: String!){
    ruleEnv(userPoolId: $userPoolId){
        totalCount
        list{
            key
            value
        }
    }
}
  EOS
  end

  module QueryOperationLogs
    Name = "queryOperationLogs"
    Query = <<-EOS
    query queryOperationLogs($userPoolId: String!, $coll: String!, $page: Int, $count: Int){
    queryOperationLogs(userPoolId: $userPoolId, coll: $coll, page: $page, count: $count){
        totalCount
        list{
            operatorId
            operatorName
            operatorAvatar
            isAdmin
            isCollaborator
            isOwner
            operationType
            updatedFields
            removedFields
            operateAt
            fullDocument
            coll
        }
    }
}
  EOS
  end

  module UserMetadata
    Name = "userMetadata"
    Query = <<-EOS
    query userMetadata($_id: String!){
    userMetadata(_id: $_id){
        totalCount
        list{
            key
            value
        }
    }
}
  EOS
  end

  module SendEmail
    Name = "SendEmail"
    Query = <<-EOS
    mutation SendEmail($receivers: [String]!, $subject: String!, $client: String!, $user: String, $testAvailable: Boolean, $providerName: String, $content: String, $sender: String, $meta_data: String, $secret: String){
    SendEmail(receivers: $receivers, subject: $subject, client: $client, user: $user, testAvailable: $testAvailable, providerName: $providerName, content: $content, sender: $sender, meta_data: $meta_data, secret: $secret){
        _id
        user
        subject
        content
        sender
        receivers
        post
        createdAt
        rejected
        isDeleted
        client
    }
}
  EOS
  end

  module AddEmailProvider
    Name = "AddEmailProvider"
    Query = <<-EOS
    mutation AddEmailProvider($options: EmailProviderListInput){
    AddEmailProvider(options: $options){
        _id
        name
        image
        description
        fields{
            label
            type
            placeholder
            help
            value
            options
        }
        client
        user
        status
        provider{
            _id
            name
            image
            description
            client
            user
            status
        }
    }
}
  EOS
  end

  module RemoveEmailProvider
    Name = "RemoveEmailProvider"
    Query = <<-EOS
    mutation RemoveEmailProvider($_ids: [String]!){
    RemoveEmailProvider(_ids: $_ids){
        _id
        name
        image
        description
        fields{
            label
            type
            placeholder
            help
            value
            options
        }
        client
        user
        status
        provider{
            _id
            name
            image
            description
            client
            user
            status
        }
    }
}
  EOS
  end

  module UpdateEmailProvider
    Name = "UpdateEmailProvider"
    Query = <<-EOS
    mutation UpdateEmailProvider($options: EmailProviderListInput){
    UpdateEmailProvider(options: $options){
        _id
        name
        image
        description
        fields{
            label
            type
            placeholder
            help
            value
            options
        }
        client
        user
        status
        provider{
            _id
            name
            image
            description
            client
            user
            status
        }
    }
}
  EOS
  end

  module SaveEmailProviderWithClient
    Name = "SaveEmailProviderWithClient"
    Query = <<-EOS
    mutation SaveEmailProviderWithClient($options: EmailProviderWithClientAddInput){
    SaveEmailProviderWithClient(options: $options){
        _id
        user
        client
        status
        fields{
            label
            type
            placeholder
            help
            value
            options
        }
        provider{
            _id
            name
            image
            description
        }
    }
}
  EOS
  end

  module UpdateEmailTemplateWithClient
    Name = "UpdateEmailTemplateWithClient"
    Query = <<-EOS
    mutation UpdateEmailTemplateWithClient($options: EmailTemplateWithClientInput!){
    UpdateEmailTemplateWithClient(options: $options){
        _id
        user
        client
        status
        fields{
            label
            type
            placeholder
            help
            value
            options
        }
        provider{
            _id
            name
            image
            description
        }
    }
}
  EOS
  end

  module SendEmailByType
    Name = "SendEmailByType"
    Query = <<-EOS
    mutation SendEmailByType($user: String!, $type: String!, $client: String!, $receivers: [String]!, $meta_data: String){
    SendEmailByType(user: $user, type: $type, client: $client, receivers: $receivers, meta_data: $meta_data){
        _id
        user
        subject
        content
        sender
        receivers
        post
        createdAt
        rejected
        isDeleted
        client
    }
}
  EOS
  end

  module UseDefaultEmailProvider
    Name = "UseDefaultEmailProvider"
    Query = <<-EOS
    mutation UseDefaultEmailProvider($user: String!, $client: String!){
    UseDefaultEmailProvider(user: $user, client: $client)
}
  EOS
  end

  module UpdateEmailTemplate
    Name = "UpdateEmailTemplate"
    Query = <<-EOS
    mutation UpdateEmailTemplate($options: EmailTemplateInput!){
    UpdateEmailTemplate(options: $options){
        _id
        type
        sender
        object
        hasURL
        URLExpireTime
        status
        redirectTo
        content
    }
}
  EOS
  end

  module AddOAuthList
    Name = "AddOAuthList"
    Query = <<-EOS
    mutation AddOAuthList($options: OAuthListUpdateInput, $fields: [OAuthListFieldsFormUpdateInput]){
    AddOAuthList(options: $options, fields: $fields){
        _id
        name
        alias
        image
        description
        enabled
        url
        client
        user
        oAuthUrl
        wxappLogo
        fields{
            label
            type
            placeholder
            value
            checked
        }
        oauth{
            _id
            name
            alias
            image
            description
            enabled
            url
            client
            user
            oAuthUrl
            wxappLogo
        }
    }
}
  EOS
  end

  module RemoveOAuthList
    Name = "RemoveOAuthList"
    Query = <<-EOS
    mutation RemoveOAuthList($ids: [String]){
    RemoveOAuthList(ids: $ids)
}
  EOS
  end

  module RemoveOAuthProvider
    Name = "RemoveOAuthProvider"
    Query = <<-EOS
    mutation RemoveOAuthProvider($appId: String!, $clientId: String!){
    RemoveOAuthProvider(appId: $appId, clientId: $clientId){
        _id
        name
        domain
        image
        redirectUris
        appSecret
        client_id
        clientId
        grants
        description
        homepageURL
        isDeleted
        when
        css
        loginUrl
        casExpire
    }
}
  EOS
  end

  module UpdateOAuthList
    Name = "UpdateOAuthList"
    Query = <<-EOS
    mutation UpdateOAuthList($options: OAuthListUpdateInput, $fields: [OAuthListFieldsFormUpdateInput]){
    UpdateOAuthList(options: $options, fields: $fields){
        _id
        name
        alias
        image
        description
        enabled
        url
        client
        user
        oAuthUrl
        wxappLogo
        fields{
            label
            type
            placeholder
            value
            checked
        }
        oauth{
            _id
            name
            alias
            image
            description
            enabled
            url
            client
            user
            oAuthUrl
            wxappLogo
        }
    }
}
  EOS
  end

  module UpdateApplicationOAuth
    Name = "UpdateApplicationOAuth"
    Query = <<-EOS
    mutation UpdateApplicationOAuth($client: String, $oauth: String, $user: String, $alias: String, $fields: [OAuthListFieldsFormUpdateInput]){
    UpdateApplicationOAuth(client: $client, oauth: $oauth, user: $user, alias: $alias, fields: $fields){
        _id
        name
        alias
        image
        description
        enabled
        url
        client
        user
        oAuthUrl
        wxappLogo
        fields{
            label
            type
            placeholder
            value
            checked
        }
        oauth{
            _id
            name
            alias
            image
            description
            enabled
            url
            client
            user
            oAuthUrl
            wxappLogo
        }
    }
}
  EOS
  end

  module SetApplicationOAuthEnableOrDisable
    Name = "SetApplicationOAuthEnableOrDisable"
    Query = <<-EOS
    mutation SetApplicationOAuthEnableOrDisable($client: String, $oauth: String, $user: String, $enabled: Boolean){
    SetApplicationOAuthEnableOrDisable(client: $client, oauth: $oauth, user: $user, enabled: $enabled){
        _id
        name
        alias
        image
        description
        enabled
        url
        client
        user
        oAuthUrl
        wxappLogo
        fields{
            label
            type
            placeholder
            value
            checked
        }
        oauth{
            _id
            name
            alias
            image
            description
            enabled
            url
            client
            user
            oAuthUrl
            wxappLogo
        }
    }
}
  EOS
  end

  module CreateOAuthProvider
    Name = "CreateOAuthProvider"
    Query = <<-EOS
    mutation CreateOAuthProvider($name: String!, $domain: String!, $redirectUris: [String]!, $grants: [String!]!, $clientId: String, $image: String, $description: String, $homepageURL: String, $casExpire: Int){
    CreateOAuthProvider(name: $name, domain: $domain, redirectUris: $redirectUris, grants: $grants, clientId: $clientId, image: $image, description: $description, homepageURL: $homepageURL, casExpire: $casExpire){
        _id
        name
        domain
        image
        redirectUris
        appSecret
        client_id
        clientId
        grants
        description
        homepageURL
        isDeleted
        when
        css
        loginUrl
        casExpire
    }
}
  EOS
  end

  module UpdateOAuthProvider
    Name = "UpdateOAuthProvider"
    Query = <<-EOS
    mutation UpdateOAuthProvider($appId: String!, $domain: String, $name: String, $image: String, $redirectUris: [String], $grants: [String], $description: String, $homepageURL: String, $css: String, $casExpire: Int){
    UpdateOAuthProvider(appId: $appId, domain: $domain, name: $name, image: $image, redirectUris: $redirectUris, grants: $grants, description: $description, homepageURL: $homepageURL, css: $css, casExpire: $casExpire){
        _id
        name
        domain
        image
        redirectUris
        appSecret
        client_id
        clientId
        grants
        description
        homepageURL
        isDeleted
        when
        css
        loginUrl
        casExpire
    }
}
  EOS
  end

  module CreateOIDCApp
    Name = "CreateOIDCApp"
    Query = <<-EOS
    mutation CreateOIDCApp($name: String!, $domain: String!, $redirect_uris: [String]!, $grant_types: [String!]!, $response_types: [String!]!, $clientId: String, $client_id: String, $token_endpoint_auth_method: String, $image: String, $isDefault: Boolean, $id_token_signed_response_alg: String, $id_token_encrypted_response_alg: String, $id_token_encrypted_response_enc: String, $userinfo_signed_response_alg: String, $userinfo_encrypted_response_alg: String, $userinfo_encrypted_response_enc: String, $request_object_signing_alg: String, $request_object_encryption_alg: String, $request_object_encryption_enc: String, $jwks_uri: String, $_jwks_uri: String, $jwks: String, $_jwks: String, $custom_jwks: String, $description: String, $homepageURL: String, $authorization_code_expire: String, $id_token_expire: String, $access_token_expire: String, $cas_expire: String, $customStyles: OIDCProviderCustomStylesInput){
    CreateOIDCApp(name: $name, domain: $domain, redirect_uris: $redirect_uris, grant_types: $grant_types, response_types: $response_types, clientId: $clientId, client_id: $client_id, token_endpoint_auth_method: $token_endpoint_auth_method, image: $image, isDefault: $isDefault, id_token_signed_response_alg: $id_token_signed_response_alg, id_token_encrypted_response_alg: $id_token_encrypted_response_alg, id_token_encrypted_response_enc: $id_token_encrypted_response_enc, userinfo_signed_response_alg: $userinfo_signed_response_alg, userinfo_encrypted_response_alg: $userinfo_encrypted_response_alg, userinfo_encrypted_response_enc: $userinfo_encrypted_response_enc, request_object_signing_alg: $request_object_signing_alg, request_object_encryption_alg: $request_object_encryption_alg, request_object_encryption_enc: $request_object_encryption_enc, jwks_uri: $jwks_uri, _jwks_uri: $_jwks_uri, jwks: $jwks, _jwks: $_jwks, custom_jwks: $custom_jwks, description: $description, homepageURL: $homepageURL, authorization_code_expire: $authorization_code_expire, id_token_expire: $id_token_expire, access_token_expire: $access_token_expire, cas_expire: $cas_expire, customStyles: $customStyles){
        _id
        name
        domain
        image
        redirect_uris
        client_id
        client_secret
        token_endpoint_auth_method
        id_token_signed_response_alg
        id_token_encrypted_response_alg
        id_token_encrypted_response_enc
        userinfo_signed_response_alg
        userinfo_encrypted_response_alg
        userinfo_encrypted_response_enc
        request_object_signing_alg
        request_object_encryption_alg
        request_object_encryption_enc
        jwks_uri
        _jwks_uri
        custom_jwks
        jwks
        _jwks
        clientId
        grant_types
        response_types
        description
        homepageURL
        isDeleted
        isDefault
        when
        css
        authorization_code_expire
        id_token_expire
        access_token_expire
        cas_expire
        loginUrl
        customStyles{
            forceLogin
            hideQRCode
            hideUP
            hideUsername
            hideRegister
            hidePhone
            hideSocial
            hideClose
            hidePhonePassword
            defaultLoginMethod
        }
    }
}
  EOS
  end

  module UpdateOIDCApp
    Name = "UpdateOIDCApp"
    Query = <<-EOS
    mutation UpdateOIDCApp($appId: String!, $domain: String, $name: String, $image: String, $redirect_uris: [String], $token_endpoint_auth_method: String, $grant_types: [String], $response_types: [String], $id_token_signed_response_alg: String, $id_token_encrypted_response_alg: String, $id_token_encrypted_response_enc: String, $userinfo_signed_response_alg: String, $userinfo_encrypted_response_alg: String, $userinfo_encrypted_response_enc: String, $request_object_signing_alg: String, $request_object_encryption_alg: String, $request_object_encryption_enc: String, $jwks_uri: String, $_jwks_uri: String, $custom_jwks: String, $jwks: String, $_jwks: String, $description: String, $homepageURL: String, $css: String, $authorization_code_expire: String, $id_token_expire: String, $access_token_expire: String, $cas_expire: String, $customStyles: OIDCProviderCustomStylesInput){
    UpdateOIDCApp(appId: $appId, domain: $domain, name: $name, image: $image, redirect_uris: $redirect_uris, token_endpoint_auth_method: $token_endpoint_auth_method, grant_types: $grant_types, response_types: $response_types, id_token_signed_response_alg: $id_token_signed_response_alg, id_token_encrypted_response_alg: $id_token_encrypted_response_alg, id_token_encrypted_response_enc: $id_token_encrypted_response_enc, userinfo_signed_response_alg: $userinfo_signed_response_alg, userinfo_encrypted_response_alg: $userinfo_encrypted_response_alg, userinfo_encrypted_response_enc: $userinfo_encrypted_response_enc, request_object_signing_alg: $request_object_signing_alg, request_object_encryption_alg: $request_object_encryption_alg, request_object_encryption_enc: $request_object_encryption_enc, jwks_uri: $jwks_uri, _jwks_uri: $_jwks_uri, custom_jwks: $custom_jwks, jwks: $jwks, _jwks: $_jwks, description: $description, homepageURL: $homepageURL, css: $css, authorization_code_expire: $authorization_code_expire, id_token_expire: $id_token_expire, access_token_expire: $access_token_expire, cas_expire: $cas_expire, customStyles: $customStyles){
        _id
        name
        domain
        image
        redirect_uris
        client_id
        client_secret
        token_endpoint_auth_method
        id_token_signed_response_alg
        id_token_encrypted_response_alg
        id_token_encrypted_response_enc
        userinfo_signed_response_alg
        userinfo_encrypted_response_alg
        userinfo_encrypted_response_enc
        request_object_signing_alg
        request_object_encryption_alg
        request_object_encryption_enc
        jwks_uri
        _jwks_uri
        custom_jwks
        jwks
        _jwks
        clientId
        grant_types
        response_types
        description
        homepageURL
        isDeleted
        isDefault
        when
        css
        authorization_code_expire
        id_token_expire
        access_token_expire
        cas_expire
        loginUrl
        customStyles{
            forceLogin
            hideQRCode
            hideUP
            hideUsername
            hideRegister
            hidePhone
            hideSocial
            hideClose
            hidePhonePassword
            defaultLoginMethod
        }
    }
}
  EOS
  end

  module RemoveOIDCApp
    Name = "RemoveOIDCApp"
    Query = <<-EOS
    mutation RemoveOIDCApp($appId: String!, $clientId: String!){
    RemoveOIDCApp(appId: $appId, clientId: $clientId){
        _id
        name
        domain
        image
        redirect_uris
        client_id
        client_secret
        token_endpoint_auth_method
        id_token_signed_response_alg
        id_token_encrypted_response_alg
        id_token_encrypted_response_enc
        userinfo_signed_response_alg
        userinfo_encrypted_response_alg
        userinfo_encrypted_response_enc
        request_object_signing_alg
        request_object_encryption_alg
        request_object_encryption_enc
        jwks_uri
        _jwks_uri
        custom_jwks
        jwks
        _jwks
        clientId
        grant_types
        response_types
        description
        homepageURL
        isDeleted
        isDefault
        when
        css
        authorization_code_expire
        id_token_expire
        access_token_expire
        cas_expire
        loginUrl
        customStyles{
            forceLogin
            hideQRCode
            hideUP
            hideUsername
            hideRegister
            hidePhone
            hideSocial
            hideClose
            hidePhonePassword
            defaultLoginMethod
        }
    }
}
  EOS
  end

  module CreateSAMLServiceProvider
    Name = "CreateSAMLServiceProvider"
    Query = <<-EOS
    mutation CreateSAMLServiceProvider($name: String!, $domain: String!, $clientId: String!, $redirectUrl: String!, $description: String, $SPMetadata: String, $IdPMetadata: String, $image: String, $mappings: AssertionMapInputType, $defaultIdPMapId: String){
    CreateSAMLServiceProvider(name: $name, domain: $domain, clientId: $clientId, redirectUrl: $redirectUrl, description: $description, SPMetadata: $SPMetadata, IdPMetadata: $IdPMetadata, image: $image, mappings: $mappings, defaultIdPMapId: $defaultIdPMapId){
        _id
        name
        domain
        image
        appSecret
        defaultIdPMap{
            _id
            name
            image
            description
            isDeleted
        }
        defaultIdPMapId
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        IdPMetadata
        IdPEntityID
        assertionConsumeService{
            binding
            url
            isDefault
        }
        mappings{
            username
            nickname
            photo
            company
            providerName
            email
        }
        redirectUrl
        loginUrl
        logoutUrl
        nameId
        enableSignRes
        resSignPublicKey
        hasResEncrypted
        resEncryptAlgorithm
        resAbstractAlgorithm
        resDecryptPrivateKey
        resDecryptPrivateKeyPass
        resEncryptPublicKey
        enableSignReq
        reqSignAlgorithm
        reqAbstractAlgorithm
        reqSignPrivateKey
        reqSignPrivateKeyPass
        reqSignPublicKey
        SPUrl
    }
}
  EOS
  end

  module UpdateSAMLServiceProvider
    Name = "UpdateSAMLServiceProvider"
    Query = <<-EOS
    mutation UpdateSAMLServiceProvider($appId: String!, $name: String!, $domain: String!, $clientId: String!, $redirectUrl: String!, $loginUrl: String!, $logoutUrl: String!, $nameId: String!, $IdPEntityID: String, $assertionConsumeService: [AssertionConsumeServiceInputType], $image: String, $mappings: AssertionMapInputType, $defaultIdPMapId: String, $description: String, $SPMetadata: String, $IdPMetadata: String, $enableSignRes: Boolean, $resSignPublicKey: String, $hasResEncrypted: Boolean, $resEncryptAlgorithm: String, $resAbstractAlgorithm: String, $resDecryptPrivateKey: String, $resDecryptPrivateKeyPass: String, $resEncryptPublicKey: String, $enableSignReq: Boolean, $reqSignAlgorithm: String, $reqAbstractAlgorithm: String, $reqSignPrivateKey: String, $reqSignPrivateKeyPass: String, $reqSignPublicKey: String){
    UpdateSAMLServiceProvider(appId: $appId, name: $name, domain: $domain, clientId: $clientId, redirectUrl: $redirectUrl, loginUrl: $loginUrl, logoutUrl: $logoutUrl, nameId: $nameId, IdPEntityID: $IdPEntityID, assertionConsumeService: $assertionConsumeService, image: $image, mappings: $mappings, defaultIdPMapId: $defaultIdPMapId, description: $description, SPMetadata: $SPMetadata, IdPMetadata: $IdPMetadata, enableSignRes: $enableSignRes, resSignPublicKey: $resSignPublicKey, hasResEncrypted: $hasResEncrypted, resEncryptAlgorithm: $resEncryptAlgorithm, resAbstractAlgorithm: $resAbstractAlgorithm, resDecryptPrivateKey: $resDecryptPrivateKey, resDecryptPrivateKeyPass: $resDecryptPrivateKeyPass, resEncryptPublicKey: $resEncryptPublicKey, enableSignReq: $enableSignReq, reqSignAlgorithm: $reqSignAlgorithm, reqAbstractAlgorithm: $reqAbstractAlgorithm, reqSignPrivateKey: $reqSignPrivateKey, reqSignPrivateKeyPass: $reqSignPrivateKeyPass, reqSignPublicKey: $reqSignPublicKey){
        _id
        name
        domain
        image
        appSecret
        defaultIdPMap{
            _id
            name
            image
            description
            isDeleted
        }
        defaultIdPMapId
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        IdPMetadata
        IdPEntityID
        assertionConsumeService{
            binding
            url
            isDefault
        }
        mappings{
            username
            nickname
            photo
            company
            providerName
            email
        }
        redirectUrl
        loginUrl
        logoutUrl
        nameId
        enableSignRes
        resSignPublicKey
        hasResEncrypted
        resEncryptAlgorithm
        resAbstractAlgorithm
        resDecryptPrivateKey
        resDecryptPrivateKeyPass
        resEncryptPublicKey
        enableSignReq
        reqSignAlgorithm
        reqAbstractAlgorithm
        reqSignPrivateKey
        reqSignPrivateKeyPass
        reqSignPublicKey
        SPUrl
    }
}
  EOS
  end

  module RemoveSAMLServiceProvider
    Name = "RemoveSAMLServiceProvider"
    Query = <<-EOS
    mutation RemoveSAMLServiceProvider($appId: String!, $clientId: String!){
    RemoveSAMLServiceProvider(appId: $appId, clientId: $clientId){
        _id
        name
        domain
        image
        appSecret
        defaultIdPMap{
            _id
            name
            image
            description
            isDeleted
        }
        defaultIdPMapId
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        IdPMetadata
        IdPEntityID
        assertionConsumeService{
            binding
            url
            isDefault
        }
        mappings{
            username
            nickname
            photo
            company
            providerName
            email
        }
        redirectUrl
        loginUrl
        logoutUrl
        nameId
        enableSignRes
        resSignPublicKey
        hasResEncrypted
        resEncryptAlgorithm
        resAbstractAlgorithm
        resDecryptPrivateKey
        resDecryptPrivateKeyPass
        resEncryptPublicKey
        enableSignReq
        reqSignAlgorithm
        reqAbstractAlgorithm
        reqSignPrivateKey
        reqSignPrivateKeyPass
        reqSignPublicKey
        SPUrl
    }
}
  EOS
  end

  module EnableSAMLServiceProvider
    Name = "EnableSAMLServiceProvider"
    Query = <<-EOS
    mutation EnableSAMLServiceProvider($appId: String!, $clientId: String!, $enabled: Boolean){
    EnableSAMLServiceProvider(appId: $appId, clientId: $clientId, enabled: $enabled){
        _id
        name
        domain
        image
        appSecret
        defaultIdPMap{
            _id
            name
            image
            description
            isDeleted
        }
        defaultIdPMapId
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        IdPMetadata
        IdPEntityID
        assertionConsumeService{
            binding
            url
            isDefault
        }
        mappings{
            username
            nickname
            photo
            company
            providerName
            email
        }
        redirectUrl
        loginUrl
        logoutUrl
        nameId
        enableSignRes
        resSignPublicKey
        hasResEncrypted
        resEncryptAlgorithm
        resAbstractAlgorithm
        resDecryptPrivateKey
        resDecryptPrivateKeyPass
        resEncryptPublicKey
        enableSignReq
        reqSignAlgorithm
        reqAbstractAlgorithm
        reqSignPrivateKey
        reqSignPrivateKeyPass
        reqSignPublicKey
        SPUrl
    }
}
  EOS
  end

  module CreateSAMLIdentityProvider
    Name = "CreateSAMLIdentityProvider"
    Query = <<-EOS
    mutation CreateSAMLIdentityProvider($name: String!, $domain: String!, $clientId: String!, $image: String, $description: String, $SPMetadata: String, $IdPMetadata: String){
    CreateSAMLIdentityProvider(name: $name, domain: $domain, clientId: $clientId, image: $image, description: $description, SPMetadata: $SPMetadata, IdPMetadata: $IdPMetadata){
        _id
        name
        domain
        image
        appSecret
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        attributeNameFormat
        customAttributes
        emailDomainTransformation
        authnContextClassRef
        IdPMetadata
        assertionConsumerUrl
        bindings
        nameIds
        attributes
        enableSignRes
        resSignAlgorithm
        resAbstractAlgorithm
        resSignPublicKey
        resSignPrivateKey
        resSignPrivateKeyPass
        enableSignReq
        reqSignPublicKey
        enableEncryptRes
        resEncryptPublicKey
        css
    }
}
  EOS
  end

  module UpdateSAMLIdentityProvider
    Name = "UpdateSAMLIdentityProvider"
    Query = <<-EOS
    mutation UpdateSAMLIdentityProvider($appId: String!, $clientId: String!, $domain: String, $image: String, $name: String, $description: String, $SPMetadata: String, $attributeNameFormat: String, $customAttributes: String, $emailDomainTransformation: String, $authnContextClassRef: String, $IdPMetadata: String, $assertionConsumerUrl: String, $bindings: [String], $nameIds: [String], $attributes: [String], $enableSignRes: Boolean, $resSignAlgorithm: String, $resAbstractAlgorithm: String, $resSignPublicKey: String, $resSignPrivateKey: String, $resSignPrivateKeyPass: String, $enableSignReq: Boolean, $reqSignPublicKey: String, $enableEncryptRes: Boolean, $resEncryptPublicKey: String, $css: String){
    UpdateSAMLIdentityProvider(appId: $appId, clientId: $clientId, domain: $domain, image: $image, name: $name, description: $description, SPMetadata: $SPMetadata, attributeNameFormat: $attributeNameFormat, customAttributes: $customAttributes, emailDomainTransformation: $emailDomainTransformation, authnContextClassRef: $authnContextClassRef, IdPMetadata: $IdPMetadata, assertionConsumerUrl: $assertionConsumerUrl, bindings: $bindings, nameIds: $nameIds, attributes: $attributes, enableSignRes: $enableSignRes, resSignAlgorithm: $resSignAlgorithm, resAbstractAlgorithm: $resAbstractAlgorithm, resSignPublicKey: $resSignPublicKey, resSignPrivateKey: $resSignPrivateKey, resSignPrivateKeyPass: $resSignPrivateKeyPass, enableSignReq: $enableSignReq, reqSignPublicKey: $reqSignPublicKey, enableEncryptRes: $enableEncryptRes, resEncryptPublicKey: $resEncryptPublicKey, css: $css){
        _id
        name
        domain
        image
        appSecret
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        attributeNameFormat
        customAttributes
        emailDomainTransformation
        authnContextClassRef
        IdPMetadata
        assertionConsumerUrl
        bindings
        nameIds
        attributes
        enableSignRes
        resSignAlgorithm
        resAbstractAlgorithm
        resSignPublicKey
        resSignPrivateKey
        resSignPrivateKeyPass
        enableSignReq
        reqSignPublicKey
        enableEncryptRes
        resEncryptPublicKey
        css
    }
}
  EOS
  end

  module RemoveSAMLIdentityProvider
    Name = "RemoveSAMLIdentityProvider"
    Query = <<-EOS
    mutation RemoveSAMLIdentityProvider($appId: String!, $clientId: String!){
    RemoveSAMLIdentityProvider(appId: $appId, clientId: $clientId){
        _id
        name
        domain
        image
        appSecret
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        attributeNameFormat
        customAttributes
        emailDomainTransformation
        authnContextClassRef
        IdPMetadata
        assertionConsumerUrl
        bindings
        nameIds
        attributes
        enableSignRes
        resSignAlgorithm
        resAbstractAlgorithm
        resSignPublicKey
        resSignPrivateKey
        resSignPrivateKeyPass
        enableSignReq
        reqSignPublicKey
        enableEncryptRes
        resEncryptPublicKey
        css
    }
}
  EOS
  end

  module EnableSAMLIdentityProvider
    Name = "EnableSAMLIdentityProvider"
    Query = <<-EOS
    mutation EnableSAMLIdentityProvider($appId: String!, $clientId: String!, $enabled: Boolean){
    EnableSAMLIdentityProvider(appId: $appId, clientId: $clientId, enabled: $enabled){
        _id
        name
        domain
        image
        appSecret
        appId
        clientId
        description
        isDeleted
        enabled
        when
        SPMetadata
        attributeNameFormat
        customAttributes
        emailDomainTransformation
        authnContextClassRef
        IdPMetadata
        assertionConsumerUrl
        bindings
        nameIds
        attributes
        enableSignRes
        resSignAlgorithm
        resAbstractAlgorithm
        resSignPublicKey
        resSignPrivateKey
        resSignPrivateKeyPass
        enableSignReq
        reqSignPublicKey
        enableEncryptRes
        resEncryptPublicKey
        css
    }
}
  EOS
  end

  module CreateDefaultSAMLIdentityProviderSettings
    Name = "CreateDefaultSAMLIdentityProviderSettings"
    Query = <<-EOS
    mutation CreateDefaultSAMLIdentityProviderSettings($name: String!, $image: String, $description: String, $mappings: AssertionMapInputType){
    CreateDefaultSAMLIdentityProviderSettings(name: $name, image: $image, description: $description, mappings: $mappings){
        _id
        name
        image
        description
        mappings{
            username
            nickname
            photo
            company
            providerName
            email
        }
        isDeleted
    }
}
  EOS
  end

  module AddLDAPServer
    Name = "AddLDAPServer"
    Query = <<-EOS
    mutation AddLDAPServer($name: String!, $clientId: String!, $userId: String!, $ldapLink: String!, $baseDN: String!, $searchStandard: String!, $username: String!, $password: String!, $emailPostfix: String, $description: String, $enabled: Boolean){
    AddLDAPServer(name: $name, clientId: $clientId, userId: $userId, ldapLink: $ldapLink, baseDN: $baseDN, searchStandard: $searchStandard, username: $username, password: $password, emailPostfix: $emailPostfix, description: $description, enabled: $enabled){
        _id
        name
        clientId
        userId
        ldapLink
        baseDN
        searchStandard
        emailPostfix
        username
        password
        description
        enabled
        isDeleted
        createdAt
        updatedAt
    }
}
  EOS
  end

  module UpdateLDAPServer
    Name = "UpdateLDAPServer"
    Query = <<-EOS
    mutation UpdateLDAPServer($ldapId: String!, $name: String!, $clientId: String!, $userId: String!, $ldapLink: String!, $baseDN: String!, $username: String!, $searchStandard: String!, $password: String!, $emailPostfix: String, $description: String, $enabled: Boolean){
    UpdateLDAPServer(ldapId: $ldapId, name: $name, clientId: $clientId, userId: $userId, ldapLink: $ldapLink, baseDN: $baseDN, username: $username, searchStandard: $searchStandard, password: $password, emailPostfix: $emailPostfix, description: $description, enabled: $enabled){
        _id
        name
        clientId
        userId
        ldapLink
        baseDN
        searchStandard
        emailPostfix
        username
        password
        description
        enabled
        isDeleted
        createdAt
        updatedAt
    }
}
  EOS
  end

  module RemoveLDAPServer
    Name = "RemoveLDAPServer"
    Query = <<-EOS
    mutation RemoveLDAPServer($ldapId: String!, $clientId: String!){
    RemoveLDAPServer(ldapId: $ldapId, clientId: $clientId){
        _id
        name
        clientId
        userId
        ldapLink
        baseDN
        searchStandard
        emailPostfix
        username
        password
        description
        enabled
        isDeleted
        createdAt
        updatedAt
    }
}
  EOS
  end

  module LoginByLDAP
    Name = "LoginByLDAP"
    Query = <<-EOS
    mutation LoginByLDAP($username: String!, $password: String!, $clientId: String!, $browser: String){
    LoginByLDAP(username: $username, password: $password, clientId: $clientId, browser: $browser){
        _id
        username
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        nickname
        company
        photo
        browser
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        oldPassword
        metadata
    }
}
  EOS
  end

  module ClearAvatarSrc
    Name = "ClearAvatarSrc"
    Query = <<-EOS
    mutation ClearAvatarSrc($client: String, $oauth: String, $user: String){
    ClearAvatarSrc(client: $client, oauth: $oauth, user: $user){
        _id
        name
        alias
        image
        description
        enabled
        url
        client
        user
        oAuthUrl
        wxappLogo
        fields{
            label
            type
            placeholder
            value
            checked
        }
        oauth{
            _id
            name
            alias
            image
            description
            enabled
            url
            client
            user
            oAuthUrl
            wxappLogo
        }
    }
}
  EOS
  end

  module RevokeUserAuthorizedApp
    Name = "RevokeUserAuthorizedApp"
    Query = <<-EOS
    mutation RevokeUserAuthorizedApp($appId: String, $userPoolId: String, $userId: String){
    RevokeUserAuthorizedApp(appId: $appId, userPoolId: $userPoolId, userId: $userId){
        _id
        appId
        userId
        scope
        type
        isRevoked
        when
    }
}
  EOS
  end

  module UpdateSystemPricing
    Name = "UpdateSystemPricing"
    Query = <<-EOS
    mutation UpdateSystemPricing($options: PricingFieldsInput){
    UpdateSystemPricing(options: $options){
        _id
        type
        startNumber
        freeNumber
        startPrice
        maxNumber
        d
        features
    }
}
  EOS
  end

  module AddSystemPricing
    Name = "AddSystemPricing"
    Query = <<-EOS
    mutation AddSystemPricing($options: PricingFieldsInput){
    AddSystemPricing(options: $options){
        _id
        type
        startNumber
        freeNumber
        startPrice
        maxNumber
        d
        features
    }
}
  EOS
  end

  module Order
    Name = "order"
    Query = <<-EOS
    mutation order($options: OrderAddInput!){
    order(options: $options){
        code
        url
        charge
    }
}
  EOS
  end

  module ContinuePay
    Name = "ContinuePay"
    Query = <<-EOS
    mutation ContinuePay($order: String!){
    ContinuePay(order: $order){
        code
        url
        charge
    }
}
  EOS
  end

  module IncClientFlowNumber
    Name = "IncClientFlowNumber"
    Query = <<-EOS
    mutation IncClientFlowNumber($user: String, $userInvitied: String, $client: String, $number: Int){
    IncClientFlowNumber(user: $user, userInvitied: $userInvitied, client: $client, number: $number){
        code
        url
        charge
    }
}
  EOS
  end

  module Register
    Name = "register"
    Query = <<-EOS
    mutation register(
  $userInfo: UserRegisterInput!
  $invitationCode: String
  $keepPassword: Boolean
) {
  register(
    userInfo: $userInfo
    invitationCode: $invitationCode
    keepPassword: $keepPassword
  ) {
    _id
    email
    unionid
    openid
    emailVerified
    phone
    phoneVerified
    username
    nickname
    company
    photo
    browser
    device
    password
    registerInClient
    registerMethod
    oauth
    token
    tokenExpiredAt
    loginsCount
    lastLogin
    lastIP
    signedUp
    blocked
    isDeleted
    name
    givenName
    familyName
    middleName
    profile
    preferredUsername
    website
    gender
    birthdate
    zoneinfo
    locale
    address
    formatted
    streetAddress
    locality
    region
    postalCode
    country
    updatedAt
    metadata
  }
}

  EOS
  end

  module CreateUser
    Name = "createUser"
    Query = <<-EOS
    mutation createUser($userInfo: UserRegisterInput!, $invitationCode: String, $keepPassword: Boolean){
    createUser(userInfo: $userInfo, invitationCode: $invitationCode, keepPassword: $keepPassword){
        _id
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        username
        nickname
        company
        photo
        browser
        device
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        group{
            _id
            name
            descriptions
            client
            permissions
            createdAt
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userLocation{
            _id
            when
            where
        }
        userLoginHistory{
            totalCount
        }
        systemApplicationType{
            _id
            name
            descriptions
            price
        }
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        customData
        metadata
    }
}
  EOS
  end

  module Login
    Name = "login"
    Query = <<-EOS
    mutation login($registerInClient: String!, $phone: String, $phoneCode: Int, $unionid: String, $openid: String, $username: String, $email: String, $password: String, $lastIP: String, $verifyCode: String, $MFACode: String, $fromRegister: Boolean, $device: String, $browser: String){
    login(registerInClient: $registerInClient, phone: $phone, phoneCode: $phoneCode, unionid: $unionid, openid: $openid, username: $username, email: $email, password: $password, lastIP: $lastIP, verifyCode: $verifyCode, MFACode: $MFACode, fromRegister: $fromRegister, device: $device, browser: $browser){
        _id
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        username
        nickname
        company
        photo
        browser
        device
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        group{
            _id
            name
            descriptions
            client
            permissions
            createdAt
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userLocation{
            _id
            when
            where
        }
        userLoginHistory{
            totalCount
        }
        systemApplicationType{
            _id
            name
            descriptions
            price
        }
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        customData
        metadata
    }
}
  EOS
  end

  module UpdateUser
    Name = "updateUser"
    Query = <<-EOS
    mutation updateUser($options: UserUpdateInput!){
    updateUser(options: $options){
        _id
        username
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        nickname
        company
        photo
        browser
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        oldPassword
        metadata
    }
}
  EOS
  end

  module RemoveUsers
    Name = "removeUsers"
    Query = <<-EOS
    mutation removeUsers($ids: [String], $registerInClient: String, $operator: String){
    removeUsers(ids: $ids, registerInClient: $registerInClient, operator: $operator){
        _id
    }
}
  EOS
  end

  module NewClient
    Name = "newClient"
    Query = <<-EOS
    mutation newClient($client: NewUserClientInput!){
    newClient(client: $client){
        _id
        user{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userPoolTypes{
            _id
            name
            description
            image
            example
        }
        usersCount
        logo
        emailVerifiedDefault
        sendWelcomeEmail
        registerDisabled
        showWXMPQRCode
        useMiniLogin
        useSelfWxapp
        allowedOrigins
        name
        secret
        token
        descriptions
        jwtExpired
        createdAt
        isDeleted
        frequentRegisterCheck{
            timeInterval
            limit
            enable
        }
        loginFailCheck{
            timeInterval
            limit
            enable
        }
        enableEmail
        changePhoneStrategy{
            verifyOldPhone
        }
        changeEmailStrategy{
            verifyOldEmail
        }
        qrcodeLoginStrategy{
            qrcodeExpiresAfter
            returnFullUserInfo
            allowExchangeUserInfoFromBrowser
            ticketExpiresAfter
        }
        app2WxappLoginStrategy{
            ticketExpriresAfter
            ticketExchangeUserInfoNeedSecret
        }
    }
}
  EOS
  end

  module RemoveUserClients
    Name = "removeUserClients"
    Query = <<-EOS
    mutation removeUserClients($ids: [String]){
    removeUserClients(ids: $ids){
        _id
        user{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userPoolTypes{
            _id
            name
            description
            image
            example
        }
        usersCount
        logo
        emailVerifiedDefault
        sendWelcomeEmail
        registerDisabled
        showWXMPQRCode
        useMiniLogin
        useSelfWxapp
        allowedOrigins
        name
        secret
        token
        descriptions
        jwtExpired
        createdAt
        isDeleted
        frequentRegisterCheck{
            timeInterval
            limit
            enable
        }
        loginFailCheck{
            timeInterval
            limit
            enable
        }
        enableEmail
        changePhoneStrategy{
            verifyOldPhone
        }
        changeEmailStrategy{
            verifyOldEmail
        }
        qrcodeLoginStrategy{
            qrcodeExpiresAfter
            returnFullUserInfo
            allowExchangeUserInfoFromBrowser
            ticketExpiresAfter
        }
        app2WxappLoginStrategy{
            ticketExpriresAfter
            ticketExchangeUserInfoNeedSecret
        }
    }
}
  EOS
  end

  module UpdateUserClient
    Name = "updateUserClient"
    Query = <<-EOS
    mutation updateUserClient($client: UpdateUserClientInput!){
    updateUserClient(client: $client){
        _id
        user{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userPoolTypes{
            _id
            name
            description
            image
            example
        }
        usersCount
        logo
        emailVerifiedDefault
        sendWelcomeEmail
        registerDisabled
        showWXMPQRCode
        useMiniLogin
        useSelfWxapp
        allowedOrigins
        name
        secret
        token
        descriptions
        jwtExpired
        createdAt
        isDeleted
        frequentRegisterCheck{
            timeInterval
            limit
            enable
        }
        loginFailCheck{
            timeInterval
            limit
            enable
        }
        enableEmail
        changePhoneStrategy{
            verifyOldPhone
        }
        changeEmailStrategy{
            verifyOldEmail
        }
        qrcodeLoginStrategy{
            qrcodeExpiresAfter
            returnFullUserInfo
            allowExchangeUserInfoFromBrowser
            ticketExpiresAfter
        }
        app2WxappLoginStrategy{
            ticketExpriresAfter
            ticketExchangeUserInfoNeedSecret
        }
    }
}
  EOS
  end

  module ChangePassword
    Name = "changePassword"
    Query = <<-EOS
    mutation changePassword($password: String!, $email: String!, $client: String!, $verifyCode: String!){
    changePassword(password: $password, email: $email, client: $client, verifyCode: $verifyCode){
        _id
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        username
        nickname
        company
        photo
        browser
        device
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        group{
            _id
            name
            descriptions
            client
            permissions
            createdAt
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userLocation{
            _id
            when
            where
        }
        userLoginHistory{
            totalCount
        }
        systemApplicationType{
            _id
            name
            descriptions
            price
        }
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        customData
        metadata
    }
}
  EOS
  end

  module SendResetPasswordEmail
    Name = "sendResetPasswordEmail"
    Query = <<-EOS
    mutation sendResetPasswordEmail($client: String!, $email: String!){
    sendResetPasswordEmail(client: $client, email: $email){
        message
        code
        status
    }
}
  EOS
  end

  module VerifyResetPasswordVerifyCode
    Name = "verifyResetPasswordVerifyCode"
    Query = <<-EOS
    mutation verifyResetPasswordVerifyCode($verifyCode: String!, $email: String!, $client: String!){
    verifyResetPasswordVerifyCode(verifyCode: $verifyCode, email: $email, client: $client){
        message
        code
        status
    }
}
  EOS
  end

  module SendVerifyEmail
    Name = "sendVerifyEmail"
    Query = <<-EOS
    mutation sendVerifyEmail($email: String!, $client: String!, $token: String){
    sendVerifyEmail(email: $email, client: $client, token: $token){
        message
        code
        status
    }
}
  EOS
  end

  module GenerateInvitationCode
    Name = "generateInvitationCode"
    Query = <<-EOS
    mutation generateInvitationCode($user: String!, $client: String!){
    generateInvitationCode(user: $user, client: $client){
        _id
        user
        client
        code
        createdAt
    }
}
  EOS
  end

  module RefreshAppSecret
    Name = "refreshAppSecret"
    Query = <<-EOS
    mutation refreshAppSecret($client: UpdateUserClientInput!){
    refreshAppSecret(client: $client){
        _id
        user{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userPoolTypes{
            _id
            name
            description
            image
            example
        }
        usersCount
        logo
        emailVerifiedDefault
        sendWelcomeEmail
        registerDisabled
        showWXMPQRCode
        useMiniLogin
        useSelfWxapp
        allowedOrigins
        name
        secret
        token
        descriptions
        jwtExpired
        createdAt
        isDeleted
        frequentRegisterCheck{
            timeInterval
            limit
            enable
        }
        loginFailCheck{
            timeInterval
            limit
            enable
        }
        enableEmail
        changePhoneStrategy{
            verifyOldPhone
        }
        changeEmailStrategy{
            verifyOldEmail
        }
        qrcodeLoginStrategy{
            qrcodeExpiresAfter
            returnFullUserInfo
            allowExchangeUserInfoFromBrowser
            ticketExpiresAfter
        }
        app2WxappLoginStrategy{
            ticketExpriresAfter
            ticketExchangeUserInfoNeedSecret
        }
    }
}
  EOS
  end

  module UpdateSuperAdminUser
    Name = "updateSuperAdminUser"
    Query = <<-EOS
    mutation updateSuperAdminUser($options: SuperAdminUpdateInput!){
    updateSuperAdminUser(options: $options){
        email
        username
        _id
        upgrade
    }
}
  EOS
  end

  module AddSuperAdminUser
    Name = "addSuperAdminUser"
    Query = <<-EOS
    mutation addSuperAdminUser($options: SuperAdminUpdateInput!){
    addSuperAdminUser(options: $options){
        email
        username
        _id
        upgrade
    }
}
  EOS
  end

  module RemoveSuperAdminUser
    Name = "removeSuperAdminUser"
    Query = <<-EOS
    mutation removeSuperAdminUser($_id: String!, $username: String!){
    removeSuperAdminUser(_id: $_id, username: $username){
        email
        username
        _id
        upgrade
    }
}
  EOS
  end

  module RecordRequest
    Name = "recordRequest"
    Query = <<-EOS
    mutation recordRequest($when: String!, $ip: String!, $responseTime: Int!, $size: Int!, $from: String){
    recordRequest(when: $when, ip: $ip, responseTime: $responseTime, size: $size, from: $from){
        message
        code
        status
    }
}
  EOS
  end

  module BindOtherOAuth
    Name = "bindOtherOAuth"
    Query = <<-EOS
    mutation bindOtherOAuth($type: String!, $unionid: String!, $userInfo: String!, $client: String, $user: String){
    bindOtherOAuth(type: $type, unionid: $unionid, userInfo: $userInfo, client: $client, user: $user){
        _id
        user
        client
        type
        unionid
        userInfo
        createdAt
    }
}
  EOS
  end

  module UnbindOtherOAuth
    Name = "unbindOtherOAuth"
    Query = <<-EOS
    mutation unbindOtherOAuth($type: String!, $client: String, $user: String){
    unbindOtherOAuth(type: $type, client: $client, user: $user){
        _id
        user
        client
        type
        unionid
        userInfo
        createdAt
    }
}
  EOS
  end

  module UnbindEmail
    Name = "unbindEmail"
    Query = <<-EOS
    mutation unbindEmail($user: String, $client: String){
    unbindEmail(user: $user, client: $client){
        _id
        username
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        nickname
        company
        photo
        browser
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        oldPassword
        metadata
    }
}
  EOS
  end

  module OauthPasswordLogin
    Name = "oauthPasswordLogin"
    Query = <<-EOS
    mutation oauthPasswordLogin($registerInClient: String!, $phone: String, $unionid: String, $email: String, $password: String, $lastIP: String, $verifyCode: String){
    oauthPasswordLogin(registerInClient: $registerInClient, phone: $phone, unionid: $unionid, email: $email, password: $password, lastIP: $lastIP, verifyCode: $verifyCode){
        _id
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        username
        nickname
        company
        photo
        browser
        device
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        group{
            _id
            name
            descriptions
            client
            permissions
            createdAt
        }
        clientType{
            _id
            name
            description
            image
            example
        }
        userLocation{
            _id
            when
            where
        }
        userLoginHistory{
            totalCount
        }
        systemApplicationType{
            _id
            name
            descriptions
            price
        }
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        customData
        metadata
    }
}
  EOS
  end

  module CreateRole
    Name = "createRole"
    Query = <<-EOS
    mutation createRole($client: String!, $name: String!, $descriptions: String){
    createRole(client: $client, name: $name, descriptions: $descriptions){
        _id
        name
        descriptions
        client
        permissions
        createdAt
    }
}
  EOS
  end

  module UpdateRole
    Name = "updateRole"
    Query = <<-EOS
    mutation updateRole($_id: String!, $client: String!, $name: String!, $descriptions: String, $permissions: String){
    updateRole(_id: $_id, client: $client, name: $name, descriptions: $descriptions, permissions: $permissions){
        _id
        name
        descriptions
        client
        permissions
        createdAt
    }
}
  EOS
  end

  module UpdatePermissions
    Name = "updatePermissions"
    Query = <<-EOS
    mutation updatePermissions($role: String!, $client: String!, $permissions: String){
    updatePermissions(role: $role, client: $client, permissions: $permissions){
        _id
        name
        descriptions
        client
        permissions
        createdAt
    }
}
  EOS
  end

  module AssignUserToRole
    Name = "assignUserToRole"
    Query = <<-EOS
    mutation assignUserToRole($client: String!, $user: String!, $group: String!){
    assignUserToRole(client: $client, user: $user, group: $group){
        list{
            _id
            createdAt
        }
        totalCount
    }
}
  EOS
  end

  module RemoveUserFromGroup
    Name = "removeUserFromGroup"
    Query = <<-EOS
    mutation removeUserFromGroup($client: String!, $user: String!, $group: String!){
    removeUserFromGroup(client: $client, user: $user, group: $group){
        _id
        user{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        client{
            _id
            usersCount
            logo
            emailVerifiedDefault
            sendWelcomeEmail
            registerDisabled
            showWXMPQRCode
            useMiniLogin
            useSelfWxapp
            allowedOrigins
            name
            secret
            token
            descriptions
            jwtExpired
            createdAt
            isDeleted
            enableEmail
        }
        group{
            _id
            name
            descriptions
            client
            permissions
            createdAt
        }
        createdAt
    }
}
  EOS
  end

  module AddClientWebhook
    Name = "addClientWebhook"
    Query = <<-EOS
    mutation addClientWebhook($client: String!, $events: [String!]!, $url: String!, $contentType: String!, $enable: Boolean!, $secret: String, $isLastTimeSuccess: Boolean){
    addClientWebhook(client: $client, events: $events, url: $url, contentType: $contentType, enable: $enable, secret: $secret, isLastTimeSuccess: $isLastTimeSuccess){
        _id
        client
        events{
            name
            label
            description
        }
        url
        isLastTimeSuccess
        contentType
        secret
        enable
    }
}
  EOS
  end

  module UpdateClientWebhook
    Name = "updateClientWebhook"
    Query = <<-EOS
    mutation updateClientWebhook($id: String!, $events: [String!]!, $url: String!, $contentType: String!, $enable: Boolean!, $secret: String, $isLastTimeSuccess: Boolean){
    updateClientWebhook(id: $id, events: $events, url: $url, contentType: $contentType, enable: $enable, secret: $secret, isLastTimeSuccess: $isLastTimeSuccess){
        _id
        client
        events{
            name
            label
            description
        }
        url
        isLastTimeSuccess
        contentType
        secret
        enable
    }
}
  EOS
  end

  module DeleteClientWebhook
    Name = "deleteClientWebhook"
    Query = <<-EOS
    mutation deleteClientWebhook($id: String!){
    deleteClientWebhook(id: $id){
        _id
        client
        events{
            name
            label
            description
        }
        url
        isLastTimeSuccess
        contentType
        secret
        enable
    }
}
  EOS
  end

  module SendWebhookTest
    Name = "SendWebhookTest"
    Query = <<-EOS
    mutation SendWebhookTest($id: String!){
    SendWebhookTest(id: $id)
}
  EOS
  end

  module RefreshToken
    Name = "refreshToken"
    Query = <<-EOS
    mutation refreshToken($client: String!, $user: String!){
    refreshToken(client: $client, user: $user){
        token
        iat
        exp
    }
}
  EOS
  end

  module AddCollaborator
    Name = "addCollaborator"
    Query = <<-EOS
    mutation addCollaborator(
  $userPoolId: String!
  $collaboratorUserId: String!
  $permissionDescriptors: [PermissionDescriptorsInputType]!
) {
  addCollaborator(
    userPoolId: $userPoolId
    collaboratorUserId: $collaboratorUserId
    permissionDescriptors: $permissionDescriptors
  ) {
    _id
  }
}

  EOS
  end

  module RemoveCollaborator
    Name = "removeCollaborator"
    Query = <<-EOS
    mutation removeCollaborator($collaborationId: String!){
    removeCollaborator(collaborationId: $collaborationId){
        _id
        createdAt
        owner{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        collaborator{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        userPool{
            _id
            usersCount
            logo
            emailVerifiedDefault
            sendWelcomeEmail
            registerDisabled
            showWXMPQRCode
            useMiniLogin
            useSelfWxapp
            allowedOrigins
            name
            secret
            token
            descriptions
            jwtExpired
            createdAt
            isDeleted
            enableEmail
        }
        permissionDescriptors{
            permissionId
            name
            operationAllow
        }
    }
}
  EOS
  end

  module UpdateCollaborator
    Name = "updateCollaborator"
    Query = <<-EOS
    mutation updateCollaborator($collaborationId: String!, $permissionDescriptors: [PermissionDescriptorsInputType]!){
    updateCollaborator(collaborationId: $collaborationId, permissionDescriptors: $permissionDescriptors){
        _id
        createdAt
        owner{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        collaborator{
            _id
            username
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            nickname
            company
            photo
            browser
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            device
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            oldPassword
            metadata
        }
        userPool{
            _id
            usersCount
            logo
            emailVerifiedDefault
            sendWelcomeEmail
            registerDisabled
            showWXMPQRCode
            useMiniLogin
            useSelfWxapp
            allowedOrigins
            name
            secret
            token
            descriptions
            jwtExpired
            createdAt
            isDeleted
            enableEmail
        }
        permissionDescriptors{
            permissionId
            name
            operationAllow
        }
    }
}
  EOS
  end

  module AddPermission
    Name = "addPermission"
    Query = <<-EOS
    mutation addPermission($name: String!, $description: String){
    addPermission(name: $name, description: $description){
        _id
        name
        affect
        description
    }
}
  EOS
  end

  module UpdatePasswordStrengthSettingsByUserPoolId
    Name = "updatePasswordStrengthSettingsByUserPoolId"
    Query = <<-EOS
    mutation updatePasswordStrengthSettingsByUserPoolId($userPoolId: String!, $pwdStrength: Int){
    updatePasswordStrengthSettingsByUserPoolId(userPoolId: $userPoolId, pwdStrength: $pwdStrength){
        userPoolId
        pwdStrength
    }
}
  EOS
  end

  module ResetUserPoolFromWechat
    Name = "resetUserPoolFromWechat"
    Query = <<-EOS
    mutation resetUserPoolFromWechat($client: String!, $registerMethod: String!, $limit: Int!){
    resetUserPoolFromWechat(client: $client, registerMethod: $registerMethod, limit: $limit){
        list{
            _id
            email
            unionid
            openid
            emailVerified
            phone
            phoneVerified
            username
            nickname
            company
            photo
            browser
            device
            password
            registerInClient
            registerMethod
            oauth
            token
            tokenExpiredAt
            loginsCount
            lastLogin
            lastIP
            signedUp
            blocked
            isDeleted
            name
            givenName
            familyName
            middleName
            profile
            preferredUsername
            website
            gender
            birthdate
            zoneinfo
            locale
            address
            formatted
            streetAddress
            locality
            region
            postalCode
            country
            updatedAt
            customData
            metadata
        }
        totalCount
    }
}
  EOS
  end

  module EncryptPassword
    Name = "encryptPassword"
    Query = <<-EOS
    mutation encryptPassword($password: String!, $client: String!, $isTest: Boolean){
    encryptPassword(password: $password, client: $client, isTest: $isTest){
        _id
        encryptUrl
        decryptUrl
        client
        user
        logs
        enable
        createdAt
        updatedAt
        password
    }
}
  EOS
  end

  module EnablePasswordFaas
    Name = "enablePasswordFaas"
    Query = <<-EOS
    mutation enablePasswordFaas($client: String!, $enable: Boolean!){
    enablePasswordFaas(client: $client, enable: $enable){
        encryptUrl
        decryptUrl
        user
        client
        logs
        enable
        createdAt
        updatedAt
    }
}
  EOS
  end

  module AddToInvitation
    Name = "addToInvitation"
    Query = <<-EOS
    mutation addToInvitation($client: String!, $phone: String){
    addToInvitation(client: $client, phone: $phone){
        client
        phone
        isDeleted
        createdAt
        updatedAt
    }
}
  EOS
  end

  module RemoveFromInvitation
    Name = "removeFromInvitation"
    Query = <<-EOS
    mutation removeFromInvitation($client: String!, $phone: String){
    removeFromInvitation(client: $client, phone: $phone){
        client
        phone
        isDeleted
        createdAt
        updatedAt
    }
}
  EOS
  end

  module SetInvitationState
    Name = "setInvitationState"
    Query = <<-EOS
    mutation setInvitationState($client: String!, $enablePhone: Boolean){
    setInvitationState(client: $client, enablePhone: $enablePhone){
        client
        enablePhone
        createdAt
        updatedAt
    }
}
  EOS
  end

  module ChangeMFA
    Name = "changeMFA"
    Query = <<-EOS
    mutation changeMFA($enable: Boolean!, $userId: String, $userPoolId: String, $_id: String, $refreshKey: Boolean){
    changeMFA(enable: $enable, userId: $userId, userPoolId: $userPoolId, _id: $_id, refreshKey: $refreshKey){
        _id
        userId
        userPoolId
        enable
        shareKey
    }
}
  EOS
  end

  module CreateCustomMFA
    Name = "createCustomMFA"
    Query = <<-EOS
    mutation createCustomMFA($userIdInMiniLogin: String!, $userPoolId: String!, $name: String!, $secret: String!, $remark: String){
    createCustomMFA(userIdInMiniLogin: $userIdInMiniLogin, userPoolId: $userPoolId, name: $name, secret: $secret, remark: $remark){
        _id
        userIdInMiniLogin
        userPoolId{
            _id
            usersCount
            logo
            emailVerifiedDefault
            sendWelcomeEmail
            registerDisabled
            showWXMPQRCode
            useMiniLogin
            useSelfWxapp
            allowedOrigins
            name
            secret
            token
            descriptions
            jwtExpired
            createdAt
            isDeleted
            enableEmail
        }
        remark
        name
        secret
    }
}
  EOS
  end

  module RemoveCustomMFA
    Name = "removeCustomMFA"
    Query = <<-EOS
    mutation removeCustomMFA($_id: String!){
    removeCustomMFA(_id: $_id){
        _id
        userIdInMiniLogin
        userPoolId{
            _id
            usersCount
            logo
            emailVerifiedDefault
            sendWelcomeEmail
            registerDisabled
            showWXMPQRCode
            useMiniLogin
            useSelfWxapp
            allowedOrigins
            name
            secret
            token
            descriptions
            jwtExpired
            createdAt
            isDeleted
            enableEmail
        }
        remark
        name
        secret
    }
}
  EOS
  end

  module RecordAuthAudit
    Name = "recordAuthAudit"
    Query = <<-EOS
    mutation recordAuthAudit($userPoolId: String!, $appType: String!, $appId: String!, $userId: String!, $event: String!, $message: String){
    recordAuthAudit(userPoolId: $userPoolId, appType: $appType, appId: $appId, userId: $userId, event: $event, message: $message){
        message
        code
        status
    }
}
  EOS
  end

  module RefreshThirdPartyToken
    Name = "refreshThirdPartyToken"
    Query = <<-EOS
    mutation refreshThirdPartyToken($userPoolId: String!, $userId: String!){
    refreshThirdPartyToken(userPoolId: $userPoolId, userId: $userId){
        refreshSuccess
        message
        provider
        refreshToken
        accessToken
        updatedAt
    }
}
  EOS
  end

  module SignIn
    Name = "signIn"
    Query = <<-EOS
    mutation signIn($oidcAppId: String, $userPoolId: String, $email: String, $password: String, $phone: String, $unionid: String, $username: String){
    signIn(oidcAppId: $oidcAppId, userPoolId: $userPoolId, email: $email, password: $password, phone: $phone, unionid: $unionid, username: $username){
        sub
        birthdate
        family_name
        gender
        given_name
        locale
        middle_name
        name
        nickname
        picture
        preferred_username
        profile
        updated_at
        website
        zoneinfo
        username
        _id
        company
        browser
        device
        logins_count
        register_method
        blocked
        last_ip
        register_in_userpool
        last_login
        signed_up
        email
        email_verified
        phone_number
        phone_number_verified
        token
        access_token
        id_token
        refresh_token
        expires_in
        token_type
        scope
    }
}
  EOS
  end

  module RefreshSignInToken
    Name = "refreshSignInToken"
    Query = <<-EOS
    mutation refreshSignInToken($oidcAppId: String, $userPoolId: String, $refreshToken: String!){
    refreshSignInToken(oidcAppId: $oidcAppId, userPoolId: $userPoolId, refreshToken: $refreshToken){
        access_token
        id_token
        refresh_token
        scope
        expires_in
    }
}
  EOS
  end

  module CreateAdConnector
    Name = "createAdConnector"
    Query = <<-EOS
    mutation createAdConnector($name: String!, $logo: String, $userPoolId: String!){
    createAdConnector(name: $name, logo: $logo, userPoolId: $userPoolId){
        _id
        name
        secret
        salt
        logo
        enabled
        userPoolId
        status
        createdAt
    }
}
  EOS
  end

  module UpdateAdConnector
    Name = "updateAdConnector"
    Query = <<-EOS
    mutation updateAdConnector($_id: String!, $name: String, $logo: String){
    updateAdConnector(_id: $_id, name: $name, logo: $logo){
        _id
        name
        secret
        salt
        logo
        enabled
        userPoolId
        status
        createdAt
    }
}
  EOS
  end

  module RefreshAdConnectorSecret
    Name = "refreshAdConnectorSecret"
    Query = <<-EOS
    mutation refreshAdConnectorSecret($_id: String){
    refreshAdConnectorSecret(_id: $_id){
        _id
        name
        secret
        salt
        logo
        enabled
        userPoolId
        status
        createdAt
    }
}
  EOS
  end

  module RemoveAdConnector
    Name = "removeAdConnector"
    Query = <<-EOS
    mutation removeAdConnector($_id: String!){
    removeAdConnector(_id: $_id)
}
  EOS
  end

  module EnableAdConnector
    Name = "enableAdConnector"
    Query = <<-EOS
    mutation enableAdConnector($_id: String!){
    enableAdConnector(_id: $_id)
}
  EOS
  end

  module DisableAdConnector
    Name = "disableAdConnector"
    Query = <<-EOS
    mutation disableAdConnector($_id: String!){
    disableAdConnector(_id: $_id)
}
  EOS
  end

  module EnableAdConnectorForProvider
    Name = "enableAdConnectorForProvider"
    Query = <<-EOS
    mutation enableAdConnectorForProvider($providerType: providerType!, $providerId: String!, $adConnectorId: String!){
    enableAdConnectorForProvider(providerType: $providerType, providerId: $providerId, adConnectorId: $adConnectorId)
}
  EOS
  end

  module DisableAdConnectorForProvider
    Name = "disableAdConnectorForProvider"
    Query = <<-EOS
    mutation disableAdConnectorForProvider($providerId: String!, $adConnectorId: String!){
    disableAdConnectorForProvider(providerId: $providerId, adConnectorId: $adConnectorId)
}
  EOS
  end

  module LoginByAd
    Name = "loginByAd"
    Query = <<-EOS
    mutation loginByAd($adConnectorId: String!, $username: String!, $password: String!){
    loginByAd(adConnectorId: $adConnectorId, username: $username, password: $password){
        _id
        username
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        nickname
        company
        photo
        browser
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        oldPassword
        metadata
    }
}
  EOS
  end

  module CreateRBACPermission
    Name = "createRBACPermission"
    Query = <<-EOS
    mutation createRBACPermission($input: CreateRBACPermissionInput!){
    createRBACPermission(input: $input){
        _id
        name
        userPoolId
        createdAt
        updatedAt
        description
    }
}
  EOS
  end

  module UpdateRBACPermission
    Name = "updateRBACPermission"
    Query = <<-EOS
    mutation updateRBACPermission($input: UpdateRBACPermissionInput!){
    updateRBACPermission(input: $input){
        _id
        name
        userPoolId
        createdAt
        updatedAt
        description
    }
}
  EOS
  end

  module DeleteRBACPermission
    Name = "deleteRBACPermission"
    Query = <<-EOS
    mutation deleteRBACPermission($_id: String!){
    deleteRBACPermission(_id: $_id){
        message
        code
        status
    }
}
  EOS
  end

  module DeleteRBACPermissionBatch
    Name = "deleteRBACPermissionBatch"
    Query = <<-EOS
    mutation deleteRBACPermissionBatch($idList: [String!]!){
    deleteRBACPermissionBatch(idList: $idList){
        message
        code
        status
    }
}
  EOS
  end

  module CreateRBACRole
    Name = "createRBACRole"
    Query = <<-EOS
    mutation createRBACRole($sortBy: SortByEnum, $page: Int, $count: Int, $input: CreateRBACRoleInput!){
    createRBACRole(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module UpdateRBACRole
    Name = "updateRBACRole"
    Query = <<-EOS
    mutation updateRBACRole($sortBy: SortByEnum, $page: Int, $count: Int, $input: UpdateRBACRoleInput!){
    updateRBACRole(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module DeleteRBACRole
    Name = "deleteRBACRole"
    Query = <<-EOS
    mutation deleteRBACRole($_id: String!){
    deleteRBACRole(_id: $_id){
        message
        code
        status
    }
}
  EOS
  end

  module DeleteRBACRoleBatch
    Name = "deleteRBACRoleBatch"
    Query = <<-EOS
    mutation deleteRBACRoleBatch($idList: [String!]!){
    deleteRBACRoleBatch(idList: $idList){
        message
        code
        status
    }
}
  EOS
  end

  module CreateRBACGroup
    Name = "createRBACGroup"
    Query = <<-EOS
    mutation createRBACGroup($input: CreateRBACGroupInput!){
    createRBACGroup(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
    }
}
  EOS
  end

  module UpdateRBACGroup
    Name = "updateRBACGroup"
    Query = <<-EOS
    mutation updateRBACGroup($sortBy: SortByEnum, $page: Int, $count: Int, $input: UpdateRBACGroupInput!){
    updateRBACGroup(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module DeleteRBACGroup
    Name = "deleteRBACGroup"
    Query = <<-EOS
    mutation deleteRBACGroup($_id: String!){
    deleteRBACGroup(_id: $_id){
        message
        code
        status
    }
}
  EOS
  end

  module DeleteRBACGroupBatch
    Name = "deleteRBACGroupBatch"
    Query = <<-EOS
    mutation deleteRBACGroupBatch($idList: [String!]!){
    deleteRBACGroupBatch(idList: $idList){
        message
        code
        status
    }
}
  EOS
  end

  module AssignRBACRoleToUser
    Name = "assignRBACRoleToUser"
    Query = <<-EOS
    mutation assignRBACRoleToUser($sortBy: SortByEnum, $page: Int, $count: Int, $input: AssignUserToRBACRoleInput!){
    assignRBACRoleToUser(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module AssignRBACRoleToUserBatch
    Name = "assignRBACRoleToUserBatch"
    Query = <<-EOS
    mutation assignRBACRoleToUserBatch($sortBy: SortByEnum, $page: Int, $count: Int, $input: AssignUserToRBACRoleBatchInput!){
    assignRBACRoleToUserBatch(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RevokeRBACRoleFromUser
    Name = "revokeRBACRoleFromUser"
    Query = <<-EOS
    mutation revokeRBACRoleFromUser($sortBy: SortByEnum, $page: Int, $count: Int, $input: RevokeRBACRoleFromUserInput!){
    revokeRBACRoleFromUser(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RevokeRBACRoleFromUserBatch
    Name = "revokeRBACRoleFromUserBatch"
    Query = <<-EOS
    mutation revokeRBACRoleFromUserBatch($sortBy: SortByEnum, $page: Int, $count: Int, $input: RevokeRBACRoleFromUserBatchInput!){
    revokeRBACRoleFromUserBatch(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module AddPermissionToRBACRole
    Name = "addPermissionToRBACRole"
    Query = <<-EOS
    mutation addPermissionToRBACRole($sortBy: SortByEnum, $page: Int, $count: Int, $input: AddPermissionToRBACRoleInput!){
    addPermissionToRBACRole(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module AddPermissionToRBACRoleBatch
    Name = "addPermissionToRBACRoleBatch"
    Query = <<-EOS
    mutation addPermissionToRBACRoleBatch($sortBy: SortByEnum, $page: Int, $count: Int, $input: AddPermissionToRBACRoleBatchInput){
    addPermissionToRBACRoleBatch(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RemovePermissionFromRBACRole
    Name = "removePermissionFromRBACRole"
    Query = <<-EOS
    mutation removePermissionFromRBACRole($sortBy: SortByEnum, $page: Int, $count: Int, $input: RemovePermissionFromRBACRoleInput!){
    removePermissionFromRBACRole(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RemovePermissionFromRBACRoleBatch
    Name = "removePermissionFromRBACRoleBatch"
    Query = <<-EOS
    mutation removePermissionFromRBACRoleBatch($sortBy: SortByEnum, $page: Int, $count: Int, $input: RemovePermissionFromRBACRoleBatchInput!){
    removePermissionFromRBACRoleBatch(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module AddRoleToRBACGroup
    Name = "addRoleToRBACGroup"
    Query = <<-EOS
    mutation addRoleToRBACGroup($sortBy: SortByEnum, $page: Int, $count: Int, $input: AddRoleToRBACGroupInput!){
    addRoleToRBACGroup(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module AddRoleToRBACGroupBatch
    Name = "addRoleToRBACGroupBatch"
    Query = <<-EOS
    mutation addRoleToRBACGroupBatch($sortBy: SortByEnum, $page: Int, $count: Int, $input: AddRoleToRBACGroupBatchInput!){
    addRoleToRBACGroupBatch(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RemoveRoleFromRBACGroup
    Name = "removeRoleFromRBACGroup"
    Query = <<-EOS
    mutation removeRoleFromRBACGroup($sortBy: SortByEnum, $page: Int, $count: Int, $input: RemoveRoleFromRBACGroupInput!){
    removeRoleFromRBACGroup(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RemoveRoleFromRBACGroupBatch
    Name = "removeRoleFromRBACGroupBatch"
    Query = <<-EOS
    mutation removeRoleFromRBACGroupBatch($sortBy: SortByEnum, $page: Int, $count: Int, $input: RemoveRoleFromRBACGroupBatchInput!){
    removeRoleFromRBACGroupBatch(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module AddUserToRBACGroup
    Name = "addUserToRBACGroup"
    Query = <<-EOS
    mutation addUserToRBACGroup($sortBy: SortByEnum, $page: Int, $count: Int, $input: AddUserToRBACGroupInput!){
    addUserToRBACGroup(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module AddUserToRBACGroupBatch
    Name = "addUserToRBACGroupBatch"
    Query = <<-EOS
    mutation addUserToRBACGroupBatch($sortBy: SortByEnum, $page: Int, $count: Int, $input: AddUserToRBACGroupBatchInput!){
    addUserToRBACGroupBatch(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RemoveUserFromRBACGroup
    Name = "removeUserFromRBACGroup"
    Query = <<-EOS
    mutation removeUserFromRBACGroup($sortBy: SortByEnum, $page: Int, $count: Int, $input: RemoveUserFromRBACGroupInput!){
    removeUserFromRBACGroup(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module RemoveUserFromRBACGroupBatch
    Name = "removeUserFromRBACGroupBatch"
    Query = <<-EOS
    mutation removeUserFromRBACGroupBatch($sortBy: SortByEnum, $page: Int, $count: Int, $input: RemoveUserFromRBACGroupBatchInput!){
    removeUserFromRBACGroupBatch(input: $input){
        _id
        userPoolId
        name
        description
        createdAt
        updatedAt
        roles{
            totalCount
        }
        permissions{
            totalCount
        }
        users(sortBy: $sortBy, page: $page, count: $count){
            totalCount
        }
    }
}
  EOS
  end

  module CreateOrg
    Name = "createOrg"
    Query = <<-EOS
    mutation createOrg($input: CreateOrgInput!){
    createOrg(input: $input){
        _id
        nodes{
            _id
            name
            description
            createdAt
            updatedAt
            children
            root
        }
    }
}
  EOS
  end

  module DeleteOrg
    Name = "deleteOrg"
    Query = <<-EOS
    mutation deleteOrg($_id: String!){
    deleteOrg(_id: $_id){
        message
        code
        status
    }
}
  EOS
  end

  module AddOrgNode
    Name = "addOrgNode"
    Query = <<-EOS
    mutation addOrgNode($input: AddOrgNodeInput!){
    addOrgNode(input: $input){
        _id
        nodes{
            _id
            name
            description
            createdAt
            updatedAt
            children
            root
        }
    }
}
  EOS
  end

  module RemoveOrgNode
    Name = "removeOrgNode"
    Query = <<-EOS
    mutation removeOrgNode($input: RemoveOrgNodeInput!){
    removeOrgNode(input: $input){
        _id
        nodes{
            _id
            name
            description
            createdAt
            updatedAt
            children
            root
        }
    }
}
  EOS
  end

  module CreateRule
    Name = "createRule"
    Query = <<-EOS
    mutation createRule($input: CreateRuleInput!){
    createRule(input: $input){
        _id
        userPoolId
        name
        description
        type
        enabled
        faasUrl
        code
        order
        async
        createdAt
        updatedAt
    }
}
  EOS
  end

  module UpdateRule
    Name = "updateRule"
    Query = <<-EOS
    mutation updateRule($input: UpdateRuleInput!){
    updateRule(input: $input){
        _id
        userPoolId
        name
        description
        type
        enabled
        faasUrl
        code
        order
        async
        createdAt
        updatedAt
    }
}
  EOS
  end

  module DeleteRule
    Name = "deleteRule"
    Query = <<-EOS
    mutation deleteRule($_id: String!){
    deleteRule(_id: $_id){
        message
        code
        status
    }
}
  EOS
  end

  module SetRuleEnv
    Name = "setRuleEnv"
    Query = <<-EOS
    mutation setRuleEnv($input: SetRuleEnvInput!){
    setRuleEnv(input: $input){
        totalCount
        list{
            key
            value
        }
    }
}
  EOS
  end

  module RemoveRuleEnv
    Name = "removeRuleEnv"
    Query = <<-EOS
    mutation removeRuleEnv($input: RemoveRuleEnvInput!){
    removeRuleEnv(input: $input){
        totalCount
        list{
            key
            value
        }
    }
}
  EOS
  end

  module UpdateRuleOrder
    Name = "updateRuleOrder"
    Query = <<-EOS
    mutation updateRuleOrder($input: UpdateRuleOrderInput!){
    updateRuleOrder(input: $input){
        message
        code
        status
    }
}
  EOS
  end

  module UpdatePhone
    Name = "updatePhone"
    Query = <<-EOS
    mutation updatePhone($userPoolId: String!, $phone: String!, $phoneCode: String!, $oldPhone: String, $oldPhoneCode: String){
    updatePhone(userPoolId: $userPoolId, phone: $phone, phoneCode: $phoneCode, oldPhone: $oldPhone, oldPhoneCode: $oldPhoneCode){
        _id
        username
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        nickname
        company
        photo
        browser
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        oldPassword
        metadata
    }
}
  EOS
  end

  module UpdateEmail
    Name = "updateEmail"
    Query = <<-EOS
    mutation updateEmail($userPoolId: String!, $email: String!, $emailCode: String!, $oldEmail: String, $oldEmailCode: String){
    updateEmail(userPoolId: $userPoolId, email: $email, emailCode: $emailCode, oldEmail: $oldEmail, oldEmailCode: $oldEmailCode){
        _id
        username
        email
        unionid
        openid
        emailVerified
        phone
        phoneVerified
        nickname
        company
        photo
        browser
        password
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        country
        updatedAt
        thirdPartyIdentity{
            provider
            refreshToken
            accessToken
            expiresIn
            updatedAt
        }
        oldPassword
        metadata
    }
}
  EOS
  end

  module SendChangeEmailVerifyCode
    Name = "sendChangeEmailVerifyCode"
    Query = <<-EOS
    mutation sendChangeEmailVerifyCode($userPoolId: String!, $email: String!){
    sendChangeEmailVerifyCode(userPoolId: $userPoolId, email: $email){
        message
        code
        status
    }
}
  EOS
  end

  module SetUserMetadata
    Name = "setUserMetadata"
    Query = <<-EOS
    mutation setUserMetadata($input: SetUserMetadataInput!){
    setUserMetadata(input: $input){
        totalCount
        list{
            key
            value
        }
    }
}
  EOS
  end

  module RemoveUserMetadata
    Name = "removeUserMetadata"
    Query = <<-EOS
    mutation removeUserMetadata($input: RemoveUserMetadataInput!){
    removeUserMetadata(input: $input){
        totalCount
        list{
            key
            value
        }
    }
}
  EOS
  end
end
