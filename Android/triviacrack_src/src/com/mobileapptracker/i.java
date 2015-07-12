// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

// Referenced classes of package com.mobileapptracker:
//            s

public class i
{

    private static i b = null;
    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    private String H;
    private String I;
    private String J;
    private String K;
    private String L;
    private String M;
    private String N;
    private String O;
    private String P;
    private String Q;
    private String R;
    private String S;
    private String T;
    private String U;
    private String V;
    private Location W;
    private String X;
    private String Y;
    private String Z;
    private Context a;
    private String aA;
    private String aB;
    private String aC;
    private String aD;
    private String aE;
    private String aF;
    private String aG;
    private String aH;
    private String aI;
    private String aJ;
    private String aK;
    private String aa;
    private String ab;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    private String ag;
    private String ah;
    private String ai;
    private String aj;
    private String ak;
    private String al;
    private String am;
    private String an;
    private String ao;
    private String ap;
    private String aq;
    private String ar;
    private String as;
    private String at;
    private String au;
    private String av;
    private String aw;
    private String ax;
    private String ay;
    private String az;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;
    private String z;

    public i()
    {
        c = null;
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        j = null;
        k = null;
        l = null;
        m = null;
        n = null;
        o = null;
        p = null;
        q = null;
        r = null;
        s = null;
        t = null;
        u = null;
        v = null;
        w = null;
        x = null;
        y = null;
        z = null;
        A = null;
        B = null;
        C = null;
        D = null;
        E = null;
        F = null;
        G = null;
        H = null;
        I = null;
        J = null;
        K = null;
        L = null;
        M = null;
        N = null;
        O = null;
        P = null;
        Q = null;
        R = null;
        S = null;
        T = null;
        U = null;
        V = null;
        W = null;
        X = null;
        Y = null;
        Z = null;
        aa = null;
        ab = null;
        ac = null;
        ad = null;
        ae = null;
        af = null;
        ag = null;
        ah = null;
        ai = null;
        aj = null;
        ak = null;
        al = null;
        am = null;
        an = null;
        ao = null;
        ap = null;
        aq = null;
        ar = null;
        as = null;
        at = null;
        au = null;
        av = null;
        aw = null;
        ax = null;
        ay = null;
        az = null;
        aA = null;
        aB = null;
        aC = null;
        aD = null;
        aE = null;
        aF = null;
        aG = null;
        aH = null;
        aI = null;
        aJ = null;
        aK = null;
    }

    public static i a()
    {
        return b;
    }

