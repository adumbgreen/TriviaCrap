// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification.adm;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.amazon.device.messaging.ADM;
import com.amazon.device.messaging.development.ADMManifest;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.h;
import com.etermax.gamescommon.notification.c;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class a
    implements c
{

    private e a;

    public a(Context context)
    {
        a = h.a(context);
    }

    private void b(Context context)
    {
        ADMManifest.checkManifestAuthoredProperly(context);
        try
        {
            if (!Arrays.asList(context.getResources().getAssets().list("")).contains("api_key.txt"))
            {
                throw new RuntimeException("Missing Amazon api key defined in assets/api_key.txt");
            }
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Missing Amazon api key defined in assets/api_key.txt");
        }
    }

    public String a(Context context)
    {
        String s = a.a("amazon_registration_id", "");
        if (s.length() > 0)
        {
            return s;
        } else
        {
            return "";
        }
    }

    public void a(Context context, com.etermax.gamescommon.login.datasource.c c1)
    {
        ADM adm = new ADM(context);
        if (adm.isSupported())
        {
            b(context);
            if (adm.getRegistrationId() == null)
            {
                adm.startRegister();
            } else
            if (a.a("amazon_registration_id", "").length() == 0)
            {
                c1.d(adm.getRegistrationId());
                return;
            }
        }
    }

    public void a(Context context, boolean flag)
    {
        if (flag)
        {
            ADM adm = new ADM(context);
            if (adm.isSupported())
            {
                a.b("amazon_registration_id", adm.getRegistrationId());
            }
            return;
        } else
        {
            a.a("amazon_registration_id");
            return;
        }
    }
}
