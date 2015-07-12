// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.withoutcoins;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.widget.LinearLayout;
import com.etermax.gamescommon.g.i;
import com.etermax.gamescommon.shop.b;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.tools.widget.b.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.withoutcoins:
//            i, b, e, f, 
//            d, c, WithoutCoinsItemView_, WithoutCoinsItemView

public class a extends com.etermax.gamescommon.shop.a
    implements com.etermax.preguntados.ui.withoutcoins.i
{

    d a;
    com.etermax.tools.f.a b;
    LinearLayout c;
    protected com.etermax.preguntados.ui.withoutcoins.d d;
    protected int e;

    public a()
    {
        e = -1;
    }

    private List a(List list, com.etermax.preguntados.ui.withoutcoins.c c1)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ProductDTO productdto = (ProductDTO)iterator.next();
            if (com.etermax.gamescommon.shop.dto.ProductDTO.ItemType.COIN_ITEM.equals(productdto.getType()))
            {
                arraylist.add(productdto);
            }
        } while (true);
        Collections.sort(arraylist, new com.etermax.preguntados.ui.withoutcoins.b(this, c1));
        return arraylist;
    }

    private void a(int j)
    {
        com.etermax.preguntados.a.a a1 = new com.etermax.preguntados.a.a();
        a1.a(j);
        b.a(a1);
    }

    public static Fragment b()
    {
        return com.etermax.preguntados.ui.withoutcoins.e.d().a();
    }

    public com.etermax.preguntados.ui.withoutcoins.d a()
    {
        return new com.etermax.preguntados.ui.withoutcoins.d() {

            final a a;

            public void e()
            {
            }

            public void h_()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void a(String s, int j)
    {
        e = j;
        onBuyClicked(s);
    }

    void c()
    {
        if (getActivity() != null)
        {
            d.e();
        }
    }

    public b getDummyCallbacks()
    {
        return a();
    }

    public Object getDummyCallbacks()
    {
        return a();
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
        try
        {
            d = (com.etermax.preguntados.ui.withoutcoins.d)activity;
            return;
        }
        catch (ClassCastException classcastexception)
        {
            throw new ClassCastException("Activity must implement fragment's callbacks.");
        }
    }

    public void onDetach()
    {
        super.onDetach();
        d = a();
    }

    public void onLowMemory()
    {
        super.onLowMemory();
    }

    public void onPause()
    {
        super.onPause();
    }

    protected void onProductsLoaded(ProductListDTO productlistdto)
    {
        c.setWeightSum(3F);
        List list = productlistdto.getList();
        if (list != null && !list.isEmpty())
        {
            List list1 = a(list, c.a);
            for (int j = 0; j < 3 && j < list1.size(); j++)
            {
                ProductDTO productdto = (ProductDTO)list1.get(j);
                WithoutCoinsItemView withoutcoinsitemview = WithoutCoinsItemView_.a(getApplicationContext());
                withoutcoinsitemview.setItemNumber(j);
                withoutcoinsitemview.setListener(this);
                withoutcoinsitemview.a(productdto);
                withoutcoinsitemview.setLayoutParams(new android.widget.LinearLayout.LayoutParams(0, -1, 1.0F));
                c.addView(withoutcoinsitemview);
            }

        }
    }

    public void onPurchaseError(i j)
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
        if (e != -1)
        {
            a.b(e);
            a(e);
        }
    }
}
