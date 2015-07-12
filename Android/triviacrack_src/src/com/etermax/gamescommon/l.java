// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.inapp.purchasing.PurchaseResponse;
import com.amazon.inapp.purchasing.PurchasingManager;
import com.etermax.gamescommon.a.b;
import com.etermax.gamescommon.g.a;
import com.etermax.gamescommon.g.c;
import com.etermax.gamescommon.g.d;
import com.etermax.gamescommon.g.f;
import com.etermax.gamescommon.g.g;
import com.etermax.gamescommon.g.h;
import com.etermax.gamescommon.g.i;
import com.etermax.gamescommon.g.j;
import com.etermax.gamescommon.g.k;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;

// Referenced classes of package com.etermax.gamescommon:
//            n, a, i, m

public abstract class l
{

    private static Boolean i = null;
    boolean a;
    String b;
    private FragmentActivity c;
    private com.etermax.gamescommon.a d;
    private Set e;
    private c f;
    private int g;
    private Map h;
    private g j;
    private h k;
    private f l;
    private com.etermax.gamescommon.a.a m;

    public l()
    {
        a = true;
        b = "ProductBilling";
        e = new HashSet();
        g = 1001;
        j = new g() {

            final l a;

            public void a(i i1)
            {
                if (!i1.c())
                {
                    break MISSING_BLOCK_LABEL_31;
                }
                com.etermax.gamescommon.l.a(a).b(false);
_L1:
                return;
                Exception exception;
                exception;
                a.a("", exception);
                return;
                if (i1.a() == 3)
                {
                    a.c();
                    return;
                }
                  goto _L1
            }

            
            {
                a = l.this;
                super();
            }
        };
        k = new h() {

            final l a;

            public void a(i i1, a a1)
            {
                a.d("Query inventory finished.");
                if (i1.d())
                {
                    a.e((new StringBuilder()).append("Failed to query inventory: ").append(i1).toString());
                    return;
                }
                a.d("Query inventory was successful.");
                j j1;
                for (Iterator iterator = a1.b().iterator(); iterator.hasNext(); a.a(com.etermax.gamescommon.l.b(a), j1, null))
                {
                    j1 = (j)iterator.next();
                }

                a.d("Initial inventory query finished; enabling main UI.");
            }

            
            {
                a = l.this;
                super();
            }
        };
        l = new f() {

            final l a;

            public void a(i i1, String s, j j1)
            {
                if (i1.a() != 7 || s == null)
                {
                    break MISSING_BLOCK_LABEL_51;
                }
                com.etermax.gamescommon.l.a(a).a(false, new m(a, s));
_L1:
                return;
                Exception exception;
                exception;
                a.a("", exception);
                return;
                if (!i1.c())
                {
                    Iterator iterator = com.etermax.gamescommon.l.c(a).iterator();
                    while (iterator.hasNext()) 
                    {
                        ((com.etermax.gamescommon.i)iterator.next()).onPurchaseError(i1);
                    }
                } else
                {
                    a.a(com.etermax.gamescommon.l.b(a), j1, null);
                    return;
                }
                  goto _L1
            }

            
            {
                a = l.this;
                super();
            }
        };
        m = new com.etermax.gamescommon.a.a() {

            final l a;

            public void a()
            {
                com.etermax.gamescommon.l.a(Boolean.valueOf(true));
                PurchasingManager.initiateGetUserIdRequest();
            }

            public void a(PurchaseResponse purchaseresponse)
            {
                if (purchaseresponse.getPurchaseRequestStatus() == com.amazon.inapp.purchasing.PurchaseResponse.PurchaseRequestStatus.SUCCESSFUL)
                {
                    a.a(com.etermax.gamescommon.l.b(a), purchaseresponse, null);
                } else
                {
                    Iterator iterator = com.etermax.gamescommon.l.c(a).iterator();
                    while (iterator.hasNext()) 
                    {
                        ((com.etermax.gamescommon.i)iterator.next()).onPurchaseError(new i(6, ""));
                    }
                }
            }

            
            {
                a = l.this;
                super();
            }
        };
    }

    static c a(l l1)
    {
        return l1.f;
    }

    static Boolean a(Boolean boolean1)
    {
        i = boolean1;
        return boolean1;
    }

    private void a(j j1, n n1)
    {
        f.a(j1, new d(n1) {

            final n a;
            final l b;

            public void a(j j2, i i1)
            {
                if (!i1.c())
                {
                    b.e((new StringBuilder()).append("Error consuming ").append(j2).toString());
                    if (a != null)
                    {
                        a.b();
                    }
                } else
                {
                    b.d((new StringBuilder()).append("Consumed ").append(j2).toString());
                    if (a != null)
                    {
                        a.a();
                        return;
                    }
                }
            }

            
            {
                b = l.this;
                a = n1;
                super();
            }
        });
_L1:
        return;
        Exception exception;
        exception;
        a("", ((Throwable) (exception)));
        if (n1 != null)
        {
            n1.b();
            return;
        }
          goto _L1
    }

