// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;

// Referenced classes of package com.google.android.gms.internal:
//            dq, fx

public class eb
    implements InAppPurchaseResult
{

    private final dq a;

    public eb(dq dq1)
    {
        a = dq1;
    }

    public void finishPurchase()
    {
        try
        {
            a.e();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not forward finishPurchase to InAppPurchaseResult", remoteexception);
        }
    }

    public String getProductId()
    {
        String s;
        try
        {
            s = a.b();
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not forward getProductId to InAppPurchaseResult", remoteexception);
            return null;
        }
        return s;
    }

    public Intent getPurchaseData()
    {
        Intent intent;
        try
        {
            intent = a.c();
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not forward getPurchaseData to InAppPurchaseResult", remoteexception);
            return null;
        }
        return intent;
    }

    public int getResultCode()
    {
        int i;
        try
        {
            i = a.d();
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not forward getPurchaseData to InAppPurchaseResult", remoteexception);
            return 0;
        }
        return i;
    }

    public boolean isVerified()
    {
        boolean flag;
        try
        {
            flag = a.a();
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Could not forward isVerified to InAppPurchaseResult", remoteexception);
            return false;
        }
        return flag;
    }
}
