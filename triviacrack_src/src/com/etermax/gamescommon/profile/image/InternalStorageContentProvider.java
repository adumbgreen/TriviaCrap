// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.image;

import android.content.ContentProvider;
import android.net.Uri;
import java.util.HashMap;

public abstract class InternalStorageContentProvider extends ContentProvider
{

    public static Uri a;
    private static final HashMap b;

    public InternalStorageContentProvider()
    {
    }

    static 
    {
        b = new HashMap();
        b.put(".jpg", "image/jpeg");
        b.put(".jpeg", "image/jpeg");
    }
}
