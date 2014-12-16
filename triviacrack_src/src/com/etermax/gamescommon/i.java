// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;


public interface i
{

    public abstract void onApiVerificationException(Exception exception);

    public abstract void onBillingUnsupported();

    public abstract void onPurchaseError(com.etermax.gamescommon.g.i j);

    public abstract void onPurchaseSucceded(String s);
}
