// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.accountmanager.shared;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.etermax.gamescommon.login.accountmanager.shared:
//            AccountToastActivity

class a extends AbstractAccountAuthenticator
{

    private Context a;

    public a(Context context)
    {
        super(context);
        a = context;
    }

    public Bundle addAccount(AccountAuthenticatorResponse accountauthenticatorresponse, String s, String s1, String as[], Bundle bundle)
    {
        Bundle bundle1 = new Bundle();
        Intent intent = new Intent(a, com/etermax/gamescommon/login/accountmanager/shared/AccountToastActivity);
        intent.putExtra("errorCode", 1);
        intent.putExtra("accountManagerResponse", accountauthenticatorresponse);
        bundle1.putParcelable("intent", intent);
        return bundle1;
    }

    public Bundle confirmCredentials(AccountAuthenticatorResponse accountauthenticatorresponse, Account account, Bundle bundle)
    {
        return null;
    }

    public Bundle editProperties(AccountAuthenticatorResponse accountauthenticatorresponse, String s)
    {
        return null;
    }

    public Bundle getAuthToken(AccountAuthenticatorResponse accountauthenticatorresponse, Account account, String s, Bundle bundle)
    {
        return null;
    }

    public String getAuthTokenLabel(String s)
    {
        return null;
    }

    public Bundle hasFeatures(AccountAuthenticatorResponse accountauthenticatorresponse, Account account, String as[])
    {
        return null;
    }

    public Bundle updateCredentials(AccountAuthenticatorResponse accountauthenticatorresponse, Account account, String s, Bundle bundle)
    {
        return null;
    }
}
