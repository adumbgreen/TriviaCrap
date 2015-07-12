// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.i;
import com.etermax.k;
import com.etermax.preguntados.datasource.d;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            g, h, f

public class e extends b
{

    d a;

    public e()
    {
    }

    public static Fragment b()
    {
        return com.etermax.preguntados.ui.shop.g.d().a();
    }

    public f a()
    {
        return new f() {

            final e a;

            
            {
                a = e.this;
                super();
            }
        };
    }

    void c()
    {
        getView().findViewById(i.shop_info_button).setVisibility(4);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(k.shop_info_fragment_layout, viewgroup, false);
    }
}
