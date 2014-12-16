// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.accountmanager.shared;

import android.accounts.AccountAuthenticatorResponse;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.etermax.o;

public class AccountToastActivity extends Activity
{

    public AccountToastActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Toast.makeText(this, o.create_account_sign_in, 1).show();
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            ((AccountAuthenticatorResponse)bundle1.get("accountManagerResponse")).onError(6, "not allowed");
        }
        finish();
    }
}
