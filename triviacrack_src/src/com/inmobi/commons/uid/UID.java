// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.uid;

import android.content.Context;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.inmobi.commons.uid:
//            UIDHelper, UIDUtil

public class UID
{

    public static final String FACEBOOK_ID = "FBA";
    public static final boolean FBA_DEF = false;
    public static final boolean LID_DEF = true;
    public static final String LOGIN_ID = "LID";
    public static final boolean LTVE_DEF = true;
    public static final String LTV_ID = "LTVID";
    public static final String LTV_ID_ENABLE = "LTVID";
    public static final boolean O1_DEF = true;
    public static final String ODIN1 = "O1";
    public static final String SESSION_ID = "SID";
    public static final boolean SID_DEF = true;
    public static final boolean UM5_DEF = true;
    public static final String UM5_ID = "UM5";
    private static UID a = new UID();
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;

    public UID()
    {
        b = true;
        c = true;
        d = true;
        e = false;
        f = true;
        g = true;
    }

    public UID(Context context)
    {
        b = true;
        c = true;
        d = true;
        e = false;
        f = true;
        g = true;
        InternalSDKUtil.setContext(context);
    }

    public UID(Context context, Map map)
    {
        this(context);
        setFromMap(map);
    }

    public UID(Map map)
    {
        b = true;
        c = true;
        d = true;
        e = false;
        f = true;
        g = true;
        setFromMap(map);
    }

