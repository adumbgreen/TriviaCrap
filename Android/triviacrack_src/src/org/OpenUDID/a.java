// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.OpenUDID;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;

// Referenced classes of package org.OpenUDID:
//            b

public class a
    implements ServiceConnection
{

    private static String f = null;
    private static boolean g = false;
    private final Context a;
    private List b;
    private Map c;
    private final SharedPreferences d;
    private final Random e = new Random();

    private a(Context context)
    {
        d = context.getSharedPreferences("openudid_prefs", 0);
        a = context;
        c = new HashMap();
    }

    public static String a()
    {
        if (!g)
        {
            Log.e("OpenUDID", "Initialisation isn't done");
        }
        return f;
    }

    static Map a(a a1)
    {
        return a1.c;
    }

    public static void a(Context context)
    {
        a a1 = new a(context);
        f = a1.d.getString("openudid", null);
        if (f == null)
        {
            a1.b = context.getPackageManager().queryIntentServices(new Intent("org.OpenUDID.GETUDID"), 0);
            Log.d("OpenUDID", (new StringBuilder()).append(a1.b.size()).append(" services matches OpenUDID").toString());
            if (a1.b != null)
            {
                a1.d();
            }
            return;
        } else
        {
            Log.d("OpenUDID", (new StringBuilder()).append("OpenUDID: ").append(f).toString());
            g = true;
            return;
        }
    }

    private void b()
    {
        android.content.SharedPreferences.Editor editor = d.edit();
        editor.putString("openudid", f);
        editor.commit();
    }

    private void c()
    {
        Log.d("OpenUDID", "Generating openUDID");
        f = android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id");
        if (f == null || f.equals("9774d56d682e549c") || f.length() < 15)
        {
            f = (new BigInteger(64, new SecureRandom())).toString(16);
        }
    }

    private void d()
    {
        if (b.size() > 0)
        {
            Log.d("OpenUDID", (new StringBuilder()).append("Trying service ").append(((ResolveInfo)b.get(0)).loadLabel(a.getPackageManager())).toString());
            ServiceInfo serviceinfo = ((ResolveInfo)b.get(0)).serviceInfo;
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(serviceinfo.applicationInfo.packageName, serviceinfo.name));
            a.bindService(intent, this, 1);
            b.remove(0);
            return;
        }
        e();
        if (f == null)
        {
            c();
        }
        Log.d("OpenUDID", (new StringBuilder()).append("OpenUDID: ").append(f).toString());
        b();
        g = true;
    }

    private void e()
    {
        if (!c.isEmpty())
        {
            TreeMap treemap = new TreeMap(new b(this));
            treemap.putAll(c);
            f = (String)treemap.firstKey();
        }
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel.writeInt(e.nextInt());
        parcel1 = Parcel.obtain();
        ibinder.transact(1, Parcel.obtain(), parcel1, 0);
        if (parcel.readInt() != parcel1.readInt()) goto _L2; else goto _L1
_L1:
        String s = parcel1.readString();
        if (s == null) goto _L2; else goto _L3
_L3:
        Log.d("OpenUDID", (new StringBuilder()).append("Received ").append(s).toString());
        if (!c.containsKey(s)) goto _L5; else goto _L4
_L4:
        c.put(s, Integer.valueOf(1 + ((Integer)c.get(s)).intValue()));
_L2:
        a.unbindService(this);
        d();
        return;
_L5:
        try
        {
            c.put(s, Integer.valueOf(1));
        }
        catch (RemoteException remoteexception)
        {
            Log.e("OpenUDID", (new StringBuilder()).append("RemoteException: ").append(remoteexception.getMessage()).toString());
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
    }

}
