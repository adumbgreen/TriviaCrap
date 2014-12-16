// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.suggestedopponent;

import android.content.Intent;
import android.os.Bundle;
import com.etermax.gamescommon.e;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.social.a.b;

public abstract class BaseSuggestedActivity extends BaseFragmentActivity
{

    protected e a;
    protected b b;

    public BaseSuggestedActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        b.a(this, i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a.b("SHOW_SHOP_NEW_TEXT", false);
    }
}
