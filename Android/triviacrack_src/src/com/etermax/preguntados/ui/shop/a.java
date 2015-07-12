// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.gamescommon.shop.c;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.a.a.b;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.widget.b.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            c, d, b, e

public class a extends com.etermax.gamescommon.shop.a
    implements d
{

    private static final int g[];
    private static final int h[];
    int a;
    int b;
    com.etermax.preguntados.datasource.d c;
    com.etermax.tools.f.a d;
    private int e;
    private int f;

    public a()
    {
        e = -1;
        f = -1;
    }

    static int a(a a1, int j)
    {
        a1.e = j;
        return j;
    }

    public static Fragment a(int j)
    {
        return com.etermax.preguntados.ui.shop.c.b().a(j).a();
    }

    private android.view.View.OnClickListener a(String s, int j, int l)
    {
        return new android.view.View.OnClickListener(s, j, l) {

            final String a;
            final int b;
            final int c;
            final a d;

            public void onClick(View view)
            {
                a.a(d, a);
                if (b != 0)
                {
                    a.a(d, b);
                } else
                if (c != 0)
                {
                    com.etermax.preguntados.ui.shop.a.b(d, c);
                    com.etermax.preguntados.ui.shop.a.c(d, c);
                    return;
                }
            }

            
            {
                d = a.this;
                a = s;
                b = j;
                c = l;
                super();
            }
        };
    }

    private View a(int j, ProductDTO productdto)
    {
        int l;
        View view;
        if (j < g.length)
        {
            l = g[j];
        } else
        {
            l = g[-1 + g.length];
        }
        view = a(productdto.getCoins(), getString(o.coin_plural), l, mShopManager.a(productdto, "USD "), productdto.getDiscount());
        ((Button)view.findViewById(i.item_button)).setOnClickListener(a(productdto.getProductId(mShopManager.b(), mAppUtils.c()), productdto.getCoins(), 0));
        ((ImageView)view.findViewById(i.item_image)).setOnClickListener(a(productdto.getProductId(mShopManager.b(), mAppUtils.c()), productdto.getCoins(), 0));
        ((TextView)view.findViewById(i.item_count)).setOnClickListener(a(productdto.getProductId(mShopManager.b(), mAppUtils.c()), 0, productdto.getQuantity()));
        ((TextView)view.findViewById(i.item_type)).setOnClickListener(a(productdto.getProductId(mShopManager.b(), mAppUtils.c()), 0, productdto.getQuantity()));
        return view;
    }

    private View a(int j, String s, int l, String s1, float f1)
    {
        View view = LayoutInflater.from(getActivity()).inflate(k.shop_item_view, null);
        ((TextView)view.findViewById(i.item_count)).setText(String.valueOf(j));
        ((TextView)view.findViewById(i.item_type)).setText(s);
        ((ImageView)view.findViewById(i.item_image)).setImageResource(l);
        ((Button)view.findViewById(i.item_button)).setText(s1);
        if (f1 > 0.0F)
        {
            ViewGroup viewgroup = (ViewGroup)view.findViewById(i.item_discount_image);
            viewgroup.setVisibility(0);
            ((TextView)viewgroup.findViewById(i.item_discount_value)).setText((new StringBuilder()).append(String.valueOf((int)f1)).append("%").toString());
        }
        return view;
    }

    private List a(ProductListDTO productlistdto, com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType appitemtype, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = productlistdto.getList().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ProductDTO productdto = (ProductDTO)iterator.next();
            if (productdto.getType() == com.etermax.gamescommon.shop.dto.ProductDTO.ItemType.APP_ITEM && productdto.getAppItemType() == appitemtype)
            {
                arraylist.add(productdto);
            }
        } while (true);
        if (flag)
        {
            Collections.sort(arraylist, new com.etermax.preguntados.ui.shop.b(this));
        }
        return arraylist;
    }

    private List a(ProductListDTO productlistdto, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = productlistdto.getList().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ProductDTO productdto = (ProductDTO)iterator.next();
            if (productdto.getType() == com.etermax.gamescommon.shop.dto.ProductDTO.ItemType.COIN_ITEM)
            {
                arraylist.add(productdto);
            }
        } while (true);
        if (flag)
        {
            Collections.sort(arraylist, new com.etermax.preguntados.ui.shop.b(this));
        }
        return arraylist;
    }

    static void a(a a1, String s)
    {
        a1.onBuyClicked(s);
    }

    private View b(int j, ProductDTO productdto)
    {
        int l;
        int i1;
        int j1;
        View view;
        if (j < h.length)
        {
            l = h[j];
        } else
        {
            l = h[-1 + h.length];
        }
        i1 = productdto.getQuantity();
        if (productdto.getQuantity() == 1)
        {
            j1 = o.spin_02;
        } else
        {
            j1 = o.spin_02_plural;
        }
        view = a(i1, getString(j1), l, mShopManager.a(productdto, "USD "), productdto.getDiscount());
        ((Button)view.findViewById(i.item_button)).setOnClickListener(a(productdto.getProductId(mShopManager.b(), mAppUtils.c()), 0, productdto.getQuantity()));
        ((ImageView)view.findViewById(i.item_image)).setOnClickListener(a(productdto.getProductId(mShopManager.b(), mAppUtils.c()), 0, productdto.getQuantity()));
        ((TextView)view.findViewById(i.item_count)).setOnClickListener(a(productdto.getProductId(mShopManager.b(), mAppUtils.c()), 0, productdto.getQuantity()));
        ((TextView)view.findViewById(i.item_type)).setOnClickListener(a(productdto.getProductId(mShopManager.b(), mAppUtils.c()), 0, productdto.getQuantity()));
        return view;
    }

    private void b(int j)
    {
        com.etermax.preguntados.a.a a1 = new com.etermax.preguntados.a.a();
        a1.a(j);
        d.a(a1);
    }

    static void b(a a1, int j)
    {
        a1.c(j);
    }

    static int c(a a1, int j)
    {
        a1.f = j;
        return j;
    }

    private void c(int j)
    {
        com.etermax.preguntados.a.a.c c1 = new com.etermax.preguntados.a.a.c();
        c1.a(j);
        d.a(c1);
    }

    private void d(int j)
    {
        com.etermax.preguntados.a.a.a a1 = new com.etermax.preguntados.a.a.a();
        a1.a(j);
        d.a(a1);
    }

    private void e(int j)
    {
        b b1 = new b();
        b1.a(j);
        d.a(b1);
    }

    public void a()
    {
        ((BaseFragmentActivity)getActivity()).a(com.etermax.preguntados.ui.shop.e.b(), "shop_info_fragment", true);
    }

    protected ProductListDTO getApiProductList()
    {
        return c.v();
    }

    public void onAccept(Bundle bundle)
    {
        super.onAccept(bundle);
    }

    public void onApiVerificationException(Exception exception)
    {
        com.etermax.tools.widget.b.c c1 = com.etermax.tools.widget.b.c.c(getString(o.purchase_verification_error_title), getString(o.purchase_verification_error), getString(o.ok), null);
        c1.setTargetFragment(this, 0);
        c1.show(getFragmentManager(), "purchase_verification_error_dialog");
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.shop_fragment_layout, viewgroup, false);
        ((TextView)view.findViewById(i.shop_user_coins)).setText(String.valueOf(c.t()));
        ((TextView)view.findViewById(i.shop_user_spins)).setText(String.valueOf(b));
        return view;
    }

    protected void onProductsLoaded(ProductListDTO productlistdto)
    {
        List list = a(productlistdto, true);
        List list1 = a(productlistdto, com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType.EXTRA_SHOT, true);
        LinearLayout linearlayout = (LinearLayout)getView().findViewById(i.shop_rows_container);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(0, -2, 1.0F);
        int j = 0;
        while (j < list.size()) 
        {
            ProductDTO productdto1 = (ProductDTO)list.get(j);
            ViewGroup viewgroup1;
            LinearLayout linearlayout3;
            LinearLayout linearlayout4;
            if (j % 3 == 0)
            {
                viewgroup1 = (ViewGroup)LayoutInflater.from(getApplicationContext()).inflate(k.shop_item_row, null);
                viewgroup1.setTag((new StringBuilder()).append("coinRow").append(j / 3).toString());
                linearlayout3 = (LinearLayout)viewgroup1.findViewById(i.shop_row);
                linearlayout3.setWeightSum(3F);
                linearlayout.addView(viewgroup1);
            } else
            {
                viewgroup1 = (ViewGroup)getView().findViewWithTag((new StringBuilder()).append("coinRow").append(j / 3).toString());
                linearlayout3 = (LinearLayout)viewgroup1.findViewById(i.shop_row);
            }
            linearlayout4 = (LinearLayout)a(j, productdto1);
            linearlayout4.setLayoutParams(layoutparams);
            if (j % 3 != 0)
            {
                linearlayout4.findViewById(i.shop_item_divider).setVisibility(0);
            }
            linearlayout3.addView(linearlayout4);
            if (j % 3 == 0)
            {
                View view1 = new View(getApplicationContext());
                view1.setBackgroundDrawable(getResources().getDrawable(h.shop_row_background));
                viewgroup1.addView(view1, 0);
            }
            j++;
        }
        int l = 0;
        while (l < list1.size()) 
        {
            ProductDTO productdto = (ProductDTO)list1.get(l);
            ViewGroup viewgroup;
            LinearLayout linearlayout1;
            LinearLayout linearlayout2;
            if (l % 3 == 0)
            {
                viewgroup = (ViewGroup)LayoutInflater.from(getApplicationContext()).inflate(k.shop_item_row, null);
                viewgroup.setTag((new StringBuilder()).append("extraShotsRow").append(l / 3).toString());
                linearlayout1 = (LinearLayout)viewgroup.findViewById(i.shop_row);
                linearlayout1.setWeightSum(3F);
                linearlayout.addView(viewgroup);
            } else
            {
                viewgroup = (ViewGroup)getView().findViewWithTag((new StringBuilder()).append("extraShotsRow").append(l / 3).toString());
                linearlayout1 = (LinearLayout)viewgroup.findViewById(i.shop_row);
            }
            linearlayout2 = (LinearLayout)b(l, productdto);
            linearlayout2.setLayoutParams(layoutparams);
            if (l % 3 != 0)
            {
                linearlayout2.findViewById(i.shop_item_divider).setVisibility(0);
            }
            linearlayout1.addView(linearlayout2);
            if (l % 3 == 0)
            {
                View view = new View(getApplicationContext());
                view.setBackgroundDrawable(getResources().getDrawable(h.shop_row_background));
                viewgroup.addView(view, 0);
            }
            l++;
        }
    }

    public void onPurchaseError(com.etermax.gamescommon.g.i j)
    {
        if (j.a() != 3) goto _L2; else goto _L1
_L1:
        showUnsupportedDialog();
_L4:
        if (f != -1)
        {
            e(f);
        }
        return;
_L2:
        if (j.a() == 6)
        {
            com.etermax.tools.widget.b.c c1 = com.etermax.tools.widget.b.c.c(getString(o.purchase_error_title), getString(o.purchase_error), getString(o.ok), null);
            c1.setTargetFragment(this, 0);
            c1.show(getFragmentManager(), "purchase_error_dialog");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onPurchaseSucceded(String s)
    {
        com.etermax.tools.widget.b.c c1 = com.etermax.tools.widget.b.c.c(getString(o.purchase_success_title), getString(o.purchase_success), getString(o.ok), null);
        c1.setTargetFragment(this, 0);
        c1.show(getFragmentManager(), "purchase_success_dialog");
        if (e != -1)
        {
            b(e);
            c.b(e);
            e = -1;
            ((TextView)getView().findViewById(i.shop_user_coins)).setText(String.valueOf(c.t()));
        }
        if (f != -1)
        {
            b = b + f;
            d(f);
            c.c(f);
            f = -1;
            ((TextView)getView().findViewById(i.shop_user_spins)).setText(String.valueOf(b));
        }
    }

    static 
    {
        int ai[] = new int[5];
        ai[0] = h.shop_tokens05;
        ai[1] = h.shop_tokens04;
        ai[2] = h.shop_tokens03;
        ai[3] = h.shop_tokens02;
        ai[4] = h.shop_tokens01;
        g = ai;
        int ai1[] = new int[3];
        ai1[0] = h.shop_spins;
        ai1[1] = h.shop_spins02;
        ai1[2] = h.shop_spins01;
        h = ai1;
    }
}
