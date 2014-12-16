// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.withoutcoins;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.gamescommon.shop.c;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.h;
import com.etermax.o;
import com.etermax.tools.j.a;

// Referenced classes of package com.etermax.preguntados.ui.withoutcoins:
//            i

public class WithoutCoinsItemView extends LinearLayout
{

    private static final int f[];
    TextView a;
    ImageView b;
    Button c;
    c d;
    a e;
    private i g;
    private int h;

    public WithoutCoinsItemView(Context context)
    {
        super(context);
    }

    public WithoutCoinsItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public WithoutCoinsItemView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private Drawable a(Resources resources)
    {
        int i;
        if (h < f.length)
        {
            i = f[h];
        } else
        {
            i = f[-1 + f.length];
        }
        return resources.getDrawable(i);
    }

    static i a(WithoutCoinsItemView withoutcoinsitemview)
    {
        return withoutcoinsitemview.g;
    }

    public android.view.View.OnClickListener a(String s, int i)
    {
        return new android.view.View.OnClickListener(s, i) {

            final String a;
            final int b;
            final WithoutCoinsItemView c;

            public void onClick(View view)
            {
                if (com.etermax.preguntados.ui.withoutcoins.WithoutCoinsItemView.a(c) != null)
                {
                    com.etermax.preguntados.ui.withoutcoins.WithoutCoinsItemView.a(c).a(a, b);
                }
            }

            
            {
                c = WithoutCoinsItemView.this;
                a = s;
                b = j;
                super();
            }
        };
    }

    public void a(ProductDTO productdto)
    {
        Resources resources = getResources();
        a.setText((new StringBuilder()).append(productdto.getCoins()).append(" ").append(resources.getString(o.coin_plural)).toString());
        b.setImageDrawable(a(resources));
        c.setText(d.a(productdto, "USD "));
        android.view.View.OnClickListener onclicklistener = a(productdto.getProductId(d.b(), e.c()), productdto.getCoins());
        c.setOnClickListener(onclicklistener);
        b.setOnClickListener(onclicklistener);
    }

    public void setItemNumber(int i)
    {
        h = i;
    }

    public void setListener(i i)
    {
        g = i;
    }

    static 
    {
        int ai[] = new int[5];
        ai[0] = h.shop_tokens01;
        ai[1] = h.shop_tokens02;
        ai[2] = h.shop_tokens03;
        ai[3] = h.shop_tokens04;
        ai[4] = h.shop_tokens05;
        f = ai;
    }
}
