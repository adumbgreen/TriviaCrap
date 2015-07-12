// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.shop;

import android.support.v4.app.FragmentActivity;
import com.amazon.inapp.purchasing.PurchaseResponse;
import com.amazon.inapp.purchasing.Receipt;
import com.etermax.gamescommon.datasource.e;
import com.etermax.tools.a.c.b;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.shop:
//            c

class a extends a
{

    final PurchaseResponse a;
    final c b;

    public Object a()
    {
        return b();
    }

    protected void a(FragmentActivity fragmentactivity, Exception exception)
    {
        b(false);
        com.etermax.a.a.c("ShopManager", (new StringBuilder()).append("Exception en la confirmaci\363n de la compra a la API. Product = ").append(a.getReceipt().getSku()).toString(), exception);
        super.a(fragmentactivity, exception);
        boolean flag;
        if ((exception instanceof b) && ((b)exception).c() == 801)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (flag)
        {
            com.etermax.gamescommon.shop.c.b(b, null, exception);
        }
    }

    protected void a(FragmentActivity fragmentactivity, Void void1)
    {
        super.a(fragmentactivity, void1);
        com.etermax.gamescommon.shop.c.b(b, a.getReceipt().getSku());
        com.etermax.gamescommon.shop.c.a(b, a.getRequestId());
        com.etermax.gamescommon.shop.c.a(b, a.getReceipt().getSku(), a.getReceipt().getPurchaseToken());
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((FragmentActivity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((FragmentActivity)obj, (Void)obj1);
    }

    public Void b()
    {
        b.f.b(a.getReceipt().getPurchaseToken(), a.getUserId());
        return null;
    }

    aseResponse(c c1, String s, PurchaseResponse purchaseresponse)
    {
        b = c1;
        a = purchaseresponse;
        super(s);
    }
}
