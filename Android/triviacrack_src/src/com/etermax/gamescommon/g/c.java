// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.a.a.a.a;
import com.a.a.a.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

// Referenced classes of package com.etermax.gamescommon.g:
//            j, a, k, b, 
//            i, f, g, d, 
//            e, h

public class c
{

    boolean a;
    String b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    String g;
    Context h;
    a i;
    ServiceConnection j;
    int k;
    String l;
    f m;

    public c(Context context, boolean flag)
    {
        a = false;
        b = "IabHelper";
        c = false;
        d = false;
        e = false;
        f = false;
        g = "";
        h = context.getApplicationContext();
        a(flag);
        c("IAB helper created.");
    }

    public static String a(int i1)
    {
        String as[] = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String as1[] = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (i1 <= -1000)
        {
            int j1 = -1000 - i1;
            if (j1 >= 0 && j1 < as1.length)
            {
                return as1[j1];
            } else
            {
                return (new StringBuilder()).append(String.valueOf(i1)).append(":Unknown IAB Helper Error").toString();
            }
        }
        if (i1 < 0 || i1 >= as.length)
        {
            return (new StringBuilder()).append(String.valueOf(i1)).append(":Unknown").toString();
        } else
        {
            return as[i1];
        }
    }

    int a(Intent intent)
    {
        Object obj = intent.getExtras().get("RESPONSE_CODE");
        if (obj == null)
        {
            d("Intent with no response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer)
        {
            return ((Integer)obj).intValue();
        }
        if (obj instanceof Long)
        {
            return (int)((Long)obj).longValue();
        } else
        {
            d("Unexpected type for intent response code.");
            d(obj.getClass().getName());
            throw new RuntimeException((new StringBuilder()).append("Unexpected type for intent response code: ").append(obj.getClass().getName()).toString());
        }
    }

    int a(Bundle bundle)
    {
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null)
        {
            c("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer)
        {
            return ((Integer)obj).intValue();
        }
        if (obj instanceof Long)
        {
            return (int)((Long)obj).longValue();
        } else
        {
            d("Unexpected type for bundle response code.");
            d(obj.getClass().getName());
            throw new RuntimeException((new StringBuilder()).append("Unexpected type for bundle response code: ").append(obj.getClass().getName()).toString());
        }
    }

    int a(com.etermax.gamescommon.g.a a1, String s)
    {
        c((new StringBuilder()).append("Querying owned items, item type: ").append(s).toString());
        c((new StringBuilder()).append("Package name: ").append(h.getPackageName()).toString());
        String s1 = null;
        do
        {
            c((new StringBuilder()).append("Calling getPurchases with continuation token: ").append(s1).toString());
            Bundle bundle = i.a(3, h.getPackageName(), s, s1);
            int i1 = a(bundle);
            c((new StringBuilder()).append("Owned items response: ").append(String.valueOf(i1)).toString());
            if (i1 != 0)
            {
                c((new StringBuilder()).append("getPurchases() failed: ").append(a(i1)).toString());
                return i1;
            }
            if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST"))
            {
                d("Bundle returned from getPurchases() doesn't contain required fields.");
                return -1002;
            }
            ArrayList arraylist = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList arraylist1 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList arraylist2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            for (int j1 = 0; j1 < arraylist1.size(); j1++)
            {
                String s2 = (String)arraylist1.get(j1);
                String s3 = (String)arraylist2.get(j1);
                String s4 = (String)arraylist.get(j1);
                c((new StringBuilder()).append("Sku is owned: ").append(s4).toString());
                j j2 = new j(s, s2, s3);
                if (TextUtils.isEmpty(j2.e()))
                {
                    e("BUG: empty/null token!");
                    c((new StringBuilder()).append("Purchase data: ").append(s2).toString());
                }
                a1.a(j2);
            }

            s1 = bundle.getString("INAPP_CONTINUATION_TOKEN");
            c((new StringBuilder()).append("Continuation token: ").append(s1).toString());
        } while (!TextUtils.isEmpty(s1));
        return 0;
    }

    public int a(String s, com.etermax.gamescommon.g.a a1, List list)
    {
        c("Querying SKU details.");
        a("querySkuDetails");
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(a1.a(s));
        if (list != null)
        {
            arraylist.addAll(list);
        }
        if (arraylist.size() == 0)
        {
            c("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("ITEM_ID_LIST", arraylist);
        Bundle bundle1 = i.a(3, h.getPackageName(), s, bundle);
        if (!bundle1.containsKey("DETAILS_LIST"))
        {
            int i1 = a(bundle1);
            if (i1 != 0)
            {
                c((new StringBuilder()).append("getSkuDetails() failed: ").append(a(i1)).toString());
                return i1;
            } else
            {
                d("getSkuDetails() returned a bundle with neither an error nor a detail list.");
                return -1002;
            }
        }
        k k1;
        for (Iterator iterator = bundle1.getStringArrayList("DETAILS_LIST").iterator(); iterator.hasNext(); a1.a(k1))
        {
            k1 = new k(s, (String)iterator.next());
            c((new StringBuilder()).append("Got sku details: ").append(k1).toString());
        }

        return 0;
    }

    public com.etermax.gamescommon.g.a a(boolean flag, List list)
    {
        return a(flag, list, ((List) (null)));
    }

    public com.etermax.gamescommon.g.a a(boolean flag, List list, List list1)
    {
        com.etermax.gamescommon.g.a a1;
        a("queryInventory");
        int i1;
        int j1;
        int l1;
        try
        {
            a1 = new com.etermax.gamescommon.g.a();
            i1 = a(a1, "inapp");
        }
        catch (RemoteException remoteexception)
        {
            throw new com.etermax.gamescommon.g.b(-1001, "Remote exception while refreshing inventory.", remoteexception);
        }
        catch (JSONException jsonexception)
        {
            throw new com.etermax.gamescommon.g.b(-1002, "Error parsing JSON response while refreshing inventory.", jsonexception);
        }
        catch (NullPointerException nullpointerexception)
        {
            throw new com.etermax.gamescommon.g.b(-1008, "NullPointer while refreshing inventory.", nullpointerexception);
        }
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        throw new com.etermax.gamescommon.g.b(i1, "Error refreshing inventory (querying owned items).");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        l1 = a("inapp", a1, list);
        if (l1 == 0)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        throw new com.etermax.gamescommon.g.b(l1, "Error refreshing inventory (querying prices of items).");
        if (!e)
        {
            break MISSING_BLOCK_LABEL_203;
        }
        j1 = a(a1, "subs");
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_169;
        }
        throw new com.etermax.gamescommon.g.b(j1, "Error refreshing inventory (querying owned subscriptions).");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_203;
        }
        int k1 = a("subs", a1, list);
        if (k1 == 0)
        {
            break MISSING_BLOCK_LABEL_203;
        }
        throw new com.etermax.gamescommon.g.b(k1, "Error refreshing inventory (querying prices of subscriptions).");
        return a1;
    }

    public void a(Activity activity, String s, int i1, f f1)
    {
        a(activity, s, i1, f1, "");
    }

    public void a(Activity activity, String s, int i1, f f1, String s1)
    {
        a(activity, s, "inapp", i1, f1, s1);
    }

    public void a(Activity activity, String s, String s1, int i1, f f1, String s2)
    {
        a("launchPurchaseFlow");
        if (!s1.equals("subs") || e) goto _L2; else goto _L1
_L1:
        i j2 = new i(-1009, "Subscriptions are not available.");
        if (f1 != null)
        {
            f1.a(j2, s, null);
        }
_L4:
        return;
_L2:
        Bundle bundle;
        int l1;
        i i2;
        PendingIntent pendingintent;
        try
        {
            c((new StringBuilder()).append("Constructing buy intent for ").append(s).append(", item type: ").append(s1).toString());
            bundle = i.a(3, h.getPackageName(), s, s1, s2);
            l1 = a(bundle);
        }
        catch (android.content.IntentSender.SendIntentException sendintentexception)
        {
            d((new StringBuilder()).append("SendIntentException while launching purchase flow for sku ").append(s).toString());
            sendintentexception.printStackTrace();
            i k1 = new i(-1004, "Failed to send intent.");
            if (f1 != null)
            {
                f1.a(k1, s, null);
            }
            b();
            return;
        }
        catch (RemoteException remoteexception)
        {
            d((new StringBuilder()).append("RemoteException while launching purchase flow for sku ").append(s).toString());
            remoteexception.printStackTrace();
            i j1 = new i(-1001, "Remote exception while starting purchase flow");
            if (f1 != null)
            {
                f1.a(j1, s, null);
            }
            b();
            return;
        }
        if (l1 == 0)
        {
            break MISSING_BLOCK_LABEL_252;
        }
        d((new StringBuilder()).append("Unable to buy item, Error response: ").append(a(l1)).toString());
        i2 = new i(l1, "Unable to buy item");
        if (f1 == null) goto _L4; else goto _L3
_L3:
        f1.a(i2, s, null);
        return;
        b("launchPurchaseFlow");
        pendingintent = (PendingIntent)bundle.getParcelable("BUY_INTENT");
        c((new StringBuilder()).append("Launching buy intent for ").append(s).append(". Request code: ").append(i1).toString());
        k = i1;
        m = f1;
        l = s1;
        activity.startIntentSenderForResult(pendingintent.getIntentSender(), i1, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
        return;
    }

    public void a(g g1)
    {
        if (c)
        {
            e("IAB helper is already set up.");
        } else
        {
            c("Starting in-app billing setup.");
            j = new ServiceConnection(g1) {

                final g a;
                final c b;

                public void onServiceConnected(ComponentName componentname, IBinder ibinder)
                {
                    String s;
                    b.c("Billing service connected.");
                    b.i = com.a.a.a.b.a(ibinder);
                    s = b.h.getPackageName();
                    int i1;
                    b.c("Checking for in-app billing 3 support.");
                    i1 = b.i.a(3, s, "inapp");
                    if (i1 != 0)
                    {
                        int j1;
                        try
                        {
                            if (a != null)
                            {
                                a.a(new i(i1, "Error checking for billing v3 support."));
                            }
                            b.e = false;
                            return;
                        }
                        catch (RemoteException remoteexception)
                        {
                            if (a != null)
                            {
                                a.a(new i(-1001, "RemoteException while setting up in-app billing."));
                            }
                            remoteexception.printStackTrace();
                        }
                        break MISSING_BLOCK_LABEL_273;
                    }
                    b.c((new StringBuilder()).append("In-app billing version 3 supported for ").append(s).toString());
                    j1 = b.i.a(3, s, "subs");
                    if (j1 != 0)
                    {
                        break MISSING_BLOCK_LABEL_208;
                    }
                    b.c("Subscriptions AVAILABLE.");
                    b.e = true;
_L1:
                    b.d = true;
                    b.c = true;
                    if (a != null)
                    {
                        a.a(new i(0, "Setup successful."));
                        return;
                    }
                    break MISSING_BLOCK_LABEL_273;
                    b.c((new StringBuilder()).append("Subscriptions NOT AVAILABLE. Response: ").append(j1).toString());
                      goto _L1
                }

                public void onServiceDisconnected(ComponentName componentname)
                {
                    b.c("Billing service disconnected.");
                    b.i = null;
                }

            
            {
                b = c.this;
                a = g1;
                super();
            }
            };
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            if (!h.getPackageManager().queryIntentServices(intent, 0).isEmpty())
            {
                h.bindService(intent, j, 1);
                return;
            }
            if (g1 != null)
            {
                g1.a(new i(3, "Billing service unavailable on device."));
                return;
            }
        }
    }

    void a(j j1)
    {
        String s;
        String s1;
        a("consume");
        if (!j1.a.equals("inapp"))
        {
            throw new com.etermax.gamescommon.g.b(-1010, (new StringBuilder()).append("Items of type '").append(j1.a).append("' can't be consumed.").toString());
        }
        try
        {
            s = j1.e();
            s1 = j1.c();
        }
        catch (RemoteException remoteexception)
        {
            throw new com.etermax.gamescommon.g.b(-1001, (new StringBuilder()).append("Remote exception while consuming. PurchaseInfo: ").append(j1).toString(), remoteexception);
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        if (!s.equals(""))
        {
            break MISSING_BLOCK_LABEL_190;
        }
        d((new StringBuilder()).append("Can't consume ").append(s1).append(". No token.").toString());
        throw new com.etermax.gamescommon.g.b(-1007, (new StringBuilder()).append("PurchaseInfo is missing token for sku: ").append(s1).append(" ").append(j1).toString());
        int i1;
        c((new StringBuilder()).append("Consuming sku: ").append(s1).append(", token: ").append(s).toString());
        i1 = i.b(3, h.getPackageName(), s);
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        c((new StringBuilder()).append("Successfully consumed sku: ").append(s1).toString());
        return;
        c((new StringBuilder()).append("Error consuming consuming sku ").append(s1).append(". ").append(a(i1)).toString());
        throw new com.etermax.gamescommon.g.b(i1, (new StringBuilder()).append("Error consuming sku ").append(s1).toString());
    }

    public void a(j j1, d d1)
    {
        a("consume");
        ArrayList arraylist = new ArrayList();
        arraylist.add(j1);
        a(((List) (arraylist)), d1, ((e) (null)));
    }

    void a(String s)
    {
        if (!c)
        {
            d((new StringBuilder()).append("Illegal state for operation (").append(s).append("): IAB helper is not set up.").toString());
            throw new IllegalStateException((new StringBuilder()).append("IAB helper is not set up. Can't perform operation: ").append(s).toString());
        } else
        {
            return;
        }
    }

    void a(List list, d d1, e e1)
    {
        Handler handler = new Handler();
        b("consume");
        (new Thread(new Runnable(list, d1, handler, e1) {

            final List a;
            final d b;
            final Handler c;
            final e d;
            final c e;

            public void run()
            {
                ArrayList arraylist = new ArrayList();
                for (Iterator iterator = a.iterator(); iterator.hasNext();)
                {
                    j j1 = (j)iterator.next();
                    try
                    {
                        e.a(j1);
                        arraylist.add(new i(0, (new StringBuilder()).append("Successful consume of sku ").append(j1.c()).toString()));
                    }
                    catch (com.etermax.gamescommon.g.b b1)
                    {
                        arraylist.add(b1.a());
                    }
                }

                e.b();
                if (b != null)
                {
                    c.post(new Runnable(this, arraylist) {

                        final List a;
                        final _cls3 b;

                        public void run()
                        {
                            b.b.a((j)b.a.get(0), (i)a.get(0));
                        }

            
            {
                b = _pcls3;
                a = list;
                super();
            }
                    });
                }
                if (d != null)
                {
                    c.post(new Runnable(this, arraylist) {

                        final List a;
                        final _cls3 b;

                        public void run()
                        {
                            b.d.a(b.a, a);
                        }

            
            {
                b = _pcls3;
                a = list;
                super();
            }
                    });
                }
            }

            
            {
                e = c.this;
                a = list;
                b = d1;
                c = handler;
                d = e1;
                super();
            }
        })).start();
    }

    public void a(boolean flag)
    {
        a = flag;
    }

    public void a(boolean flag, h h1)
    {
        a(flag, ((List) (null)), h1);
    }

    public void a(boolean flag, List list, h h1)
    {
        Handler handler = new Handler();
        a("queryInventory");
        b("refresh inventory");
        (new Thread(new Runnable(flag, list, handler, h1) {

            final boolean a;
            final List b;
            final Handler c;
            final h d;
            final c e;

            public void run()
            {
                i i1 = new i(0, "Inventory refresh successful.");
                com.etermax.gamescommon.g.a a2 = e.a(a, b);
                com.etermax.gamescommon.g.a a1 = a2;
_L2:
                e.b();
                c.post(new Runnable(this, i1, a1) {

                    final i a;
                    final com.etermax.gamescommon.g.a b;
                    final _cls2 c;

                    public void run()
                    {
                        c.d.a(a, b);
                    }

            
            {
                c = _pcls2;
                a = i1;
                b = a1;
                super();
            }
                });
                return;
                com.etermax.gamescommon.g.b b1;
                b1;
                i1 = b1.a();
                a1 = null;
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                e = c.this;
                a = flag;
                b = list;
                c = handler;
                d = h1;
                super();
            }
        })).start();
    }

    public boolean a()
    {
        return d;
    }

    public boolean a(int i1, int j1, Intent intent)
    {
        int k1;
        String s;
        String s1;
        if (i1 != k)
        {
            return false;
        }
        a("handleActivityResult");
        b();
        if (intent == null)
        {
            d("Null data in IAB activity result.");
            i i3 = new i(-1002, "Null data in IAB result");
            if (m != null)
            {
                m.a(i3, null, null);
            }
            return true;
        }
        k1 = a(intent);
        s = intent.getStringExtra("INAPP_PURCHASE_DATA");
        s1 = intent.getStringExtra("INAPP_DATA_SIGNATURE");
        if (j1 != -1 || k1 != 0) goto _L2; else goto _L1
_L1:
        c("Successful resultcode from purchase activity.");
        c((new StringBuilder()).append("Purchase data: ").append(s).toString());
        c((new StringBuilder()).append("Data signature: ").append(s1).toString());
        c((new StringBuilder()).append("Extras: ").append(intent.getExtras()).toString());
        c((new StringBuilder()).append("Expected item type: ").append(l).toString());
        if (s == null || s1 == null)
        {
            d("BUG: either purchaseData or dataSignature is null.");
            c((new StringBuilder()).append("Extras: ").append(intent.getExtras().toString()).toString());
            i k2 = new i(-1008, "IAB returned null purchaseData or dataSignature");
            if (m != null)
            {
                m.a(k2, null, null);
            }
            return true;
        }
        j j3;
        try
        {
            j3 = new j(l, s, s1);
        }
        catch (JSONException jsonexception)
        {
            d("Failed to parse purchase data.");
            jsonexception.printStackTrace();
            i l2 = new i(-1002, "Failed to parse purchase data.");
            if (m != null)
            {
                m.a(l2, null, null);
            }
            return true;
        }
        if (m != null)
        {
            m.a(new i(0, "Success"), j3.c(), j3);
        }
_L4:
        return true;
_L2:
        if (j1 == -1)
        {
            c((new StringBuilder()).append("Result code was OK but in-app billing response was not OK: ").append(a(k1)).toString());
            if (m != null)
            {
                i j2 = new i(k1, "Problem purchashing item.");
                m.a(j2, null, null);
            }
        } else
        if (j1 == 0)
        {
            c((new StringBuilder()).append("Purchase canceled - Response: ").append(a(k1)).toString());
            i i2 = new i(-1005, "User canceled.");
            if (m != null)
            {
                m.a(i2, null, null);
            }
        } else
        {
            d((new StringBuilder()).append("Purchase failed. Result code: ").append(Integer.toString(j1)).append(". Response: ").append(a(k1)).toString());
            i l1 = new i(-1006, "Unknown purchase response.");
            if (m != null)
            {
                m.a(l1, null, null);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    void b()
    {
        c((new StringBuilder()).append("Ending async operation: ").append(g).toString());
        g = "";
        f = false;
    }

    void b(String s)
    {
        if (f)
        {
            throw new IllegalStateException((new StringBuilder()).append("Can't start async operation (").append(s).append(") because another async operation(").append(g).append(") is in progress.").toString());
        } else
        {
            g = s;
            f = true;
            c((new StringBuilder()).append("Starting async operation: ").append(s).toString());
            return;
        }
    }

    public void b(boolean flag)
    {
        e = flag;
    }

    void c(String s)
    {
        if (a)
        {
            Log.d(b, s);
        }
    }

    void d(String s)
    {
        if (a)
        {
            Log.e(b, (new StringBuilder()).append("In-app billing error: ").append(s).toString());
        }
    }

    void e(String s)
    {
        if (a)
        {
            Log.w(b, (new StringBuilder()).append("In-app billing warning: ").append(s).toString());
        }
    }
}
