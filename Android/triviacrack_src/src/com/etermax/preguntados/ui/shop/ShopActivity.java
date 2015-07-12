// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.shop.b;
import com.etermax.gamescommon.shop.c;
import com.etermax.preguntados.a.i;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            ShopActivity_, a

public class ShopActivity extends BaseFragmentActivity
    implements b
{

    int a;
    String b;
    c c;
    a d;

    public ShopActivity()
    {
    }

    public static Intent a(Context context, int j, String s)
    {
        return (new Intent(context, com/etermax/preguntados/ui/shop/ShopActivity_)).putExtra("mExtraShots", j).putExtra("mFrom", s);
    }

    private void a(String s)
    {
        i j = new i();
        j.a(s);
        d.a(j);
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.shop.a.a(a);
    }

    public void h_()
    {
        finish();
    }

    protected void onActivityResult(int j, int k, Intent intent)
    {
        c.a(j, k, intent);
        super.onActivityResult(j, k, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a(b);
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
    }

    protected void onStart()
    {
        super.onStart();
        c.a(this);
    }

    protected void onStop()
    {
        super.onStop();
        c.b(this);
    }
}
