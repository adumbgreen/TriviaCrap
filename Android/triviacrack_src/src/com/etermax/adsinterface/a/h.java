// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.graphics.Bitmap;
import android.webkit.WebView;

public interface h
{

    public abstract void contentLoadCompleted(Bitmap bitmap);

    public abstract void contentLoadCompleted(WebView webview);

    public abstract void contentLoadFailed(Exception exception);
}
