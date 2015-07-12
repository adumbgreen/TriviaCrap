// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.ViewGroup;
import android.view.Window;
import com.admarvel.android.util.Logging;
import com.admarvel.android.util.OptionalUtils;
import com.admarvel.android.util.e;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

// Referenced classes of package com.admarvel.android.ads:
//            ac, ab, AdMarvelUtils

public class a
{

    public static String a;
    private static final String b = ac.c();
    private static final Uri c = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private JSONObject d;
    private String e;
    private int f;

    public a()
    {
        e = "VALUE_NOT_DEFINED";
        f = 0x80000000;
    }

    private com.admarvel.android.b.a.a a(HashMap hashmap)
    {
_L7:
        int i;
        if (i > 10) goto _L2; else goto _L1
_L1:
        HashMap hashmap2 = a(hashmap, i);
        if (hashmap2.size() > 0)
        {
            if (hashmap2.size() == 1)
            {
                return (com.admarvel.android.b.a.a)((java.util.Map.Entry)hashmap2.entrySet().iterator().next()).getValue();
            } else
            {
                return a(hashmap2, true);
            }
        }
          goto _L3
_L2:
        hashmap3 = a(hashmap, 0);
        if (hashmap3.size() <= 0) goto _L5; else goto _L4
_L4:
        if (hashmap3.size() == 1)
        {
            return (com.admarvel.android.b.a.a)((java.util.Map.Entry)hashmap3.entrySet().iterator().next()).getValue();
        }
        a1 = a(hashmap3, false);
        return a1;
_L5:
        return null;
        HashMap hashmap3;
        com.admarvel.android.b.a.a a1;
        try
        {
            new HashMap();
            HashMap hashmap1 = a(hashmap, -1);
            if (hashmap1.size() > 0)
            {
                if (hashmap1.size() == 1)
                {
                    return (com.admarvel.android.b.a.a)((java.util.Map.Entry)hashmap1.entrySet().iterator().next()).getValue();
                } else
                {
                    return a(hashmap1, false);
                }
            }
        }
        catch (Exception exception)
        {
            Logging.log((new StringBuilder()).append(exception.getMessage()).append("Offline SDK:").append("Exception in offline getAdBasedOnWeightAndPriority").toString());
            return null;
        }
        i = 1;
        continue; /* Loop/switch isn't completed */
_L3:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private com.admarvel.android.b.a.a a(HashMap hashmap, boolean flag)
    {
        int i = 0;
        if (flag) goto _L2; else goto _L1
_L1:
        int ai[];
        float af[][];
        Iterator iterator;
        int j;
        float f1;
        float f2;
        float f3;
        int k;
        int l;
        com.admarvel.android.b.a.a a1;
        Integer integer;
        float f4;
        int ai2[][];
        Iterator iterator1;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        Integer integer1;
        int j2;
        try
        {
            int ai1[] = {
                hashmap.size(), 2
            };
            ai2 = (int[][])Array.newInstance(Integer.TYPE, ai1);
            iterator1 = hashmap.keySet().iterator();
        }
        catch (Exception exception)
        {
            Logging.log((new StringBuilder()).append(exception.getMessage()).append("Offline SDK:").append("Exception in offline getAdBasedOnWeight").toString());
            return null;
        }
        i1 = 0;
        j1 = 0;
        if (!iterator1.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        integer1 = (Integer)iterator1.next();
        ai2[i1][0] = j1 + ((com.admarvel.android.b.a.a)hashmap.get(integer1)).g();
        ai2[i1][1] = ((com.admarvel.android.b.a.a)hashmap.get(integer1)).f();
        j2 = ai2[i1][0];
        i1++;
        j1 = j2;
        if (true) goto _L4; else goto _L3
_L4:
        break MISSING_BLOCK_LABEL_52;
_L3:
        k1 = 1 + ai2[-1 + ai2.length][0];
        l1 = (int)((100D * Math.random() * (double)k1) % (double)k1);
        i2 = ai2.length;
_L12:
        if (i >= i2) goto _L6; else goto _L5
_L5:
        if (ai2[i][0] >= l1)
        {
            return (com.admarvel.android.b.a.a)hashmap.get(Integer.valueOf(ai2[i][1]));
        }
          goto _L7
_L2:
        ai = (new int[] {
            hashmap.size(), 2
        });
        af = (float[][])Array.newInstance(Float.TYPE, ai);
        iterator = hashmap.keySet().iterator();
        j = 0;
        f1 = 0.0F;
_L9:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        integer = (Integer)iterator.next();
        af[j][0] = f1 + ((com.admarvel.android.b.a.a)hashmap.get(integer)).c();
        af[j][1] = ((com.admarvel.android.b.a.a)hashmap.get(integer)).f();
        f4 = af[j][0];
        j++;
        f1 = f4;
        if (true) goto _L9; else goto _L8
_L8:
        f2 = 1.0F + af[-1 + af.length][0];
        if (f2 < 1.0F)
        {
            f2 = 1.0F;
        }
        f3 = (float)((100D * Math.random() * (double)f2) % (double)f2);
        k = af.length;
        l = 0;
_L10:
        if (l >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        if (af[l][0] < f3)
        {
            break MISSING_BLOCK_LABEL_427;
        }
        a1 = (com.admarvel.android.b.a.a)hashmap.get(Integer.valueOf((int)af[l][1]));
        return a1;
        l++;
        if (true) goto _L10; else goto _L6
_L6:
        return null;
_L7:
        i++;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private String a(Context context)
    {
        Cursor cursor;
        String as[] = {
            "aid"
        };
        cursor = context.getContentResolver().query(c, as, null, null, null);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        boolean flag = cursor.moveToFirst();
        if (flag) goto _L3; else goto _L2
_L2:
        String s;
        s = null;
        if (cursor != null)
        {
            cursor.close();
        }
_L5:
        return s;
_L3:
        String s1 = cursor.getString(cursor.getColumnIndex("aid"));
        s = s1;
        if (cursor == null) goto _L5; else goto _L4
_L4:
        cursor.close();
        return s;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    private String a(a a1, Context context, int i, String s, Map map, String s1, String s2, 
            int j, String s3, Handler handler, boolean flag, boolean flag1, boolean flag2)
    {
        StringBuilder stringbuilder;
        int k;
        int l;
        String s5;
        String s6;
        String s7;
        Boolean boolean1;
        Boolean boolean3;
        stringbuilder = new StringBuilder();
        String s4;
        ab ab1;
        String s8;
        String s9;
        String s10;
        Activity activity;
        ViewGroup viewgroup;
        boolean flag3;
        Object obj;
        Boolean boolean4;
        try
        {
            s4 = ab.a(map, "||");
            ab.a(stringbuilder, "site_id", s2);
            ab.a(stringbuilder, "partner_id", s1);
            ab.a(stringbuilder, "timeout", String.valueOf(5000));
            ab.a(stringbuilder, "version", "1.5");
            ab.a(stringbuilder, "language", "java");
            ab.a(stringbuilder, "format", "android");
            ab.a(stringbuilder, "sdk_version", "2.4.5.1");
            ab.a(stringbuilder, "sdk_version_date", "2014-07-28");
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return null;
        }
        if (!flag2) goto _L2; else goto _L1
_L1:
        ab.a(stringbuilder, "sdk_supported", "");
_L25:
        ab.a(stringbuilder, "device_model", Build.MODEL);
        ab.a(stringbuilder, "device_name", Build.ID);
        ab.a(stringbuilder, "device_systemversion", android.os.Build.VERSION.RELEASE);
        ab.a(stringbuilder, "device_api_version", String.valueOf(ac.a()));
        ab.a(stringbuilder, "retrynum", String.valueOf(j));
        ab.a(stringbuilder, "excluded_banners", s3);
        if (i != 2) goto _L4; else goto _L3
_L3:
        ab.a(stringbuilder, "device_orientation", "landscape");
_L26:
        ab.a(stringbuilder, "device_connectivity", s);
        k = ab.g(context);
        if (k <= 0)
        {
            break MISSING_BLOCK_LABEL_237;
        }
        ab.a(stringbuilder, "resolution_width", String.valueOf(k));
        ab.a(stringbuilder, "max_image_width", String.valueOf(k));
        l = ab.h(context);
        if (l <= 0)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        ab.a(stringbuilder, "resolution_height", String.valueOf(l));
        ab.a(stringbuilder, "max_image_height", String.valueOf(l));
        ab.a(stringbuilder, "device_density", (new StringBuilder()).append("").append(ab.i(context)).toString());
        ab.a(stringbuilder, "device_os", "Android");
        if (!a1.equals(a.a)) goto _L6; else goto _L5
_L5:
        ab.a(stringbuilder, "adtype", "banner");
_L28:
        if (i != 2) goto _L8; else goto _L7
_L7:
        s5 = String.valueOf(l);
_L29:
        if (i != 2) goto _L10; else goto _L9
_L9:
        s6 = String.valueOf(k);
_L30:
        ab1 = new ab(context, handler);
        ab.a(stringbuilder, "device_details", (new StringBuilder()).append("brand:").append(Build.BRAND).append(",model:").append(Build.MODEL).append(",width:").append(s5).append(",height:").append(s6).append(",os:").append(android.os.Build.VERSION.RELEASE).append(",ua:").append(ab1.a()).toString());
        if (context == null) goto _L12; else goto _L11
_L11:
        s7 = context.getPackageName();
_L35:
        if (s7 == null)
        {
            break MISSING_BLOCK_LABEL_495;
        }
        if (s7.length() > 0)
        {
            ab.a(stringbuilder, "app_identifier", s7);
        }
        if (!(context instanceof Activity)) goto _L14; else goto _L13
_L13:
        activity = (Activity)context;
        if (activity == null) goto _L14; else goto _L15
_L15:
        viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
        boolean1 = Boolean.valueOf(false);
        if (ac.a() < 11) goto _L17; else goto _L16
_L16:
        flag3 = a1.equals(a.a);
        if (!flag3) goto _L19; else goto _L18
_L18:
        obj = android/view/ViewGroup.getMethod("isHardwareAccelerated", new Class[0]).invoke(viewgroup, (Object[])null);
        if (obj == null) goto _L21; else goto _L20
_L20:
        if (!(obj instanceof Boolean)) goto _L21; else goto _L22
_L22:
        boolean3 = (Boolean)obj;
_L34:
        if (!boolean3.booleanValue() || !flag)
        {
            break MISSING_BLOCK_LABEL_630;
        }
        if (!ab.c())
        {
            break MISSING_BLOCK_LABEL_630;
        }
        boolean4 = Boolean.valueOf(false);
        boolean3 = boolean4;
        boolean1 = boolean3;
_L17:
        ab.a(stringbuilder, "hardware_accelerated", boolean1.toString());
_L14:
        s8 = (String)map.get("ANDROID_ADVERTISING_ID");
        if (s8 == null)
        {
            break MISSING_BLOCK_LABEL_685;
        }
        if (s8.length() > 0)
        {
            ab.a(stringbuilder, "android_advertising_id", s8);
        }
        if (AdMarvelUtils.isTabletDevice(context)) goto _L24; else goto _L23
_L23:
        ab.a(stringbuilder, "auto-scaling", "true");
        ab.a(stringbuilder, "is_tablet", "false");
_L32:
        s9 = ab.c(context);
        if (!s9.equals("unknown-network"))
        {
            ab.a(stringbuilder, "carriername", s9);
        }
        s10 = ab.b(context);
        if (!s9.equals(""))
        {
            ab.a(stringbuilder, "radiotech", s10);
        }
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_783;
        }
        ab.a(stringbuilder, "force_pixel_track", "true");
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_806;
        }
        if (s4.length() > 0)
        {
            ab.a(stringbuilder, "target_params", s4);
        }
        return stringbuilder.toString();
_L2:
        ab.a(stringbuilder, "sdk_supported", b);
          goto _L25
_L4:
        ab.a(stringbuilder, "device_orientation", "portrait");
          goto _L26
_L6:
        if (!a1.equals(a.b)) goto _L28; else goto _L27
_L27:
        ab.a(stringbuilder, "adtype", "interstitial");
          goto _L28
_L8:
        s5 = String.valueOf(k);
          goto _L29
_L10:
        s6 = String.valueOf(l);
          goto _L30
_L33:
        Exception exception1;
        Logging.log(Log.getStackTraceString(exception1));
        Boolean boolean2;
        boolean1 = boolean2;
          goto _L17
_L19:
        if (!a1.equals(a.b)) goto _L17; else goto _L31
_L31:
        boolean1 = Boolean.valueOf(true);
          goto _L17
_L24:
        ab.a(stringbuilder, "auto-scaling", "false");
        ab.a(stringbuilder, "is_tablet", "true");
          goto _L32
        Exception exception2;
        exception2;
        boolean2 = boolean3;
        exception1 = exception2;
          goto _L33
_L21:
        boolean3 = boolean1;
          goto _L34
_L12:
        s7 = null;
          goto _L35
        exception1;
        boolean2 = boolean1;
          goto _L33
    }

    private String a(a a1, Context context, String s, int i, String s1, Map map, String s2, 
            String s3, int j, String s4, boolean flag, Handler handler, boolean flag1)
    {
        if (context == null)
        {
            return null;
        }
        HashMap hashmap = (HashMap)com.admarvel.android.b.a.a("/site_id_banner_map", "/site_id_banner_map", context);
        if (hashmap == null)
        {
            return null;
        }
        ArrayList arraylist = (ArrayList)hashmap.get(s3);
        if (arraylist == null)
        {
            return null;
        }
        HashMap hashmap1 = (HashMap)com.admarvel.android.b.a.a("/ad_link_object", "/ad_link_object", context);
        if (hashmap1 == null)
        {
            return null;
        }
        Iterator iterator = hashmap1.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (!arraylist.contains(String.valueOf((Integer)iterator.next())))
            {
                iterator.remove();
            }
        } while (true);
        HashMap hashmap2 = a(a1, context, i, s1, map, s2, s3, j, s4, handler, flag1);
        Logging.log((new StringBuilder()).append("Offline SDK:postString: &site_id=").append(s3).append("&partner_id=").append(s2).append(hashmap2).toString());
        HashMap hashmap3 = a(context, hashmap1, hashmap2);
        if (hashmap3 == null)
        {
            return null;
        }
        com.admarvel.android.b.a.a a2 = a(hashmap3);
        if (a2 == null)
        {
            return null;
        }
        HashMap hashmap4 = (HashMap)com.admarvel.android.b.a.a("/banner_folder_map", "/banner_folder_map", context);
        if (hashmap4 == null)
        {
            return null;
        }
        String s5 = (String)hashmap4.get(String.valueOf(a2.f()));
        SharedPreferences sharedpreferences = context.getSharedPreferences("admarvel_preferences", 0);
        if (sharedpreferences == null)
        {
            return null;
        }
        String s6 = (new StringBuilder()).append(sharedpreferences.getString("childDirectory", "NULL")).append("/").append(s5).toString();
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("banner_folder", s5);
        editor.commit();
        if (s5 != null)
        {
            String s7 = com.admarvel.android.b.a.a(s6, (new StringBuilder()).append(s5.split("_")[0]).append(".xml").toString());
            Logging.log((new StringBuilder()).append("Offline SDK:Admarvel XML Response:").append(s7).toString());
            return s7;
        } else
        {
            return null;
        }
    }

    private HashMap a(Context context, HashMap hashmap, HashMap hashmap1)
    {
        Iterator iterator;
        com.admarvel.android.b.a.a a1;
        HashMap hashmap3;
        HashMap hashmap2;
        SharedPreferences sharedpreferences;
        String s;
        try
        {
            hashmap2 = (HashMap)com.admarvel.android.b.a.a("/banner_folder_map", "/banner_folder_map", context);
        }
        catch (Exception exception)
        {
            Logging.log((new StringBuilder()).append(exception.getMessage()).append("Offline SDK:").append("Exception in offline discardNonMatchingAd ").toString());
            return null;
        }
        if (hashmap2 == null)
        {
            return null;
        }
        iterator = hashmap.keySet().iterator();
_L3:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_351;
        }
        a1 = (com.admarvel.android.b.a.a)hashmap.get((Integer)iterator.next());
        hashmap3 = a1.e();
        sharedpreferences = context.getSharedPreferences("admarvel_preferences", 0);
        s = (new StringBuilder()).append(sharedpreferences.getString("childDirectory", "NULL")).append("/").append((String)hashmap2.get(String.valueOf(a1.f()))).append("/").append(String.valueOf(a1.f())).append(".xml").toString();
        Logging.log((new StringBuilder()).append("Offline SDK:Path of banner selected").append(s).toString());
        if ((new File(s)).exists()) goto _L2; else goto _L1
_L1:
        Logging.log((new StringBuilder()).append("Offline SDK:Ad rejected beacause it is not downloaded yet").append(s).toString());
        iterator.remove();
          goto _L3
_L2:
label0:
        {
            if (!a(a1.b()))
            {
                break label0;
            }
            Logging.log("Offline SDK:Ad rejected beacause it is Expired ");
            iterator.remove();
        }
          goto _L3
        if (b(a1.a())) goto _L5; else goto _L4
_L4:
        Logging.log("Offline SDK:Ad rejected beacause campaign not started yet");
        iterator.remove();
          goto _L3
_L5:
        if (hashmap3 == null) goto _L3; else goto _L6
_L6:
        if (a(hashmap3, hashmap1)) goto _L3; else goto _L7
_L7:
        Logging.log("Offline SDK:Ad rejected beacause targetOption doesnot matched");
        iterator.remove();
          goto _L3
        return hashmap;
    }

    private HashMap a(a a1, Context context, int i, String s, Map map, String s1, String s2, 
            int j, String s3, Handler handler, boolean flag)
    {
        HashMap hashmap;
        Boolean boolean1;
        Boolean boolean4;
        hashmap = new HashMap();
        SharedPreferences sharedpreferences;
        int k;
        int l;
        Activity activity;
        ViewGroup viewgroup;
        boolean flag1;
        Object obj;
        Boolean boolean5;
        if (context == null)
        {
            sharedpreferences = null;
        } else
        {
            try
            {
                sharedpreferences = context.getSharedPreferences("admarvel_preferences", 0);
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
                return null;
            }
        }
        if (sharedpreferences == null)
        {
            return null;
        }
        if (!sharedpreferences.getString("country_code", "NULL").equals("NULL"))
        {
            hashmap.put("country_code", sharedpreferences.getString("country_code", "NULL"));
        }
        if (!sharedpreferences.getString("region", "NULL").equals("NULL"))
        {
            hashmap.put("region", sharedpreferences.getString("region", "NULL"));
        }
        if (!sharedpreferences.getString("city", "NULL").equals("NULL"))
        {
            hashmap.put("city", sharedpreferences.getString("city", "NULL"));
        }
        if (!sharedpreferences.getString("postal_code", "NULL").equals("NULL"))
        {
            hashmap.put("postal_code", sharedpreferences.getString("postal_code", "NULL"));
        }
        if (!sharedpreferences.getString("latitude", "NULL").equals("NULL"))
        {
            hashmap.put("latitude", sharedpreferences.getString("latitude", "NULL"));
        }
        if (!sharedpreferences.getString("longitude", "NULL").equals("NULL"))
        {
            hashmap.put("longitude", sharedpreferences.getString("longitude", "NULL"));
        }
        if (!sharedpreferences.getString("dma_code", "NULL").equals("NULL"))
        {
            hashmap.put("dma_code", sharedpreferences.getString("dma_code", "NULL"));
        }
        if (!sharedpreferences.getString("area_code", "NULL").equals("NULL"))
        {
            hashmap.put("area_code", sharedpreferences.getString("area_code", "NULL"));
        }
        if (!sharedpreferences.getString("carrier", "NULL").equals("NULL"))
        {
            hashmap.put("carrier", sharedpreferences.getString("carrier", "NULL"));
        }
        hashmap.put("sdk_version", "2.4.5.1");
        hashmap.put("device_model", Build.MODEL);
        hashmap.put("device_name", Build.ID);
        hashmap.put("device_systemversion", android.os.Build.VERSION.RELEASE);
        hashmap.put("sdk_version_date", "2014-07-28");
        hashmap.put("sdk_supported", b);
        hashmap.put("retrynum", String.valueOf(j));
        hashmap.put("excluded_banners", s3);
        k = ab.g(context);
        if (k <= 0)
        {
            break MISSING_BLOCK_LABEL_560;
        }
        hashmap.put("resolution_width", String.valueOf(k));
        hashmap.put("max_image_width", String.valueOf(k));
        l = ab.h(context);
        if (l <= 0)
        {
            break MISSING_BLOCK_LABEL_599;
        }
        hashmap.put("resolution_height", String.valueOf(l));
        hashmap.put("max_image_height", String.valueOf(l));
        hashmap.put("device_density", (new StringBuilder()).append("").append(ab.i(context)).toString());
        hashmap.put("device_os", "Android");
        if (!a1.equals(a.a)) goto _L2; else goto _L1
_L1:
        hashmap.put("adtype", "banner");
_L18:
        if (!(context instanceof Activity)) goto _L4; else goto _L3
_L3:
        activity = (Activity)context;
        if (activity == null) goto _L4; else goto _L5
_L5:
        viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
        boolean1 = Boolean.valueOf(false);
        if (ac.a() < 11) goto _L7; else goto _L6
_L6:
        flag1 = a1.equals(a.a);
        if (!flag1) goto _L9; else goto _L8
_L8:
        obj = android/view/ViewGroup.getMethod("isHardwareAccelerated", new Class[0]).invoke(viewgroup, (Object[])null);
        if (obj == null) goto _L11; else goto _L10
_L10:
        if (!(obj instanceof Boolean)) goto _L11; else goto _L12
_L12:
        boolean4 = (Boolean)obj;
_L16:
        if (!boolean4.booleanValue() || !flag)
        {
            break MISSING_BLOCK_LABEL_799;
        }
        if (!ab.c())
        {
            break MISSING_BLOCK_LABEL_799;
        }
        boolean5 = Boolean.valueOf(false);
        boolean4 = boolean5;
        boolean1 = boolean4;
_L7:
        hashmap.put("hardware_accelerated", boolean1.toString());
_L4:
        if (map == null)
        {
            break; /* Loop/switch isn't completed */
        }
        hashmap.putAll(map);
        break; /* Loop/switch isn't completed */
_L2:
        if (a1.equals(a.b))
        {
            hashmap.put("adtype", "interstitial");
        }
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Boolean boolean3 = boolean1;
_L14:
        Logging.log(Log.getStackTraceString(exception1));
        boolean1 = boolean3;
          goto _L7
_L9:
        if (!a1.equals(a.b)) goto _L7; else goto _L13
_L13:
        Boolean boolean2 = Boolean.valueOf(true);
        boolean1 = boolean2;
          goto _L7
        Exception exception2;
        exception2;
        boolean3 = boolean4;
        exception1 = exception2;
          goto _L14
_L11:
        boolean4 = boolean1;
        if (true) goto _L16; else goto _L15
_L15:
        return hashmap;
        if (true) goto _L18; else goto _L17
_L17:
    }

    private HashMap a(HashMap hashmap, int i)
    {
        HashMap hashmap1;
        try
        {
            hashmap1 = new HashMap();
            Iterator iterator = hashmap.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Integer integer = (Integer)iterator.next();
                com.admarvel.android.b.a.a a1 = (com.admarvel.android.b.a.a)hashmap.get(integer);
                if (a1.d() == i)
                {
                    hashmap1.put(integer, a1);
                }
            } while (true);
        }
        catch (Exception exception)
        {
            Logging.log((new StringBuilder()).append(exception.getMessage()).append("Offline SDK:").append("Exception in offline filterAdsByCampaignPriority").toString());
            return null;
        }
        return hashmap1;
    }

