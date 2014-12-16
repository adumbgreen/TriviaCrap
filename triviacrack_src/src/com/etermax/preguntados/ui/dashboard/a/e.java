// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.a;

import android.app.Activity;
import android.os.CountDownTimer;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.gamescommon.b.p;
import com.etermax.gamescommon.shop.a;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.gamescommon.social.h;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.a.c.b;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.LivesDTO;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.widget.b.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.a:
//            g, h, f, a

public class e extends a
{

    com.etermax.tools.f.a a;
    com.etermax.gamescommon.social.a b;
    com.etermax.gamescommon.login.datasource.a c;
    h d;
    d e;
    com.etermax.preguntados.b.a f;
    ImageView g;
    private CountDownTimer h;

    public e()
    {
    }

    public static Fragment a()
    {
        return com.etermax.preguntados.ui.dashboard.a.g.e().a();
    }

    static com.etermax.gamescommon.shop.c a(e e1)
    {
        return e1.mShopManager;
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
            Collections.sort(arraylist, new f(this));
        }
        return arraylist;
    }

    static void a(e e1, String s)
    {
        e1.onBuyClicked(s);
    }

    static com.etermax.tools.j.a b(e e1)
    {
        return e1.mAppUtils;
    }

    static void b(e e1, String s)
    {
        e1.b(s);
    }

    private void b(String s)
    {
        p p1 = new p();
        p1.a(s);
        a.a(p1);
    }

    static void c(e e1)
    {
        e1.g();
    }

    private void e()
    {
        if (h != null)
        {
            h.cancel();
        }
    }

    private void f()
    {
        if (getActivity() instanceof DashboardActivity)
        {
            ((DashboardActivity)getActivity()).x();
        }
    }

    private void g()
    {
        String s;
        if (c.j() == null)
        {
            int k = o.user_request;
            Object aobj1[] = new Object[1];
            aobj1[0] = (new StringBuilder()).append("@").append(c.g()).toString();
            s = getString(k, aobj1);
        } else
        {
            int j = o.user_request;
            Object aobj[] = new Object[1];
            aobj[0] = c.k();
            s = getString(j, aobj);
        }
        d.a(this, s, com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ASK, 0, com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType.LIFE, new com.etermax.gamescommon.social.i() {

            final e a;

            public void a()
            {
            }

            public void a(Exception exception)
            {
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    public void a(String s)
    {
        b b1 = new b();
        b1.a(s);
        a.a(b1);
    }

    void b()
    {
        e();
        h = new CountDownTimer(1000 * e.q().getNextIncrement(), 250L) {

            final e a;

            public void onFinish()
            {
                a.getActivity().getSupportFragmentManager().beginTransaction().remove(a).commit();
                Fragment fragment = com.etermax.preguntados.ui.dashboard.a.a.a();
                ((BaseFragmentActivity)a.getActivity()).a(fragment, "get_more_lives_fragment", true);
            }

            public void onTick(long l)
            {
                String s = com.etermax.preguntados.h.c.a(l);
                ((TextView)a.getView().findViewById(i.out_of_lives_remaining_time_textview)).setText(s);
            }

            
            {
                a = e.this;
                super(l, l1);
            }
        };
        h.start();
    }

    public void c()
    {
        f();
        a("close_popup");
        FragmentManager fragmentmanager = getActivity().getSupportFragmentManager();
        fragmentmanager.popBackStackImmediate();
        fragmentmanager.beginTransaction().remove(this).commitAllowingStateLoss();
    }

    public void d()
    {
        a("ask_live");
        b.a(getActivity(), new com.etermax.gamescommon.social.c() {

            final e a;

            public void a()
            {
                com.etermax.preguntados.ui.dashboard.a.e.b(a, "click_ask_friends");
                com.etermax.preguntados.ui.dashboard.a.e.c(a);
            }

            public void b()
            {
            }

            public void c()
            {
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    public void onApiVerificationException(Exception exception)
    {
        c c1 = com.etermax.tools.widget.b.c.c(getString(o.purchase_verification_error_title), getString(o.purchase_verification_error), getString(o.ok), null);
        c1.setTargetFragment(this, 0);
        c1.show(getFragmentManager(), "purchase_verification_error_dialog");
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
    }

    public void onDetach()
    {
        f();
        super.onDetach();
    }

    public void onPause()
    {
        super.onPause();
        e();
    }

    protected void onProductsLoaded(ProductListDTO productlistdto)
    {
        List list = a(productlistdto, com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType.LIFE, false);
        if (list != null && list.size() == 1 && getView() != null)
        {
            Button button = (Button)getView().findViewById(i.lives_buy_some_more_button);
            if (button != null)
            {
                button.setText((new StringBuilder()).append(mShopManager.a((ProductDTO)list.get(0), "USD ")).append(" ").append(getString(o.buy_more_with)).toString());
                button.setOnClickListener(new android.view.View.OnClickListener(list) {

                    final List a;
                    final e b;

                    public void onClick(View view)
                    {
                        b.a("buy_live");
                        com.etermax.preguntados.ui.dashboard.a.e.a(b, ((ProductDTO)a.get(0)).getProductId(com.etermax.preguntados.ui.dashboard.a.e.a(b).b(), com.etermax.preguntados.ui.dashboard.a.e.b(b).c()));
                    }

            
            {
                b = e.this;
                a = list;
                super();
            }
                });
            }
        }
    }

    public void onPurchaseError(com.etermax.gamescommon.g.i j)
    {
        if (j.a() == 3)
        {
            showUnsupportedDialog();
        } else
        if (j.a() == 6)
        {
            c c1 = com.etermax.tools.widget.b.c.c(getString(o.purchase_error_title), getString(o.purchase_error), getString(o.ok), null);
            c1.setTargetFragment(this, 0);
            c1.show(getFragmentManager(), "purchase_error_dialog");
            return;
        }
    }

    public void onPurchaseSucceded(String s)
    {
        c c1 = com.etermax.tools.widget.b.c.c(getString(o.purchase_success_title), getString(o.purchase_success), getString(o.ok), null);
        c1.setTargetFragment(this, 0);
        c1.show(getFragmentManager(), "purchase_success_dialog");
        getActivity().getSupportFragmentManager().beginTransaction().remove(this).commit();
        ((DashboardActivity)getActivity()).n();
    }

    public void onResume()
    {
        super.onResume();
        if (e.q().getQuantity() > 0)
        {
            getActivity().getSupportFragmentManager().beginTransaction().remove(this).commit();
            Fragment fragment = com.etermax.preguntados.ui.dashboard.a.a.a();
            ((BaseFragmentActivity)getActivity()).a(fragment, "fragment_get_more_lives", true);
            return;
        } else
        {
            b();
            return;
        }
    }

    public void onStop()
    {
        super.onPause();
        if (h != null)
        {
            h.cancel();
        }
    }
}
