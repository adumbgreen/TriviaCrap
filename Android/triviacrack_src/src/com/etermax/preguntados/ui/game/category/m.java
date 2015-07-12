// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.gamescommon.b.p;
import com.etermax.gamescommon.shop.a;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.a.a.b;
import com.etermax.preguntados.a.a.c;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            o, p, n

public class m extends a
{

    private static final int j[];
    GameDTO a;
    d b;
    com.etermax.tools.f.a c;
    com.etermax.gamescommon.login.datasource.a d;
    com.etermax.gamescommon.social.h e;
    com.etermax.gamescommon.social.a f;
    com.etermax.preguntados.b.a g;
    ImageView h;
    private int i;

    public m()
    {
        i = -1;
    }

    static int a(m m1, int l)
    {
        m1.i = l;
        return l;
    }

    public static Fragment a(GameDTO gamedto)
    {
        return o.e().a(gamedto).a();
    }

    static com.etermax.gamescommon.shop.c a(m m1)
    {
        return m1.mShopManager;
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
            Collections.sort(arraylist, new n(this));
        }
        return arraylist;
    }

    static void a(m m1, String s)
    {
        m1.onBuyClicked(s);
    }

    static com.etermax.tools.j.a b(m m1)
    {
        return m1.mAppUtils;
    }

    static void b(m m1, String s)
    {
        m1.b(s);
    }

    private void b(String s)
    {
        p p1 = new p();
        p1.a(s);
        c.a(p1);
    }

    private void c(int l)
    {
        b b1 = new b();
        b1.a(l);
        c.a(b1);
    }

    static void c(m m1)
    {
        m1.e();
    }

    private void d(int l)
    {
        com.etermax.preguntados.a.b.a a1 = new com.etermax.preguntados.a.b.a();
        a1.a(Integer.valueOf(l));
        c.a(a1);
    }

    private void e()
    {
        String s;
        if (d.j() == null)
        {
            int i1 = o.user_request;
            Object aobj1[] = new Object[1];
            aobj1[0] = (new StringBuilder()).append("@").append(d.g()).toString();
            s = getString(i1, aobj1);
        } else
        {
            int l = o.user_request;
            Object aobj[] = new Object[1];
            aobj[0] = d.k();
            s = getString(l, aobj);
        }
        e.a(this, s, com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ASK, 0, com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType.EXTRA_SHOT, new com.etermax.gamescommon.social.i() {

            final m a;

            public void a()
            {
            }

            public void a(Exception exception)
            {
            }

            
            {
                a = m.this;
                super();
            }
        });
    }

    public void a()
    {
        b(i);
        d(i);
        b.c(i);
        b.h();
        b();
    }

    public void a(int l)
    {
        c c1 = new c();
        c1.a(l);
        c.a(c1);
    }

    public void a(String s)
    {
        com.etermax.preguntados.a.a.d d1 = new com.etermax.preguntados.a.a.d();
        d1.a(s);
        c.a(d1);
    }

    public void b()
    {
        getActivity().onBackPressed();
    }

    public void b(int l)
    {
        com.etermax.preguntados.a.a.a a1 = new com.etermax.preguntados.a.a.a();
        a1.a(l);
        c.a(a1);
    }

    void c()
    {
        a("close");
        getActivity().onBackPressed();
    }

    void d()
    {
        a("ask");
        f.a(getActivity(), new com.etermax.gamescommon.social.c() {

            final m a;

            public void a()
            {
                com.etermax.preguntados.ui.game.category.m.b(a, "click_ask_friends");
                com.etermax.preguntados.ui.game.category.m.c(a);
            }

            public void b()
            {
            }

            public void c()
            {
            }

            
            {
                a = m.this;
                super();
            }
        });
    }

    public void onApiVerificationException(Exception exception)
    {
        com.etermax.tools.widget.b.c c1 = com.etermax.tools.widget.b.c.c(getString(o.purchase_verification_error_title), getString(o.purchase_verification_error), getString(o.ok), null);
        c1.setTargetFragment(this, 0);
        c1.show(getFragmentManager(), "purchase_verification_error_dialog");
    }

    public void onPause()
    {
        super.onPause();
    }

    protected void onProductsLoaded(ProductListDTO productlistdto)
    {
        List list = a(productlistdto, com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType.EXTRA_SHOT, true);
        LinearLayout linearlayout = (LinearLayout)getView().findViewById(i.get_spins_buy_buttons_container);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(0, -2, 1.0F);
        layoutparams.setMargins(5, 0, 5, 0);
        linearlayout.setWeightSum(3F);
        int l = 0;
        while (l < list.size() && l < 3) 
        {
            int i1;
            int j1;
            View view;
            Button button;
            if (l < j.length)
            {
                i1 = j[l];
            } else
            {
                i1 = j[-1 + j.length];
            }
            if (((ProductDTO)list.get(l)).getQuantity() == 1)
            {
                j1 = o.spin_02;
            } else
            {
                j1 = o.spin_02_plural;
            }
            view = LayoutInflater.from(getApplicationContext()).inflate(k.get_spins_buy_item_layout, null);
            view.setLayoutParams(layoutparams);
            view.setOnClickListener(new android.view.View.OnClickListener(list, l) {

                final List a;
                final int b;
                final m c;

                public void onClick(View view1)
                {
                    c.a("buy");
                    c.a(((ProductDTO)a.get(b)).getQuantity());
                    com.etermax.preguntados.ui.game.category.m.a(c, ((ProductDTO)a.get(b)).getProductId(com.etermax.preguntados.ui.game.category.m.a(c).b(), com.etermax.preguntados.ui.game.category.m.b(c).c()));
                    com.etermax.preguntados.ui.game.category.m.a(c, ((ProductDTO)a.get(b)).getQuantity());
                }

            
            {
                c = m.this;
                a = list;
                b = l;
                super();
            }
            });
            ((TextView)view.findViewById(i.get_spins_buy_item_description)).setText((new StringBuilder()).append(((ProductDTO)list.get(l)).getQuantity()).append(" ").append(getString(j1)).toString());
            ((ImageView)view.findViewById(i.get_spins_buy_item_image)).setImageResource(i1);
            button = (Button)view.findViewById(i.get_spins_buy_item_button);
            button.setText(mShopManager.a((ProductDTO)list.get(l), "USD "));
            button.setClickable(false);
            linearlayout.addView(view);
            l++;
        }
    }

    public void onPurchaseError(com.etermax.gamescommon.g.i l)
    {
        if (l.a() != 3) goto _L2; else goto _L1
_L1:
        showUnsupportedDialog();
_L4:
        if (i != -1)
        {
            c(i);
        }
        return;
_L2:
        if (l.a() == 6)
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
        a();
    }

    static 
    {
        int ai[] = new int[3];
        ai[0] = h.shop_spins01;
        ai[1] = h.shop_spins02;
        ai[2] = h.shop_spins;
        j = ai;
    }
}
