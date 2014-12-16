// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.webkit.WebView;

interface 
{

    public abstract void onLoadResource(WebView webview, String s);

    public abstract void onPageFinished(WebView webview, String s);

    public abstract void onPageStarted(WebView webview, String s);

    public abstract void onReceivedError(WebView webview, int i, String s, String s1);
}