    static FragmentActivity b(l l1)
    {
        return l1.c;
    }

    static Set c(l l1)
    {
        return l1.e;
    }

    protected abstract Context a();

    public void a(int i1, int j1, Intent intent)
    {
        if (d != com.etermax.gamescommon.a.a)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        f.a(i1, j1, intent);
        return;
        Exception exception;
        exception;
        a("", ((Throwable) (exception)));
        return;
    }

    public void a(Context context)
    {
        if (d == b)
        {
            PurchasingManager.registerObserver(new b(context, m));
        }
    }

    protected void a(Context context, com.etermax.gamescommon.a a1, boolean flag)
    {
        a(flag);
        d = a1;
        if (d == com.etermax.gamescommon.a.a)
        {
            f = new c(a(), flag);
            f.a(j);
        }
    }

    public void a(FragmentActivity fragmentactivity)
    {
        c = fragmentactivity;
        if (d != com.etermax.gamescommon.a.a)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        f.a(false, k);
        return;
        Exception exception;
        exception;
        a("", ((Throwable) (exception)));
        return;
    }

    protected abstract void a(FragmentActivity fragmentactivity, PurchaseResponse purchaseresponse, n n1);

    protected abstract void a(FragmentActivity fragmentactivity, j j1, n n1);

    protected void a(j j1, Exception exception)
    {
        if (j1 != null && j1.d() == 0 || d == b)
        {
            for (Iterator iterator = e.iterator(); iterator.hasNext(); ((com.etermax.gamescommon.i)iterator.next()).onApiVerificationException(exception)) { }
        }
    }

    protected void a(j j1, boolean flag, n n1)
    {
        if (j1 != null && !flag)
        {
            Iterator iterator = e.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                com.etermax.gamescommon.i i1 = (com.etermax.gamescommon.i)iterator.next();
                if (j1.d() == 0)
                {
                    i1.onPurchaseSucceded(j1.c());
                }
            } while (true);
        }
        a(j1, n1);
    }

    public void a(com.etermax.gamescommon.i i1)
    {
        e.add(i1);
    }

    public void a(String s)
    {
        if (d == b)
        {
            PurchasingManager.initiatePurchaseRequest(s);
        } else
        if (d == com.etermax.gamescommon.a.a)
        {
            try
            {
                f.a(c, s, g, l);
                return;
            }
            catch (Exception exception)
            {
                a("", ((Throwable) (exception)));
            }
            return;
        }
    }

    void a(String s, Throwable throwable)
    {
        if (a)
        {
            Log.w(b, (new StringBuilder()).append("In-app billing error: ").append(s).toString(), throwable);
        }
    }

    protected void a(Set set)
    {
        a a1;
        if (d != com.etermax.gamescommon.a.a)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        if (h != null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        a1 = new a();
        if (f.a("inapp", a1, new ArrayList(set)) != 0 || a1 == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        if (!a1.a().isEmpty())
        {
            h = a1.a();
        }
_L1:
        return;
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
        return;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        return;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        illegalstateexception.printStackTrace();
        return;
        if (d == b)
        {
            PurchasingManager.initiateItemDataRequest(set);
            return;
        }
          goto _L1
    }

    public void a(boolean flag)
    {
        a = flag;
    }

    public com.etermax.gamescommon.a b()
    {
        return d;
    }

    public String b(String s)
    {
        if (d == com.etermax.gamescommon.a.a && h != null && h.containsKey(s))
        {
            k k1 = (k)h.get(s);
            if (TextUtils.isEmpty(k1.b()) && !k1.b().startsWith("AR$"))
            {
                return k1.b();
            }
        }
        return null;
    }

    public void b(FragmentActivity fragmentactivity)
    {
        if (c == fragmentactivity)
        {
            c = null;
        }
    }

    public void b(com.etermax.gamescommon.i i1)
    {
        e.remove(i1);
    }

    public void c()
    {
        if (d == b && i != null && !i.booleanValue() || d == com.etermax.gamescommon.a.a && !f.a())
        {
            for (Iterator iterator = e.iterator(); iterator.hasNext(); ((com.etermax.gamescommon.i)iterator.next()).onBillingUnsupported()) { }
        }
    }

    protected void c(String s)
    {
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((com.etermax.gamescommon.i)iterator.next()).onPurchaseSucceded(s)) { }
    }

    void d(String s)
    {
        if (a)
        {
            Log.d(b, s);
        }
    }

    void e(String s)
    {
        if (a)
        {
            Log.w(b, (new StringBuilder()).append("In-app billing error: ").append(s).toString());
        }
    }

}
