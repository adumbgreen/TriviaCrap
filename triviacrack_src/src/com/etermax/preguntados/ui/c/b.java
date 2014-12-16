// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.c;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.gamescommon.promotion.BasePromotion;
import com.etermax.gamescommon.promotion.BasePromotionFragment;
import com.etermax.gamescommon.promotion.PromotionsManager;
import com.etermax.gamescommon.shop.c;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;
import com.etermax.tools.j.a;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.c:
//            c, d, e

public class b extends BasePromotionFragment
{

    Button a;
    Button b;
    TextView c;

    public b()
    {
    }

    public static Fragment a()
    {
        return com.etermax.preguntados.ui.c.c.c().a();
    }

    private void c()
    {
        getActivity().getSupportFragmentManager().beginTransaction().remove(this).commit();
    }

    public void b()
    {
        c();
    }

    public View getFragmentView(LayoutInflater layoutinflater)
    {
        View view = layoutinflater.inflate(k.promotion_buy_fragment, null);
        View view1 = view.findViewById(i.promo_ribbon_text);
        RotateAnimation rotateanimation = new RotateAnimation(0.0F, -30F, 1, 0.0F, 1, 0.0F);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        AnimationSet animationset = new AnimationSet(true);
        animationset.setDuration(0L);
        animationset.setFillAfter(true);
        animationset.addAnimation(rotateanimation);
        animationset.addAnimation(alphaanimation);
        view1.startAnimation(animationset);
        BasePromotion basepromotion = mPromotionsManager.getCurrentPromotion();
        if (basepromotion != null)
        {
            e e1 = com.etermax.preguntados.ui.c.e.a(basepromotion.getId());
            ((TextView)view.findViewById(i.promo_subtitle)).setText(e1.e());
            ((ImageView)view.findViewById(i.promo_image_container_top)).setImageDrawable(getResources().getDrawable(e1.f()));
            ((TextView)view.findViewById(i.promo_product_top_title)).setText(e1.g());
            ((TextView)view.findViewById(i.promo_product_top_description)).setText(e1.h());
            ((ImageView)view.findViewById(i.promo_image_container_bottom)).setImageDrawable(getResources().getDrawable(e1.i()));
            ((TextView)view.findViewById(i.promo_product_bottom_title)).setText(e1.j());
            ((TextView)view.findViewById(i.promo_product_bottom_description)).setText(e1.k());
            return view;
        } else
        {
            c();
            return view;
        }
    }

    public void onAccept(Bundle bundle)
    {
        super.onAccept(bundle);
        if (bundle != null && bundle.containsKey("billing_dialog") && bundle.getInt("billing_dialog") == 3)
        {
            if (getActivity() instanceof DashboardActivity)
            {
                ((DashboardActivity)getActivity()).o();
            }
            c();
        }
    }

    protected void onProductsLoaded(ProductListDTO productlistdto)
    {
        BasePromotion basepromotion = mPromotionsManager.getCurrentPromotion();
        if (basepromotion != null)
        {
            List list = getAppItems(productlistdto.getList(), basepromotion.getItemType(), com.etermax.gamescommon.promotion.BasePromotionFragment.Sort.DESCENDING);
            if (list.size() == 2)
            {
                a.setText(mShopManager.a((ProductDTO)list.get(0), "USD "));
                a.setOnClickListener(getBuyListener(((ProductDTO)list.get(0)).getProductId(mShopManager.b(), mAppUtils.c())));
                b.setText(mShopManager.a((ProductDTO)list.get(1), "USD "));
                b.setOnClickListener(getBuyListener(((ProductDTO)list.get(1)).getProductId(mShopManager.b(), mAppUtils.c())));
            }
        }
    }

    protected void onTimerFinish()
    {
    }

    protected void onTimerTick(long l)
    {
        c.setText(com.etermax.preguntados.h.c.a(l, false));
    }
}
