// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            ShopInfoActivity_, e

public class ShopInfoActivity extends BaseFragmentActivity
{

    public ShopInfoActivity()
    {
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/preguntados/ui/shop/ShopInfoActivity_);
    }

    protected Fragment a()
    {
        return e.b();
    }
}
