// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Looper;
import java.io.IOException;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.util:
//            Logging

public class e
{

    public static com.admarvel.android.util.e a;
    private String b;
    private int c;
    private final WeakReference d;

    private com.admarvel.android.util.e(Context context)
    {
        int i;
        int j;
        i = 1;
        j = 0;
        super();
        b = "VALUE_NOT_DEFINED";
        d = new WeakReference(context);
        Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        int k = i;
_L1:
label0:
        {
            if (k == 0)
            {
                break label0;
            }
            e e1 = new e(context);
            String s = e.a(e1);
            int l = e1.a();
            if (s != null && s.length() > 0)
            {
                a(s);
                ClassNotFoundException classnotfoundexception;
                if (l != i)
                {
                    i = 0;
                }
                a(i);
                if (b == null || !b.equals("VALUE_NOT_DEFINED"))
                {
                    break label0;
                }
                Logging.log((new StringBuilder()).append("Not able to fetch GoogleAdv Id form google service library trying form gms IAdvertisingIdService").append(b).toString());
            } else
            {
                Logging.log((new StringBuilder()).append("Not able to fetch GoogleAdv Id form google service library trying form gms IAdvertisingIdService").append(b).toString());
                j = 0;
            }
        }
_L2:
        if (j == 0)
        {
            Logging.log("Fetching from IAdvertisingIdService ");
            b();
        }
        return;
        classnotfoundexception;
        k = 0;
          goto _L1
        j = k;
          goto _L2
    }

    static int a(com.admarvel.android.util.e e1, int i)
    {
        e1.c = i;
        return i;
    }

    public static void a()
    {
        a = null;
    }

    public static com.admarvel.android.util.e c(Context context)
    {
        if (a == null || a != null && a.b.equals("VALUE_NOT_DEFINED"))
        {
            a = null;
            a = new com.admarvel.android.util.e(context);
        }
        return a;
    }

    static void d(Context context)
    {
        e(context);
    }

    private static void e(Context context)
    {
        b b1;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        Intent intent;
        c c1;
        a a1;
        try
        {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        }
        catch (Exception exception)
        {
            throw exception;
        }
        b1 = new b();
        intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (!context.bindService(intent, b1, 1))
        {
            break MISSING_BLOCK_LABEL_138;
        }
        c1 = new c(b1.a());
        a1 = new a(c1.a(), c1.a(true, context));
        a.b = a1.a();
        context.unbindService(b1);
        return;
        Exception exception2;
        exception2;
        throw exception2;
        Exception exception1;
        exception1;
        context.unbindService(b1);
        throw exception1;
        throw new IOException("Google Play connection failed");
    }

    public int a(Context context)
    {
        return c;
    }

    public void a(int i)
    {
        c = i;
    }

    public void a(String s)
    {
        b = s;
    }

    public String b(Context context)
    {
        if (b != null)
        {
            return b;
        } else
        {
            return "VALUE_NOT_DEFINED";
        }
    }

    public void b()
    {
        Context context;
        if (d != null)
        {
            context = (Context)d.get();
        } else
        {
            context = null;
        }
        if (context != null)
        {
            (new Thread(new d(context))).start();
        }
    }

    private class e
    {

        final com.admarvel.android.util.e a;
        private final Context b;

        static String a(e e1)
        {
            return e1.b();
        }

        private String b()
        {
            com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
            String s;
            String s1;
            try
            {
                info = AdvertisingIdClient.getAdvertisingIdInfo(b.getApplicationContext());
            }
            catch (IllegalStateException illegalstateexception)
            {
                Logging.log((new StringBuilder()).append("IllegalStateException ").append(illegalstateexception.getMessage()).append(" in fetching ADvID").toString());
                return null;
            }
            catch (g g1)
            {
                Logging.log((new StringBuilder()).append("GooglePlayServicesRepairableException ").append(g1.getMessage()).append(" in fetching ADvID").toString());
                return null;
            }
            catch (IOException ioexception)
            {
                Logging.log((new StringBuilder()).append("IOException ").append(ioexception.getMessage()).append(" in fetching ADvID").toString());
                return null;
            }
            catch (f f1)
            {
                Logging.log((new StringBuilder()).append("GooglePlayServicesNotAvailableException ").append(f1.getMessage()).append(" in fetching ADvID").toString());
                return null;
            }
            s = null;
            if (info == null)
            {
                break MISSING_BLOCK_LABEL_31;
            }
            s1 = info.getId();
            s = s1;
            return s;
        }

