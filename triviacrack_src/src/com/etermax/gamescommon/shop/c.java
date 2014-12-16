// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.shop;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.amazon.inapp.purchasing.PurchaseResponse;
import com.amazon.inapp.purchasing.Receipt;
import com.etermax.gamescommon.b.ak;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.g.j;
import com.etermax.gamescommon.l;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.n;
import com.etermax.gamescommon.shop.dto.ConfirmationDTO;
import com.etermax.gamescommon.shop.dto.ConfirmationListDTO;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.o;
import com.mobileapptracker.b;
import com.mobileapptracker.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class c extends l
{

    Context c;
    com.etermax.tools.f.a d;
    a e;
    e f;
    com.etermax.tools.j.a g;
    Map h;

    public c()
    {
    }

    static void a(c c1, j j1, Exception exception)
    {
        c1.a(j1, exception);
    }

    static void a(c c1, j j1, boolean flag, n n)
    {
        c1.a(j1, flag, n);
    }

    static void a(c c1, String s)
    {
        c1.f(s);
    }

    static void a(c c1, String s, String s1)
    {
        c1.a(s, s1);
    }

    private void a(String s, String s1)
    {
        if (h != null && h.containsKey(s))
        {
            h h1 = com.mobileapptracker.h.a();
            h1.e(String.valueOf(e.e()));
            h1.c(e.j());
            ProductDTO productdto = (ProductDTO)h.get(s);
            ArrayList arraylist = new ArrayList();
            arraylist.add(new b(productdto.getProductId(b(), g.c()), 1, productdto.getPrice(), productdto.getPrice()));
            h1.a("purchase", arraylist, productdto.getPrice(), "", s1);
        }
    }

    static void b(c c1, j j1, Exception exception)
    {
        c1.a(j1, exception);
    }

    static void b(c c1, String s)
    {
        c1.c(s);
    }

    private void f(String s)
    {
        ak ak1 = new ak();
        ak1.a(s, e.e());
        d.a(ak1);
    }

    protected Context a()
    {
        return c;
    }

    public String a(ProductDTO productdto, String s)
    {
        String s1 = b(productdto.getProductId(b(), g.c()));
        if (s1 == null)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(s);
            Object aobj[] = new Object[1];
            aobj[0] = Float.valueOf(productdto.getPrice());
            s1 = stringbuilder.append(String.format("%.2f", aobj)).toString();
        }
        return s1;
    }

    protected void a(FragmentActivity fragmentactivity, PurchaseResponse purchaseresponse, n n)
    {
        com.etermax.a.a.c("ShopManager", (new StringBuilder()).append("AMAZON Post Purchase - purchaseToken: ").append(purchaseresponse.getReceipt().getPurchaseToken()).toString());
        com.etermax.a.a.c("ShopManager", (new StringBuilder()).append("AMAZON Post Purchase - userId: ").append(purchaseresponse.getUserId()).toString());
        com.etermax.a.a.c("ShopManager", (new StringBuilder()).append("AMAZON Post Purchase - sku: ").append(purchaseresponse.getReceipt().getSku()).toString());
        (new com.etermax.tools.i.a(fragmentactivity.getString(o.loading), purchaseresponse) {

            final PurchaseResponse a;
            final c b;

            public Object a()
            {
                return b();
            }

            protected void a(FragmentActivity fragmentactivity1, Exception exception)
            {
                b(false);
                com.etermax.a.a.c("ShopManager", (new StringBuilder()).append("Exception en la confirmaci\363n de la compra a la API. Product = ").append(a.getReceipt().getSku()).toString(), exception);
                super.a(fragmentactivity1, exception);
                boolean flag;
                if ((exception instanceof com.etermax.tools.a.c.b) && ((com.etermax.tools.a.c.b)exception).c() == 801)
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
                if (flag)
                {
                    com.etermax.gamescommon.shop.c.b(b, null, exception);
                }
            }

            protected void a(FragmentActivity fragmentactivity1, Void void1)
            {
                super.a(fragmentactivity1, void1);
                com.etermax.gamescommon.shop.c.b(b, a.getReceipt().getSku());
                com.etermax.gamescommon.shop.c.a(b, a.getRequestId());
                com.etermax.gamescommon.shop.c.a(b, a.getReceipt().getSku(), a.getReceipt().getPurchaseToken());
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((FragmentActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((FragmentActivity)obj, (Void)obj1);
            }

            public Void b()
            {
                b.f.b(a.getReceipt().getPurchaseToken(), a.getUserId());
                return null;
            }

            
            {
                b = c.this;
                a = purchaseresponse;
                super(s);
            }
        }).a(fragmentactivity);
    }

    protected void a(FragmentActivity fragmentactivity, j j1, n n)
    {
        com.etermax.a.a.c("ShopManager", (new StringBuilder()).append("Post Purchase - transaction: ").append(j1.f()).toString());
        com.etermax.a.a.c("ShopManager", (new StringBuilder()).append("Post Purchase - signature: ").append(j1.g()).toString());
        (new com.etermax.tools.i.a(j1, n) {

            final j a;
            final n b;
            final c c;

            public Object a()
            {
                return b();
            }

            protected void a(FragmentActivity fragmentactivity1, ConfirmationListDTO confirmationlistdto)
            {
                super.a(fragmentactivity1, confirmationlistdto);
                if (confirmationlistdto != null)
                {
                    Iterator iterator = confirmationlistdto.getList().iterator();
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break;
                        }
                        ConfirmationDTO confirmationdto = (ConfirmationDTO)iterator.next();
                        if (confirmationdto.getOrderId().equals(a.b()))
                        {
                            com.etermax.gamescommon.shop.c.a(c, a, confirmationdto.isDuplicate(), b);
                            com.etermax.gamescommon.shop.c.a(c, a.b());
                            com.etermax.gamescommon.shop.c.a(c, a.c(), confirmationdto.getOrderId());
                        }
                    } while (true);
                }
            }

            protected void a(FragmentActivity fragmentactivity1, Exception exception)
            {
                b(false);
                com.etermax.a.a.c("ShopManager", (new StringBuilder()).append("Exception en la confirmaci\363n de la compra a la API. Product = ").append(a.c()).toString(), exception);
                super.a(fragmentactivity1, exception);
                com.etermax.gamescommon.shop.c.a(c, a, exception);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((FragmentActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((FragmentActivity)obj, (ConfirmationListDTO)obj1);
            }

            public ConfirmationListDTO b()
            {
                return c.f.a(a.f(), a.g());
            }

            
            {
                c = c.this;
                a = j1;
                b = n;
                super();
            }
        }).a(fragmentactivity);
    }

    public void a(ProductListDTO productlistdto)
    {
        if (h == null)
        {
            h = new LinkedHashMap();
        }
        Iterator iterator = productlistdto.getList().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ProductDTO productdto = (ProductDTO)iterator.next();
            String s = productdto.getProductId(b(), g.c());
            if (!TextUtils.isEmpty(s))
            {
                h.put(s, productdto);
            }
        } while (true);
        a(h.keySet());
    }

    protected void d()
    {
        com.etermax.gamescommon.a a1 = com.etermax.gamescommon.a.a;
        com.etermax.gamescommon.a a2;
        if (((com.etermax.tools.b)c.getApplicationContext()).u().equals("market_amazon"))
        {
            a2 = com.etermax.gamescommon.a.b;
        } else
        {
            a2 = a1;
        }
        super.a(c, a2, com.etermax.tools.g.a.a());
    }

    public ProductListDTO e()
    {
        if (h != null)
        {
            ProductListDTO productlistdto = new ProductListDTO();
            productlistdto.setList(new ArrayList(h.values()));
            return productlistdto;
        } else
        {
            return null;
        }
    }
}
