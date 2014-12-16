// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.mobileapptracker:
//            i, a

final class n
{

    private static i a;

    public static String a()
    {
        com/mobileapptracker/n;
        JVM INSTR monitorenter ;
        String s;
        a = i.a();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder("connection_type=")).append(a.o()).toString());
        a(stringbuilder, "age", a.e());
        a(stringbuilder, "altitude", a.g());
        a(stringbuilder, "android_id", a.h());
        a(stringbuilder, "android_id_md5", a.i());
        a(stringbuilder, "android_id_sha1", a.j());
        a(stringbuilder, "android_id_sha256", a.k());
        a(stringbuilder, "app_ad_tracking", a.l());
        a(stringbuilder, "app_name", a.m());
        a(stringbuilder, "app_version", a.n());
        a(stringbuilder, "country_code", a.p());
        a(stringbuilder, "currency_code", a.q());
        a(stringbuilder, "device_brand", a.r());
        a(stringbuilder, "device_carrier", a.s());
        a(stringbuilder, "device_cpu_type", a.t());
        a(stringbuilder, "device_cpu_subtype", a.u());
        a(stringbuilder, "device_model", a.w());
        a(stringbuilder, "device_id", a.v());
        a(stringbuilder, "attribute_sub1", a.x());
        a(stringbuilder, "attribute_sub2", a.y());
        a(stringbuilder, "attribute_sub3", a.z());
        a(stringbuilder, "attribute_sub4", a.A());
        a(stringbuilder, "attribute_sub5", a.B());
        a(stringbuilder, "content_id", a.C());
        a(stringbuilder, "content_type", a.D());
        a(stringbuilder, "date1", a.E());
        a(stringbuilder, "date2", a.F());
        a(stringbuilder, "level", a.H());
        a(stringbuilder, "quantity", a.J());
        a(stringbuilder, "rating", a.K());
        a(stringbuilder, "search_string", a.L());
        a(stringbuilder, "existing_user", a.M());
        a(stringbuilder, "facebook_user_id", a.N());
        a(stringbuilder, "gender", a.O());
        a(stringbuilder, "google_aid", a.P());
        a(stringbuilder, "google_ad_tracking_disabled", a.Q());
        a(stringbuilder, "google_user_id", a.R());
        a(stringbuilder, "insdate", a.S());
        a(stringbuilder, "installer", a.T());
        a(stringbuilder, "install_log_id", a.U());
        a(stringbuilder, "install_referrer", a.V());
        a(stringbuilder, "is_paying_user", a.W());
        a(stringbuilder, "language", a.X());
        a(stringbuilder, "last_open_log_id", a.Y());
        a(stringbuilder, "latitude", a.Z());
        a(stringbuilder, "longitude", a.aa());
        a(stringbuilder, "mac_address", a.ab());
        a(stringbuilder, "mat_id", a.ac());
        a(stringbuilder, "mobile_country_code", a.ad());
        a(stringbuilder, "mobile_network_code", a.ae());
        a(stringbuilder, "open_log_id", a.af());
        a(stringbuilder, "os_version", a.ag());
        a(stringbuilder, "sdk_plugin", a.ai());
        a(stringbuilder, "android_purchase_status", a.aj());
        a(stringbuilder, "advertiser_ref_id", a.am());
        a(stringbuilder, "revenue", a.an());
        a(stringbuilder, "screen_density", a.ao());
        a(stringbuilder, "screen_layout_size", (new StringBuilder()).append(a.aq()).append("x").append(a.ap()).toString());
        a(stringbuilder, "sdk_version", a.ar());
        a(stringbuilder, "truste_tpid", a.au());
        a(stringbuilder, "twitter_user_id", a.av());
        a(stringbuilder, "update_log_id", a.aw());
        a(stringbuilder, "conversion_user_agent", a.ax());
        a(stringbuilder, "user_email", a.ay());
        a(stringbuilder, "user_id", a.az());
        a(stringbuilder, "user_name", a.aA());
        s = stringbuilder.toString();
        com/mobileapptracker/n;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static String a(String s, a a1)
    {
        com/mobileapptracker/n;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder;
        i j;
        stringbuilder = new StringBuilder(s);
        j = i.a();
        a = j;
        if (j == null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        String s1 = a.P();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        if (!s.contains("&google_aid="))
        {
            a(stringbuilder, "google_aid", s1);
            a(stringbuilder, "google_ad_tracking_disabled", a.Q());
        }
        String s2 = a.V();
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        if (!s.contains("&install_referrer="))
        {
            a(stringbuilder, "install_referrer", s2);
        }
        String s3 = a.ax();
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        if (!s.contains("&conversion_user_agent="))
        {
            a(stringbuilder, "conversion_user_agent", s3);
        }
        String s4;
        if (!s.contains("&system_date="))
        {
            a(stringbuilder, "system_date", Long.toString((new Date()).getTime() / 1000L));
        }
        s4 = stringbuilder.toString();
        String s5 = s4;
        String s6 = com.mobileapptracker.a.a(a1.a(s5));
        s5 = s6;
_L2:
        com/mobileapptracker/n;
        JVM INSTR monitorexit ;
        return s5;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public static String a(boolean flag, boolean flag1)
    {
        a = i.a();
        StringBuilder stringbuilder = (new StringBuilder("https://")).append(a.d()).append(".");
        String s;
        if (flag)
        {
            stringbuilder.append("debug.engine.mobileapptracking.com");
        } else
        {
            stringbuilder.append("engine.mobileapptracking.com");
        }
        stringbuilder.append("/serve?ver=").append(a.ar());
        stringbuilder.append("&transaction_id=").append(UUID.randomUUID().toString());
        a(stringbuilder, "sdk", "android");
        a(stringbuilder, "action", a.c());
        a(stringbuilder, "advertiser_id", a.d());
        a(stringbuilder, "site_event_id", a.G());
        a(stringbuilder, "site_event_name", a.I());
        a(stringbuilder, "package_name", a.ah());
        a(stringbuilder, "referral_source", a.ak());
        a(stringbuilder, "referral_url", a.al());
        a(stringbuilder, "site_id", a.as());
        a(stringbuilder, "tracking_id", a.at());
        if (flag1)
        {
            stringbuilder.append("&attr_set=1");
        }
        a(stringbuilder, "publisher_id", a.aC());
        a(stringbuilder, "offer_id", a.aB());
        a(stringbuilder, "publisher_ref_id", a.aD());
        a(stringbuilder, "publisher_sub_publisher", a.aK());
        a(stringbuilder, "publisher_sub_site", a.aL());
        a(stringbuilder, "publisher_sub_campaign", a.aM());
        a(stringbuilder, "publisher_sub_adgroup", a.aN());
        a(stringbuilder, "publisher_sub_ad", a.aO());
        a(stringbuilder, "publisher_sub_keyword", a.aP());
        a(stringbuilder, "advertiser_sub_publisher", a.aE());
        a(stringbuilder, "advertiser_sub_site", a.aF());
        a(stringbuilder, "advertiser_sub_campaign", a.aG());
        a(stringbuilder, "advertiser_sub_adgroup", a.aH());
        a(stringbuilder, "advertiser_sub_ad", a.aI());
        a(stringbuilder, "advertiser_sub_keyword", a.aJ());
        a(stringbuilder, "publisher_sub1", a.aQ());
        a(stringbuilder, "publisher_sub2", a.aR());
        a(stringbuilder, "publisher_sub3", a.aS());
        a(stringbuilder, "publisher_sub4", a.aT());
        a(stringbuilder, "publisher_sub5", a.aU());
        s = a.f();
        if (s != null && Integer.parseInt(s) == 1)
        {
            stringbuilder.append("&skip_dup=1");
        }
        if (flag)
        {
            stringbuilder.append("&debug=1");
        }
        return stringbuilder.toString();
    }

    public static JSONObject a(JSONArray jsonarray, String s, String s1)
    {
        com/mobileapptracker/n;
        JVM INSTR monitorenter ;
        JSONObject jsonobject = new JSONObject();
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        jsonobject.put("data", jsonarray);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        jsonobject.put("store_iap_data", s);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        jsonobject.put("store_iap_signature", s1);
_L2:
        com/mobileapptracker/n;
        JVM INSTR monitorexit ;
        return jsonobject;
        JSONException jsonexception;
        jsonexception;
        Log.d("MobileAppTracker", "Could not build JSON for event items or verification values");
        jsonexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    private static void a(StringBuilder stringbuilder, String s, String s1)
    {
        com/mobileapptracker/n;
        JVM INSTR monitorenter ;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        boolean flag = s1.equals("");
        if (flag)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        stringbuilder.append((new StringBuilder("&")).append(s).append("=").append(URLEncoder.encode(s1, "UTF-8")).toString());
_L2:
        com/mobileapptracker/n;
        JVM INSTR monitorexit ;
        return;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        Log.w("MobileAppTracker", (new StringBuilder("failed encoding value ")).append(s1).append(" for key ").append(s).toString());
        unsupportedencodingexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }
}