    private Map a(int i, String s)
    {
        int j;
        Context context;
        HashMap hashmap;
        j = UserInfo.getInstance().getDeviceIDMask();
        context = InternalSDKUtil.getContext();
        hashmap = new HashMap();
        if (j > 0) goto _L2; else goto _L1
_L1:
        if (b && a.b)
        {
            hashmap.put("O1", UIDHelper.getODIN1(UIDHelper.getAndroidId(context)));
        }
        if (e && a.e)
        {
            String s4 = UIDHelper.getFBId(context);
            if (s4 != null)
            {
                hashmap.put("FBA", s4);
            }
        }
        if (f && a.f)
        {
            hashmap.put("UM5", UIDHelper.getUM5(UIDHelper.getAndroidId(context)));
        }
_L4:
        if (d && a.d)
        {
            String s2 = UserInfo.getInstance().getIDType(IMIDType.ID_LOGIN);
            if (s2 != null)
            {
                hashmap.put("LID", s2);
            }
        }
        if (c && a.c)
        {
            String s1 = UserInfo.getInstance().getIDType(IMIDType.ID_SESSION);
            if (s1 != null)
            {
                hashmap.put("SID", s1);
            }
        }
        if (g && a.g)
        {
            Long long1 = AnalyticsInitializer.getRawConfigParams().getLTVId();
            if (long1 != null)
            {
                hashmap.put("LTVID", (new StringBuilder()).append(long1).append("").toString());
            }
        }
        return hashmap;
_L2:
        if ((j & 2) != 2 && b && a.b)
        {
            hashmap.put("O1", UIDHelper.getODIN1(UIDHelper.getAndroidId(context)));
        }
        if ((j & 4) != 4 && e && a.e)
        {
            String s3 = UIDHelper.getFBId(context);
            if (s3 != null)
            {
                hashmap.put("FBA", s3);
            }
        }
        if ((j & 8) != 8 && f && a.f)
        {
            hashmap.put("UM5", UIDHelper.getUM5(UIDHelper.getAndroidId(context)));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private Map b(int i, String s)
    {
        int j;
        Context context;
        HashMap hashmap;
        j = UserInfo.getInstance().getDeviceIDMask();
        context = InternalSDKUtil.getContext();
        hashmap = new HashMap();
        if (j > 0) goto _L2; else goto _L1
_L1:
        if (b && a.b)
        {
            hashmap.put("O1", UIDHelper.a(UIDHelper.getODIN1(UIDHelper.getAndroidId(context)), s));
        }
        if (e && a.e)
        {
            String s4 = UIDHelper.getFBId(context);
            if (s4 != null)
            {
                hashmap.put("FBA", UIDHelper.a(s4, s));
            }
        }
        if (f && a.f)
        {
            hashmap.put("UM5", UIDHelper.a(UIDHelper.getUM5(UIDHelper.getAndroidId(context)), s));
        }
_L4:
        if (d && a.d)
        {
            String s2 = UserInfo.getInstance().getIDType(IMIDType.ID_LOGIN);
            if (s2 != null)
            {
                hashmap.put("LID", UIDHelper.a(s2, s));
            }
        }
        if (c && a.c)
        {
            String s1 = UserInfo.getInstance().getIDType(IMIDType.ID_SESSION);
            if (s1 != null)
            {
                hashmap.put("SID", UIDHelper.a(s1, s));
            }
        }
        if (g && a.g)
        {
            Long long1 = AnalyticsInitializer.getRawConfigParams().getLTVId();
            if (long1 != null)
            {
                hashmap.put("LTVID", UIDHelper.a((new StringBuilder()).append(long1).append("").toString(), s));
            }
        }
        return hashmap;
_L2:
        if ((j & 2) != 2 && b && a.b)
        {
            hashmap.put("O1", UIDHelper.a(UIDHelper.getODIN1(UIDHelper.getAndroidId(context)), s));
        }
        if ((j & 4) != 4 && e && a.e)
        {
            String s3 = UIDHelper.getFBId(context);
            if (s3 != null)
            {
                hashmap.put("FBA", UIDHelper.a(s3, s));
            }
        }
        if ((j & 8) != 8 && f && a.f)
        {
            hashmap.put("UM5", UIDHelper.a(UIDHelper.getUM5(UIDHelper.getAndroidId(context)), s));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static UID getCommonsUid()
    {
        return a;
    }

    public String getDefaultUidMap(int i, String s, Map map)
    {
        Map map1 = b(i, s);
        if (map != null)
        {
            Iterator iterator = map.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s1 = (String)iterator.next();
                String s2 = (String)map.get(s1);
                if (s2 != null)
                {
                    map1.put(s1, UIDHelper.a(s2, s));
                }
            } while (true);
        }
        return UIDUtil.getEncryptedJSON(map1);
    }

    public String getDefaultUidMapWithoutXor(int i, String s, Map map)
    {
        Map map1 = a(i, s);
        if (map != null)
        {
            Iterator iterator = map.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s1 = (String)iterator.next();
                String s2 = (String)map.get(s1);
                if (s2 != null)
                {
                    map1.put(s1, s2);
                }
            } while (true);
        }
        return UIDUtil.getJSON(map1);
    }

    public String getUidMap(int i, String s, Map map)
    {
        try
        {
            InternalSDKUtil.initialize(InternalSDKUtil.getContext());
        }
        catch (Exception exception)
        {
            Log.internal("commons", "Unable to initialize commons.");
        }
        return getDefaultUidMap(i, s, map);
    }

    public String getUidMapWitoutXOR(int i, String s, Map map)
    {
        try
        {
            InternalSDKUtil.initialize(InternalSDKUtil.getContext());
        }
        catch (Exception exception)
        {
            Log.internal("commons", "Unable to initialize commons.");
        }
        return getDefaultUidMapWithoutXor(i, s, map);
    }

    public boolean isFba()
    {
        return e;
    }

    public boolean isLid()
    {
        return d;
    }

    public boolean isLtve()
    {
        return g;
    }

    public boolean isO1()
    {
        return b;
    }

    public boolean isSid()
    {
        return c;
    }

    public boolean isUm5()
    {
        return f;
    }

    public final void setFromMap(Map map)
    {
        b = InternalSDKUtil.getBooleanFromMap(map, "O1");
        c = InternalSDKUtil.getBooleanFromMap(map, "SID");
        d = InternalSDKUtil.getBooleanFromMap(map, "LID");
        e = InternalSDKUtil.getBooleanFromMap(map, "FBA");
        f = InternalSDKUtil.getBooleanFromMap(map, "UM5");
        g = InternalSDKUtil.getBooleanFromMap(map, "LTVID");
    }

}
