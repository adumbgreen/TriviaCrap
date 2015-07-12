// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


// Referenced classes of package com.admarvel.android.ads:
//            z, b, m, AdMarvelAdapter

class ac
{

    public static int a()
    {
        if (android.os.Build.VERSION.RELEASE.contains("1.5"))
        {
            return 3;
        } else
        {
            return z.a();
        }
    }

    static final String b()
    {
        String s = "";
        AdMarvelAdapter admarveladapter9 = com.admarvel.android.ads.b.c("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter");
        if (admarveladapter9 == null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        String s10;
        if (!m.a("com.google.android.gms.ads.AdView") || a() <= 8)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        s10 = (new StringBuilder()).append(s).append("googleplay: found, ").append(admarveladapter9.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s10;
_L1:
        AdMarvelAdapter admarveladapter8 = com.admarvel.android.ads.b.c("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter");
        if (admarveladapter8 == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        String s9;
        if (!m.a("com.rhythmnewmedia.sdk.display.RhythmDisplayAdView"))
        {
            break MISSING_BLOCK_LABEL_125;
        }
        s9 = (new StringBuilder()).append(s).append("rhythm: found, ").append(admarveladapter8.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s9;
_L2:
        AdMarvelAdapter admarveladapter7 = com.admarvel.android.ads.b.c("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter");
        if (admarveladapter7 == null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        String s8;
        if (!m.a("com.greystripe.sdk.GSMobileBannerAdView"))
        {
            break MISSING_BLOCK_LABEL_182;
        }
        s8 = (new StringBuilder()).append(s).append("greystripe: found, ").append(admarveladapter7.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s8;
_L3:
        AdMarvelAdapter admarveladapter6 = com.admarvel.android.ads.b.c("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter");
        if (admarveladapter6 == null)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        String s7;
        if (!m.a("com.millennialmedia.android.MMAdView"))
        {
            break MISSING_BLOCK_LABEL_239;
        }
        s7 = (new StringBuilder()).append(s).append("millennial: found, ").append(admarveladapter6.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s7;
_L4:
        AdMarvelAdapter admarveladapter5 = com.admarvel.android.ads.b.c("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter");
        if (admarveladapter5 == null)
        {
            break MISSING_BLOCK_LABEL_296;
        }
        String s6;
        if (!m.a("com.amazon.device.ads.AdLayout"))
        {
            break MISSING_BLOCK_LABEL_296;
        }
        s6 = (new StringBuilder()).append(s).append("amazon: found, ").append(admarveladapter5.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s6;
_L5:
        AdMarvelAdapter admarveladapter4 = com.admarvel.android.ads.b.c("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter");
        if (admarveladapter4 == null)
        {
            break MISSING_BLOCK_LABEL_353;
        }
        String s5;
        if (!m.a("com.jirbo.adcolony.AdColony"))
        {
            break MISSING_BLOCK_LABEL_353;
        }
        s5 = (new StringBuilder()).append(s).append("adcolony: found, ").append(admarveladapter4.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s5;
_L6:
        AdMarvelAdapter admarveladapter3 = com.admarvel.android.ads.b.c("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter");
        if (admarveladapter3 == null)
        {
            break MISSING_BLOCK_LABEL_410;
        }
        String s4;
        if (!m.a("com.amobee.pulse3d.Pulse3DView"))
        {
            break MISSING_BLOCK_LABEL_410;
        }
        s4 = (new StringBuilder()).append(s).append("pulse3d: found, ").append(admarveladapter3.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s4;
_L7:
        AdMarvelAdapter admarveladapter2 = com.admarvel.android.ads.b.c("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter");
        if (admarveladapter2 == null)
        {
            break MISSING_BLOCK_LABEL_467;
        }
        String s3;
        if (!m.a("com.facebook.ads.AdView"))
        {
            break MISSING_BLOCK_LABEL_467;
        }
        s3 = (new StringBuilder()).append(s).append("facebook: found, ").append(admarveladapter2.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s3;
_L8:
        AdMarvelAdapter admarveladapter1 = com.admarvel.android.ads.b.c("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter");
        if (admarveladapter1 == null)
        {
            break MISSING_BLOCK_LABEL_524;
        }
        String s2;
        if (!m.a("com.inmobi.monetization.IMBanner"))
        {
            break MISSING_BLOCK_LABEL_524;
        }
        s2 = (new StringBuilder()).append(s).append("inmobi: found, ").append(admarveladapter1.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s2;
_L9:
        Exception exception;
        Exception exception1;
        Exception exception2;
        Exception exception3;
        Exception exception4;
        Exception exception5;
        Exception exception6;
        Exception exception7;
        Exception exception8;
        AdMarvelAdapter admarveladapter;
        String s1;
        try
        {
            admarveladapter = com.admarvel.android.ads.b.c("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter");
        }
        catch (Exception exception9)
        {
            return (new StringBuilder()).append(s).append("heyzap: NOT found, admarvel-android-sdk-heyzap-adapter.jar NOT in classpath\n").toString();
        }
        if (admarveladapter == null)
        {
            break MISSING_BLOCK_LABEL_581;
        }
        if (Class.forName("com.heyzap.sdk.ads.VideoAd") == null)
        {
            break MISSING_BLOCK_LABEL_581;
        }
        s1 = (new StringBuilder()).append(s).append("heyzap: found, ").append(admarveladapter.getAdnetworkSDKVersionInfo()).append("\n").toString();
        s = s1;
        return s;
        exception;
        s = (new StringBuilder()).append(s).append("googleplay: NOT found, admarvel-android-sdk-googleplay-adapter.jar NOT in classpath\n").toString();
          goto _L1
        exception1;
        s = (new StringBuilder()).append(s).append("rhythm: NOT found, admarvel-android-sdk-rhythm-adapter.jar NOT in classpath\n").toString();
          goto _L2
        exception2;
        s = (new StringBuilder()).append(s).append("greystripe: NOT found, admarvel-android-sdk-greystripe-adapter.jar NOT in classpath\n").toString();
          goto _L3
        exception3;
        s = (new StringBuilder()).append(s).append("millennial: NOT found, admarvel-android-sdk-millennial-adapter.jar NOT in classpath\n").toString();
          goto _L4
        exception4;
        s = (new StringBuilder()).append(s).append("amazon: NOT found, admarvel-android-sdk-amazon-adapter.jar NOT in classpath\n").toString();
          goto _L5
        exception5;
        s = (new StringBuilder()).append(s).append("adcolony: NOT found, admarvel-android-sdk-adcolony-adapter.jar NOT in classpath\n").toString();
          goto _L6
        exception6;
        s = (new StringBuilder()).append(s).append("pulse3d: NOT found, admarvel-android-sdk-pulse3d-adapter.jar NOT in classpath\n").toString();
          goto _L7
        exception7;
        s = (new StringBuilder()).append(s).append("facebook: NOT found, admarvel-android-sdk-facebook-adapter.jar NOT in classpath\n").toString();
          goto _L8
        exception8;
        s = (new StringBuilder()).append(s).append("inmobi: NOT found, admarvel-android-sdk-inmobi-adapter.jar NOT in classpath\n").toString();
          goto _L9
    }

    static final String c()
    {
        String s = "";
        String s10;
        if (com.admarvel.android.ads.b.c("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter") == null || !m.a("com.google.android.gms.ads.AdView") || a() <= 8)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        s10 = (new StringBuilder()).append(s).append("_googleplay_admob").toString();
        s = s10;
_L18:
        String s9;
        if (com.admarvel.android.ads.b.c("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter") == null || !m.a("com.rhythmnewmedia.sdk.display.RhythmDisplayAdView"))
        {
            break MISSING_BLOCK_LABEL_91;
        }
        s9 = (new StringBuilder()).append(s).append("_rhythm").toString();
        s = s9;
_L16:
        String s8;
        if (com.admarvel.android.ads.b.c("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter") == null || !m.a("com.greystripe.sdk.GSMobileBannerAdView"))
        {
            break MISSING_BLOCK_LABEL_131;
        }
        s8 = (new StringBuilder()).append(s).append("_greystripe").toString();
        s = s8;
_L14:
        String s7;
        if (com.admarvel.android.ads.b.c("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter") == null || !m.a("com.millennialmedia.android.MMAdView"))
        {
            break MISSING_BLOCK_LABEL_171;
        }
        s7 = (new StringBuilder()).append(s).append("_millennial").toString();
        s = s7;
_L12:
        String s6;
        if (com.admarvel.android.ads.b.c("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter") == null || !m.a("com.amazon.device.ads.AdLayout"))
        {
            break MISSING_BLOCK_LABEL_211;
        }
        s6 = (new StringBuilder()).append(s).append("_amazon").toString();
        s = s6;
_L10:
        String s5;
        if (com.admarvel.android.ads.b.c("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter") == null || !m.a("com.jirbo.adcolony.AdColony"))
        {
            break MISSING_BLOCK_LABEL_251;
        }
        s5 = (new StringBuilder()).append(s).append("_adcolony").toString();
        s = s5;
_L8:
        String s4;
        if (com.admarvel.android.ads.b.c("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter") == null || !m.a("com.amobee.pulse3d.Pulse3DView") || a() <= 15)
        {
            break MISSING_BLOCK_LABEL_299;
        }
        s4 = (new StringBuilder()).append(s).append("_pulse3d").toString();
        s = s4;
_L6:
        String s3;
        if (com.admarvel.android.ads.b.c("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter") == null || !m.a("com.facebook.ads.AdView") || a() <= 7)
        {
            break MISSING_BLOCK_LABEL_347;
        }
        s3 = (new StringBuilder()).append(s).append("_facebook").toString();
        s = s3;
_L4:
        String s2;
        if (com.admarvel.android.ads.b.c("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter") == null || !m.a("com.inmobi.monetization.IMBanner"))
        {
            break MISSING_BLOCK_LABEL_387;
        }
        s2 = (new StringBuilder()).append(s).append("_inmobi").toString();
        s = s2;
_L2:
label0:
        {
            String s1;
            try
            {
                if (com.admarvel.android.ads.b.c("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter") == null || Class.forName("com.heyzap.sdk.ads.VideoAd") == null)
                {
                    break label0;
                }
                s1 = (new StringBuilder()).append(s).append("_heyzap").toString();
            }
            catch (Exception exception9)
            {
                return s;
            }
            s = s1;
        }
        return s;
        Exception exception8;
        exception8;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception7;
        exception7;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception6;
        exception6;
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception5;
        exception5;
        if (true) goto _L8; else goto _L7
_L7:
        Exception exception4;
        exception4;
        if (true) goto _L10; else goto _L9
_L9:
        Exception exception3;
        exception3;
        if (true) goto _L12; else goto _L11
_L11:
        Exception exception2;
        exception2;
        if (true) goto _L14; else goto _L13
_L13:
        Exception exception1;
        exception1;
        if (true) goto _L16; else goto _L15
_L15:
        Exception exception;
        exception;
        if (true) goto _L18; else goto _L17
_L17:
    }
}
