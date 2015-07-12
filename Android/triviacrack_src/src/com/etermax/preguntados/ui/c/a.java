// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.c;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.gamescommon.promotion.BasePromotion;
import com.etermax.gamescommon.promotion.Promotion;
import com.etermax.i;
import com.etermax.k;

// Referenced classes of package com.etermax.preguntados.ui.c:
//            e, b

public class a extends BasePromotion
{

    public a(Promotion promotion, com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType appitemtype, long l, long l1)
    {
        super(promotion, appitemtype, l, l1);
    }

    public View getDashboardView(Context context)
    {
        View view = LayoutInflater.from(context).inflate(k.dashboard_promo_popup_layout, null);
        e e1 = e.a(getId());
        ((ImageView)view.findViewById(i.dashboard_promo_image)).setImageResource(e1.b());
        ((TextView)view.findViewById(i.dashboard_promo_title)).setText(e1.c());
        ((TextView)view.findViewById(i.dashboard_promo_text)).setText(e1.d());
        view.findViewById(i.dashboard_promo_background).setBackgroundColor(e1.a(context));
        return view;
    }

    public Fragment getPromoBuyFragment()
    {
        return b.a();
    }
}