        public boolean a()
        {
            com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
            boolean flag;
            boolean flag1;
            try
            {
                info = AdvertisingIdClient.getAdvertisingIdInfo(b.getApplicationContext());
            }
            catch (IllegalStateException illegalstateexception)
            {
                Logging.log((new StringBuilder()).append("IllegalStateException ").append(illegalstateexception.getMessage()).append(" in fetching ADvID").toString());
                return false;
            }
            catch (g g1)
            {
                Logging.log((new StringBuilder()).append("GooglePlayServicesRepairableException ").append(g1.getMessage()).append(" in fetching ADvID").toString());
                return false;
            }
            catch (IOException ioexception)
            {
                Logging.log((new StringBuilder()).append("IOException ").append(ioexception.getMessage()).append(" in fetching ADvID").toString());
                return false;
            }
            catch (f f1)
            {
                Logging.log((new StringBuilder()).append("GooglePlayServicesNotAvailableException ").append(f1.getMessage()).append(" in fetching ADvID").toString());
                return false;
            }
            flag = false;
            if (info == null)
            {
                break MISSING_BLOCK_LABEL_31;
            }
            flag1 = info.isLimitAdTrackingEnabled();
            flag = flag1;
            return flag;
        }

        public e(Context context)
        {
            a = com.admarvel.android.util.e.this;
            super();
            b = context;
        }
    }


    private class b
        implements ServiceConnection
    {

        boolean a;
        private final LinkedBlockingQueue b;

        public IBinder a()
        {
            if (a)
            {
                throw new IllegalStateException();
            } else
            {
                a = true;
                return (IBinder)b.take();
            }
        }

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            try
            {
                b.put(ibinder);
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                return;
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
        }

        private b()
        {
            a = false;
            b = new LinkedBlockingQueue(1);
        }

    }


    private class c
        implements IInterface
    {

        private IBinder a;

        public String a()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            a.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return s;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean a(boolean flag, Context context)
        {
            int i;
            Parcel parcel;
            Parcel parcel1;
            i = 1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            int j;
            boolean flag1;
            com.admarvel.android.util.e e1;
            if (flag)
            {
                j = i;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
            a.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
            {
                flag1 = i;
            } else
            {
                flag1 = false;
            }
            e1 = com.admarvel.android.util.e.a;
            if (flag1 != i)
            {
                i = 0;
            }
            com.admarvel.android.util.e.a(e1, i);
            parcel1.recycle();
            parcel.recycle();
            return flag1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public IBinder asBinder()
        {
            return a;
        }

        public c(IBinder ibinder)
        {
            a = ibinder;
        }
    }


    private class a
    {

        private final String a;
        private final boolean b;

        public String a()
        {
            return a;
        }

        a(String s, boolean flag)
        {
            a = s;
            b = flag;
        }
    }


    private class d
        implements Runnable
    {

        final com.admarvel.android.util.e a;
        private final Context b;

        public void run()
        {
            if (b == null)
            {
                break MISSING_BLOCK_LABEL_14;
            }
            com.admarvel.android.util.e.d(b);
            return;
            Exception exception;
            exception;
            Logging.log((new StringBuilder()).append("FetchAndroidAdvertisingIdUsingIntentRunnable error ").append(exception.getMessage()).toString());
            return;
        }

        public d(Context context)
        {
            a = com.admarvel.android.util.e.this;
            super();
            b = context;
        }
    }

}