    private String a(String s1, String s2)
    {
        this;
        JVM INSTR monitorenter ;
        String s3 = a.getSharedPreferences(s1, 0).getString(s2, "");
        this;
        JVM INSTR monitorexit ;
        return s3;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(Context context, String s1, String s2)
    {
        if (b == null)
        {
            i i1 = new i();
            b = i1;
            i1.a = context;
            b.a(context, s1);
        }
    }

    static void a(i i1, String s1)
    {
        i1.aq = s1;
    }

    private void a(String s1, String s2, String s3)
    {
        this;
        JVM INSTR monitorenter ;
        a.getSharedPreferences(s1, 0).edit().putString(s2, s3).commit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean a(Context context, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        String s2;
        PackageManager packagemanager;
        b(s1.trim());
        h("USD");
        (new Handler(Looper.getMainLooper())).post(new s(this, a));
        s2 = a.getPackageName();
        P(s2);
        packagemanager = a.getPackageManager();
        Exception exception;
        Exception exception1;
        boolean flag;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception1;
        WindowManager windowmanager;
        int i1;
        int j1;
        TelephonyManager telephonymanager;
        String s3;
        String s4;
        try
        {
            d(packagemanager.getApplicationLabel(packagemanager.getApplicationInfo(s2, 0)).toString());
            F(Long.toString((new Date((new File(packagemanager.getApplicationInfo(s2, 0).sourceDir)).lastModified())).getTime() / 1000L));
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
        e(Integer.toString(packagemanager.getPackageInfo(s2, 0).versionCode));
_L3:
        G(packagemanager.getInstallerPackageName(s2));
        l(Build.MODEL);
        i(Build.MANUFACTURER);
        k(System.getProperty("os.arch"));
        O(android.os.Build.VERSION.RELEASE);
        U(Float.toString(context.getResources().getDisplayMetrics().density));
        windowmanager = (WindowManager)context.getSystemService("window");
        if (android.os.Build.VERSION.SDK_INT < 13) goto _L2; else goto _L1
_L1:
        Point point = new Point();
        windowmanager.getDefaultDisplay().getSize(point);
        i1 = point.x;
        j1 = point.y;
_L5:
        W(Integer.toString(i1));
        V(Integer.toString(j1));
        if (!((ConnectivityManager)a.getSystemService("connectivity")).getNetworkInfo(1).isConnected())
        {
            break MISSING_BLOCK_LABEL_510;
        }
        f("WIFI");
_L6:
        I(Locale.getDefault().getDisplayLanguage(Locale.US));
        telephonymanager = (TelephonyManager)a.getSystemService("phone");
        if (telephonymanager == null)
        {
            break MISSING_BLOCK_LABEL_525;
        }
        if (telephonymanager.getNetworkCountryIso() != null)
        {
            g(telephonymanager.getNetworkCountryIso());
        }
        j(telephonymanager.getNetworkOperatorName());
        s3 = telephonymanager.getNetworkOperator();
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_411;
        }
        try
        {
            String s5 = s3.substring(0, 3);
            String s6 = s3.substring(3);
            L(s5);
            M(s6);
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception) { }
        s4 = ac();
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_430;
        }
        if (s4.length() != 0)
        {
            break MISSING_BLOCK_LABEL_440;
        }
        K(UUID.randomUUID().toString());
        flag = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
        namenotfoundexception1;
        e("0");
          goto _L3
        exception1;
        Log.d("MobileAppTracker", "MobileAppTracker initialization failed");
        exception1.printStackTrace();
        flag = false;
          goto _L4
_L2:
        i1 = windowmanager.getDefaultDisplay().getWidth();
        j1 = windowmanager.getDefaultDisplay().getHeight();
          goto _L5
        f("mobile");
          goto _L6
        exception;
        throw exception;
        g(Locale.getDefault().getCountry());
        break MISSING_BLOCK_LABEL_411;
    }

    public String A()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = A;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void A(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        L = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String B()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = B;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void B(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        M = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String C()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = C;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void C(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        N = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String D()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = D;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void D(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        P = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String E()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = E;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void E(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        Q = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String F()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = F;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void F(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        S = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String G()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = G;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void G(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        T = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String H()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = H;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void H(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        a("mat_is_paying_user", "mat_is_paying_user", s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String I()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = I;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void I(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        U = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String J()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = J;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void J(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        a("mat_log_id_last_open", "logId", s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String K()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = K;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void K(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        a("mat_id", "mat_id", s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String L()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = L;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void L(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        Z = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String M()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = M;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void M(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aa = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String N()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = N;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void N(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        a("mat_log_id_open", "logId", s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String O()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = O;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void O(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ab = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String P()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = P;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void P(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ac = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String Q()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = Q;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void Q(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        af = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String R()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = R;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void R(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ag = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String S()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = S;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void S(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ah = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String T()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = T;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void T(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ai = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String U()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_log_id_install", "logId");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void U(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aj = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String V()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_referrer", "referrer");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void V(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ak = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String W()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_is_paying_user", "mat_is_paying_user");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void W(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        al = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String X()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = U;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void X(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        a("mat_user_ids", "user_email", s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String Y()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_log_id_last_open", "logId");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void Y(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        a("mat_user_ids", "user_id", s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String Z()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = V;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void Z(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        a("mat_user_ids", "user_name", s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        c = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String aA()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_user_ids", "user_name");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aB()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ar;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aC()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = as;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aD()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = at;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aE()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = au;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aF()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = av;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aG()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aw;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aH()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ax;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aI()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ay;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aJ()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = az;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aK()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aA;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aL()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aB;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aM()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aC;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aN()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aD;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aO()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aE;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aP()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aF;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aQ()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aG;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aR()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aH;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aS()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aI;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aT()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aJ;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aU()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aK;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aa()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = X;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void aa(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ar = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ab()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = Y;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ab(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        as = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ac()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_id", "mat_id");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ac(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        at = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ad()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = Z;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ad(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        au = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ae()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aa;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ae(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        av = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String af()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_log_id_open", "logId");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void af(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aw = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ag()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ab;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ag(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ax = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ah()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ac;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ah(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ay = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ai()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ad;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ai(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        az = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String aj()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ae;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void aj(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aA = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ak()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = af;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ak(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aB = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String al()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ag;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void al(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aC = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String am()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ah;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void am(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aD = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String an()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ai;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void an(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aE = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ao()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aj;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ao(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aF = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ap()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ak;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void ap(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aG = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String aq()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = al;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void aq(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aH = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String ar()
    {
        this;
        JVM INSTR monitorenter ;
        return "3.5";
    }

    public void ar(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aI = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String as()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = am;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void as(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aJ = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String at()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = an;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void at(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aK = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String au()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ao;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String av()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = ap;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String aw()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_log_id_update", "logId");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String ax()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = aq;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String ay()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_user_ids", "user_email");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String az()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = a("mat_user_ids", "user_id");
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        v(null);
        x(null);
        T(null);
        h("USD");
        S(null);
        s(null);
        r(null);
        w(null);
        y(null);
        A(null);
        z(null);
        t(null);
        u(null);
        m(null);
        n(null);
        o(null);
        p(null);
        q(null);
        ab(null);
        aa(null);
        ac(null);
        ap(null);
        aq(null);
        ar(null);
        as(null);
        at(null);
        an(null);
        am(null);
        al(null);
        ao(null);
        aj(null);
        ak(null);
        ah(null);
        ag(null);
        af(null);
        ai(null);
        ad(null);
        ae(null);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void b(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        d = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String c()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = c;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void c(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        h = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String d()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = d;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void d(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        m = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String e()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = e;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void e(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        n = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String f()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = f;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void f(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        o = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String g()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = g;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void g(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        p = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String h()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = h;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void h(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        q = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String i()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = i;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void i(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        r = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String j()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = j;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void j(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        s = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String k()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = k;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void k(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        t = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String l()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = l;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void l(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        w = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String m()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = m;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void m(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        x = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String n()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = n;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void n(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        y = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String o()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = o;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void o(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        z = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String p()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = p;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void p(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        A = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String q()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = q;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void q(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        B = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String r()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = r;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void r(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        C = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String s()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = s;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void s(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        D = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String t()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = t;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void t(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        E = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String u()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = u;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void u(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        F = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String v()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = v;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void v(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        G = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String w()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = w;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void w(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        H = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String x()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = x;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void x(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        I = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String y()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = y;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void y(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        J = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String z()
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = z;
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void z(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        K = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
