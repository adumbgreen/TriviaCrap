// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;

// Referenced classes of package com.etermax.adsinterface:
//            AdBannerDefaultView, e

class a
    implements android.view.faultView._cls3
{

    final AdBannerDefaultView a;

    public void onClick(View view)
    {
        try
        {
            Context context = view.getContext().getApplicationContext();
            ((Activity)view.getContext()).startActivity(new Intent("android.intent.action.VIEW", ((e)context).a()));
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    (AdBannerDefaultView adbannerdefaultview)
    {
        a = adbannerdefaultview;
        super();
    }
}