    private boolean a(long l)
    {
        while (l < 0L || l >= System.currentTimeMillis()) 
        {
            return false;
        }
        return true;
    }

    private boolean a(String s, String s1)
    {
        boolean flag = true;
        if (Pattern.compile("-?[0-9]+").matcher(s).matches() && Pattern.compile("-?[0-9]+").matcher(s1).matches())
        {
            if (Integer.valueOf(s).intValue() > Integer.valueOf(s1).intValue())
            {
                return flag;
            }
            break MISSING_BLOCK_LABEL_230;
        }
        if (Pattern.compile("^[-]?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?$").matcher(s).matches() && Pattern.compile("^[-]?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?$").matcher(s1).matches())
        {
            if (Double.valueOf(s).doubleValue() <= Double.valueOf(s1).doubleValue())
            {
                break MISSING_BLOCK_LABEL_230;
            }
            break MISSING_BLOCK_LABEL_228;
        }
        int i = s.compareToIgnoreCase(s1);
        if (i > 0)
        {
            return flag;
        }
        break MISSING_BLOCK_LABEL_230;
        NumberFormatException numberformatexception;
        numberformatexception;
        Logging.log((new StringBuilder()).append(numberformatexception.getMessage()).append("Offline SDK:").append("Exception in offline isGreater ").toString());
        return false;
        NullPointerException nullpointerexception;
        nullpointerexception;
        Logging.log((new StringBuilder()).append(nullpointerexception.getMessage()).append("Offline SDK:").append("Exception in offline isGreater ").toString());
        return false;
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append(exception.getMessage()).append("Offline SDK:").append("Exception in offline isGreater ").toString());
        flag = false;
        return flag;
        return false;
    }

    private boolean a(String s, String s1, String s2)
    {
        if (s.equals("=="))
        {
            if (!s1.equals(s2))
            {
                return false;
            }
            break MISSING_BLOCK_LABEL_207;
        }
        if (s.equals("!="))
        {
            if (!s1.equals(s2))
            {
                break MISSING_BLOCK_LABEL_207;
            }
            break MISSING_BLOCK_LABEL_205;
        }
        if (!s.equals("gt")) goto _L2; else goto _L1
_L2:
        if (s.equals("lt"))
        {
            if (!b(s2, s1))
            {
                return false;
            }
            break MISSING_BLOCK_LABEL_207;
        }
        if (s.equals("=x"))
        {
            if (!s1.equals(s2))
            {
                return false;
            }
            break MISSING_BLOCK_LABEL_207;
        }
        if (s.equals("!x"))
        {
            if (s1.equals(s2))
            {
                return false;
            }
            break MISSING_BLOCK_LABEL_207;
        }
        if (s.equals("=~"))
        {
            if (!s2.contains(s1))
            {
                return false;
            }
            break MISSING_BLOCK_LABEL_207;
        }
        if (!s.equals("!~"))
        {
            break MISSING_BLOCK_LABEL_207;
        }
        flag = s2.contains(s1);
        if (flag)
        {
            return false;
        }
        break MISSING_BLOCK_LABEL_207;
        exception;
        Logging.log((new StringBuilder()).append(exception.getMessage()).append("Offline SDK:").append("Exception in offline comparatorCheck ").toString());
        return false;
_L4:
        return true;
_L1:
        Exception exception;
        boolean flag;
        boolean flag1;
        if (!a(s2, s1))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            return false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean a(HashMap hashmap, HashMap hashmap1)
    {
        Iterator iterator = hashmap.keySet().iterator();
_L2:
        String s;
        Iterator iterator1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_110;
        }
        s = (String)iterator.next();
        if (!hashmap1.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_108;
        }
        iterator1 = ((ArrayList)hashmap.get(s)).iterator();
        boolean flag;
        do
        {
            if (!iterator1.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            String as[] = (String[])iterator1.next();
            flag = a(as[0], as[1], (String)hashmap1.get(s));
        } while (flag);
        break; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L1:
        return false;
        return false;
        return true;
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append(exception.getMessage()).append("Offline SDK:").append("Exception in offline isValidAd ").toString());
        return false;
    }

    private String b(Context context)
    {
        String s;
        if (context != null)
        {
            if ((s = a(context)) != null && s.length() > 0)
            {
                return (new StringBuilder()).append("FBATTRID:").append(s).toString();
            }
        }
        return null;
    }

    private boolean b(long l)
    {
        return l <= System.currentTimeMillis();
    }

    private boolean b(String s, String s1)
    {
        if (Pattern.compile("-?[0-9]+").matcher(s).matches() && Pattern.compile("-?[0-9]+").matcher(s1).matches())
        {
            if (Integer.valueOf(s).intValue() >= Integer.valueOf(s1).intValue())
            {
                return false;
            }
            break MISSING_BLOCK_LABEL_224;
        }
        if (Pattern.compile("^[-]?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?$").matcher(s).matches() && Pattern.compile("^[-]?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?$").matcher(s1).matches())
        {
            if (Double.valueOf(s).doubleValue() < Double.valueOf(s1).doubleValue())
            {
                break MISSING_BLOCK_LABEL_224;
            }
            break MISSING_BLOCK_LABEL_222;
        }
        int i = s1.compareToIgnoreCase(s);
        if (i < 0)
        {
            return false;
        }
        break MISSING_BLOCK_LABEL_224;
        NumberFormatException numberformatexception;
        numberformatexception;
        Logging.log((new StringBuilder()).append(numberformatexception.getMessage()).append("Offline SDK:").append("Exception in offline isLessThan ").toString());
        return false;
        NullPointerException nullpointerexception;
        nullpointerexception;
        Logging.log((new StringBuilder()).append(nullpointerexception.getMessage()).append("Offline SDK:").append("Exception in offline isLessThan ").toString());
        return false;
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append(exception.getMessage()).append("Offline SDK:").append("Exception in offline isLessThan ").toString());
        return false;
        return true;
    }

    public String a(a a1, Context context, String s, int i, String s1, Map map, String s2, 
            String s3, int j, String s4, boolean flag, Handler handler, boolean flag1, boolean flag2)
    {
        HashMap hashmap;
        if (context == null)
        {
            return null;
        }
        hashmap = new HashMap();
        if (map == null) goto _L2; else goto _L1
_L1:
        map;
        JVM INSTR monitorenter ;
        hashmap.putAll(map);
        map;
        JVM INSTR monitorexit ;
_L2:
        if (!flag) goto _L4; else goto _L3
_L3:
        hashmap.put("RESPONSE_TYPE", "xml");
_L5:
        String s6 = b(context);
        String s5 = s6;
_L6:
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        if (hashmap.get("RTBID") == null)
        {
            hashmap.put("RTBID", s5);
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        if (hashmap.get("UNIQUE_ID") == null)
        {
            hashmap.put("UNIQUE_ID", s);
        }
        return a(a1, context, s, i, s1, map, s2, s3, j, s4, flag, handler, flag1);
        Exception exception2;
        exception2;
        map;
        JVM INSTR monitorexit ;
        try
        {
            throw exception2;
        }
        catch (Exception exception1)
        {
            Logging.log(Log.getStackTraceString(exception1));
        }
        return null;
_L4:
        hashmap.put("RESPONSE_TYPE", "xml_with_xhtml");
          goto _L5
        Exception exception;
        exception;
        s5 = null;
          goto _L6
    }

    public String a(a a1, Context context, String s, int i, String s1, Map map, String s2, 
            String s3, int j, String s4, boolean flag, Handler handler, boolean flag1, boolean flag2, 
            boolean flag3)
    {
        HashMap hashmap;
        hashmap = new HashMap();
        if (context == null)
        {
            return null;
        }
        if (map == null) goto _L2; else goto _L1
_L1:
        map;
        JVM INSTR monitorenter ;
        hashmap.putAll(map);
        map;
        JVM INSTR monitorexit ;
_L2:
        if (!flag) goto _L4; else goto _L3
_L3:
        hashmap.put("RESPONSE_TYPE", "xml");
_L11:
        String s9 = b(context);
        String s5 = s9;
_L22:
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        if (hashmap.get("RTBID") == null)
        {
            hashmap.put("RTBID", s5);
        }
        e e1 = com.admarvel.android.util.e.c(context);
        e = e1.b(context);
        f = e1.a(context);
        if (e == null || e.equals("VALUE_NOT_DEFINED")) goto _L6; else goto _L5
_L5:
        hashmap.put("ANDROID_ADVERTISING_ID", e);
        hashmap.put("ANDROID_ADVERTISING_ID_OPT_OUT", Integer.toString(f));
_L12:
        if (hashmap.get("UNIQUE_ID") != null) goto _L8; else goto _L7
_L7:
        if (e == null || e.equals("VALUE_NOT_DEFINED")) goto _L10; else goto _L9
_L9:
        hashmap.put("UNIQUE_ID", e);
          goto _L8
        exception5;
        map;
        JVM INSTR monitorexit ;
        try
        {
            throw exception5;
        }
        catch (Exception exception1)
        {
            Logging.log(Log.getStackTraceString(exception1));
        }
        return null;
_L4:
        hashmap.put("RESPONSE_TYPE", "xml_with_xhtml");
          goto _L11
_L6:
        hashmap.put("ANDROID_ID", OptionalUtils.getId(context));
          goto _L12
_L10:
        hashmap.put("UNIQUE_ID", OptionalUtils.getId(context));
_L8:
        InputStream inputstream;
        ArrayList arraylist;
        int j1;
        String s6 = a(a1, context, i, s1, ((Map) (hashmap)), s2, s3, j, s4, handler, flag1, flag2, flag3);
        Exception exception5;
        try
        {
            Logging.log((new StringBuilder()).append("postString: ").append(URLDecoder.decode(s6, "UTF-8")).toString());
        }
        catch (Exception exception2)
        {
            Logging.log((new StringBuilder()).append("postString: ").append(s6).toString());
        }
        a = s6;
        if (s6 == null)
        {
            return null;
        }
        HttpURLConnection httpurlconnection;
        int k;
        int i1;
        byte abyte0[];
        b b1;
        try
        {
            d = new JSONObject();
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
            SimpleDateFormat simpledateformat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            java.util.Date date = Calendar.getInstance().getTime();
            Long long1 = Long.valueOf(System.currentTimeMillis());
            d.put("data", s6);
            d.put("timestamp", String.valueOf(long1));
            d.put("utc", simpledateformat.format(date));
            d.put("local", simpledateformat1.format(date));
        }
        catch (Exception exception3)
        {
            exception3.printStackTrace();
        }
        try
        {
            httpurlconnection = (HttpURLConnection)(new URL("http://ads.admarvel.com/fam/androidGetAd.php")).openConnection();
            httpurlconnection.setRequestMethod("POST");
            httpurlconnection.setDoOutput(true);
            httpurlconnection.setDoInput(true);
            httpurlconnection.setUseCaches(false);
            httpurlconnection.setRequestProperty("User-Agent", (new ab(context, handler)).a());
            httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpurlconnection.setRequestProperty("Content-Length", Integer.toString(s6.length()));
            httpurlconnection.setConnectTimeout(2000);
            httpurlconnection.setReadTimeout(10000);
            httpurlconnection.getOutputStream().write(s6.getBytes());
            k = httpurlconnection.getResponseCode();
            int l = httpurlconnection.getContentLength();
            Logging.log((new StringBuilder()).append("Connection Status Code: ").append(k).toString());
            Logging.log((new StringBuilder()).append("Content Length: ").append(l).toString());
        }
        catch (Exception exception4)
        {
            Logging.log(Log.getStackTraceString(exception4));
            return null;
        }
        if (k != 200) goto _L14; else goto _L13
_L13:
        inputstream = (InputStream)httpurlconnection.getContent();
        arraylist = new ArrayList();
        i1 = 8192;
        j1 = 0;
_L16:
        if (i1 == '\uFFFF')
        {
            break MISSING_BLOCK_LABEL_838;
        }
        abyte0 = new byte[8192];
        i1 = inputstream.read(abyte0, 0, 8192);
        if (i1 <= 0) goto _L16; else goto _L15
_L15:
        b1 = new b();
        b1.a = abyte0;
        b1.b = i1;
        j1 += i1;
        arraylist.add(b1);
          goto _L16
        inputstream.close();
        if (j1 <= 0) goto _L14; else goto _L17
_L17:
        byte abyte1[] = new byte[j1];
        int k1;
        int l1;
        k1 = 0;
        l1 = 0;
_L19:
        if (l1 >= arraylist.size())
        {
            break; /* Loop/switch isn't completed */
        }
        b b2 = (b)arraylist.get(l1);
        System.arraycopy(b2.a, 0, abyte1, k1, b2.b);
        k1 += b2.b;
        l1++;
        if (true) goto _L19; else goto _L18
_L18:
        String s7 = new String(abyte1);
_L21:
        String s8 = s7.toString();
        Logging.log((new StringBuilder()).append("Admarvel XML Response:").append(new String(s8)).toString());
        return s8;
_L14:
        s7 = "";
        if (true) goto _L21; else goto _L20
_L20:
        Exception exception;
        exception;
        s5 = null;
          goto _L22
    }

    public JSONObject a()
    {
        return d;
    }


    private class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/admarvel/android/ads/a$a, s);
        }

        public static a[] values()
        {
            return (a[])c.clone();
        }

        static 
        {
            a = new a("BANNER", 0);
            b = new a("INTERSTITIAL", 1);
            a aa[] = new a[2];
            aa[0] = a;
            aa[1] = b;
            c = aa;
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }


    private class b
    {

        public byte a[];
        public int b;

        private b()
        {
            a = null;
            b = 0;
        }

    }

}
