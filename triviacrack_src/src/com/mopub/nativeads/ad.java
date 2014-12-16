// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;

class ad extends BaseUrlGenerator
{

    private final Context a;
    private String b;

    public ad(Context context)
    {
        a = context;
    }

    private void a(String s)
    {
        b("id", s);
    }

    private void b(String s)
    {
        b("nsv", s);
    }

    public String generateUrlString(String s)
    {
        a(s, "/m/pos");
        a(b);
        j("1");
        ClientMetadata clientmetadata = ClientMetadata.getInstance(a);
        b(clientmetadata.getSdkVersion());
        String as[] = new String[3];
        as[0] = clientmetadata.getDeviceManufacturer();
        as[1] = clientmetadata.getDeviceModel();
        as[2] = clientmetadata.getDeviceProduct();
        a(as);
        l(clientmetadata.getAdvertisingId());
        k(clientmetadata.getAppVersion());
        return b();
    }

    public ad withAdUnitId(String s)
    {
        b = s;
        return this;
    }
}
