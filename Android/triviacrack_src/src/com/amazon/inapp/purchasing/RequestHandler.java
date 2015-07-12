// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.Set;

// Referenced classes of package com.amazon.inapp.purchasing:
//            Offset

interface RequestHandler
{

    public abstract void sendContentDownloadRequest(String s, String s1, String s2);

    public abstract void sendGetUserIdRequest(String s);

    public abstract void sendItemDataRequest(Set set, String s);

    public abstract void sendPurchaseRequest(String s, String s1);

    public abstract void sendPurchaseResponseReceivedRequest(String s);

    public abstract void sendPurchaseUpdatesRequest(Offset offset, String s);
}
