// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.util.Log;
import com.admarvel.android.b.a;
import com.admarvel.android.b.c;
import com.admarvel.android.util.Logging;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package com.admarvel.android.ads:
//            i, AdMarvelVideoActivity, ab, AdMarvelActivity, 
//            AdMarvelAd, ac, AdMarvelUtils, b, 
//            AdMarvelAdapter

public class AdMarvelInterstitialAds
{

    private static String DEFAULT_IMAGE_WEB_VIEW_CSS = "<style>#u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S{display:table;height:100%;width:100%;margin:0;padding:0;background-color:transparent;}#u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S>div{display:table-cell;vertical-align:middle;text-align:center;}</style>";
    private static String DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT = "<html><head>%s</head><body id=\"u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S\"><div>%s</div></body></html>";
    private static String DEFAULT_WEB_VIEW_CSS = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style>";
    private static String DEFAULT_WEB_VIEW_HTML_FORMAT = "<html><head>%s</head><body><div align=\"center\">%s</div></body></html>";
    private static String DEFAULT_WEB_VIEW_VIEWPORT = "<meta name=\"viewport\" content=\"initial-scale=1.0,maximum-scale=1.0,target-densitydpi=device-dpi, width=device-width\" />";
    protected static final String GUID = UUID.randomUUID().toString();
    private static String IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT = "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />";
    private static String ORMMA_WEB_VIEW_CSS = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style><script type='text/javascript' src='http://admarvel.s3.amazonaws.com/js/admarvel_compete_v1.1.js'></script>";
    private static com.admarvel.android.b.c checkForUpdatedPackage = null;
    private static boolean enableClickRedirect = true;
    private static boolean enableNetworkActivity = true;
    public static boolean enableOfflineSDK;
    private static final i listener = new i();
    private final HashMap admarvelInterstitialAds = new HashMap();
    private final int backgroundColor;
    WeakReference contextReference;
    private boolean enableAutoScaling;
    private final Handler handler = new Handler();
    private final e internalAdMarvelInterstitialAdapterListener = new e();
    private final AtomicLong lockTimestamp = new AtomicLong(0L);
    private Map optionalFlags;
    private final int textBackgroundColor;
    private final int textBorderColor;
    private final int textFontColor;

    public AdMarvelInterstitialAds(Context context, int j, int k, int l, int i1)
    {
        enableAutoScaling = true;
        contextReference = new WeakReference(context);
        if (j == 0)
        {
            backgroundColor = 0;
        } else
        {
            backgroundColor = 0xff000000 | j;
        }
        if (k == 0)
        {
            textBackgroundColor = 0;
        } else
        {
            textBackgroundColor = 0xff000000 | k;
        }
        textFontColor = l;
        textBorderColor = i1;
    }

    public static void disableNetworkActivity()
    {
        com/admarvel/android/ads/AdMarvelInterstitialAds;
        JVM INSTR monitorenter ;
        enableNetworkActivity = false;
        if (checkForUpdatedPackage != null && !checkForUpdatedPackage.isCancelled())
        {
            checkForUpdatedPackage.cancel(true);
            checkForUpdatedPackage = null;
        }
        com/admarvel/android/ads/AdMarvelInterstitialAds;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void displayPendingAdMarvelAd(String s, AdMarvelAd admarvelad)
    {
        String s1 = (String)admarvelInterstitialAds.get(s);
        if (s1 == null || s1.length() <= 0) goto _L2; else goto _L1
_L1:
        Context context;
        String s2;
        context = (Context)contextReference.get();
        s2 = (new StringBuilder()).append(s).append("|").append("custom").toString();
        if (context == null) goto _L2; else goto _L3
_L3:
        if (!enableOfflineSDK) goto _L5; else goto _L4
_L4:
        (new a()).a(admarvelad, context, handler);
_L7:
        String s3 = (String)admarvelInterstitialAds.get(s2);
        if (s3 == null || !s3.equals("custom"))
        {
            break; /* Loop/switch isn't completed */
        }
        admarvelInterstitialAds.remove(s2);
        Intent intent1 = new Intent(context, com/admarvel/android/ads/AdMarvelVideoActivity);
        intent1.addFlags(0x10000000);
        intent1.putExtra("html", s1);
        intent1.putExtra("GUID", GUID);
        context.startActivity(intent1);
_L2:
        return;
_L5:
        if (!enableOfflineSDK)
        {
            (new ab(context, handler)).a(admarvelad);
        }
        if (true) goto _L7; else goto _L6
_L6:
        Intent intent = new Intent(context, com/admarvel/android/ads/AdMarvelActivity);
        intent.addFlags(0x10000000);
        intent.putExtra("source", "campaign");
        intent.putExtra("html", s1);
        intent.putExtra("xml", admarvelad.getXml());
        intent.putExtra("backgroundcolor", backgroundColor);
        intent.putExtra("isInterstitial", true);
        intent.putExtra("isInterstitialClick", false);
        intent.putExtra("GUID", GUID);
        admarvelad.removeNonStringEntriesTargetParam();
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(admarvelad);
            objectoutputstream.close();
            intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        context.startActivity(intent);
        return;
    }

    public static void enableNetworkActivity(Activity activity, String s)
    {
        com/admarvel/android/ads/AdMarvelInterstitialAds;
        JVM INSTR monitorenter ;
        enableNetworkActivity = true;
        if (checkForUpdatedPackage == null || !checkForUpdatedPackage.isCancelled()) goto _L2; else goto _L1
_L1:
        checkForUpdatedPackage = null;
        checkForUpdatedPackage = new c(s, activity);
        if (com.admarvel.android.ads.ac.a() < 11) goto _L4; else goto _L3
_L3:
        (new d(activity, s)).run();
_L5:
        com/admarvel/android/ads/AdMarvelInterstitialAds;
        JVM INSTR monitorexit ;
        return;
_L4:
        checkForUpdatedPackage.execute(new Void[0]);
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L2:
label0:
        {
            checkForUpdatedPackage = new c(s, activity);
            if (com.admarvel.android.ads.ac.a() < 11)
            {
                break label0;
            }
            (new d(activity, s)).run();
        }
          goto _L5
        checkForUpdatedPackage.execute(new Void[0]);
          goto _L5
    }

    public static boolean getEnableClickRedirect()
    {
        return enableClickRedirect;
    }

    public static i getListener()
    {
        return listener;
    }

    public static void initializeOfflineSDK(Activity activity, String s)
    {
label0:
        {
            Activity activity1 = (Activity)(new WeakReference(activity)).get();
            enableOfflineSDK = true;
            if (enableNetworkActivity && ab.f(activity1))
            {
                checkForUpdatedPackage = new c(s, activity1);
                if (com.admarvel.android.ads.ac.a() < 11)
                {
                    break label0;
                }
                (new d(activity, s)).run();
            }
            return;
        }
        checkForUpdatedPackage.execute(new Void[0]);
    }

    public static void setEnableClickRedirect(boolean flag)
    {
        enableClickRedirect = flag;
    }

    public static void setListener(AdMarvelInterstitialAdListener admarvelinterstitialadlistener)
    {
        listener.a(admarvelinterstitialadlistener);
    }

    protected void disableAdRequest(String s, AdMarvelAd admarvelad, Context context)
    {
        if (context == null) goto _L2; else goto _L1
_L1:
        String s3;
        int j;
        s3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        j = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        if (s3 == null) goto _L4; else goto _L3
_L3:
        String s4 = (new StringBuilder()).append("duration").append(s3).append(j).append(AdMarvelUtils.getSDKVersion()).toString();
        String s1 = s4;
_L6:
        if (s1 != null)
        {
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences(com.admarvel.android.ads.ab.c("admarvel"), 0).edit();
            String s2 = DateFormat.getDateTimeInstance().format(new Date(System.currentTimeMillis() + (long)(1000 * Integer.parseInt(s))));
            editor.putString(com.admarvel.android.ads.ab.c(s1), s2);
            editor.commit();
            Logging.log("requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST");
            listener.a(context, null, null, 304, com.admarvel.android.ads.ab.a(304), admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
        }
_L2:
        return;
_L4:
        String s5 = (new StringBuilder()).append("duration").append(j).append(AdMarvelUtils.getSDKVersion()).toString();
        s1 = s5;
        continue; /* Loop/switch isn't completed */
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        Logging.log(Log.getStackTraceString(namenotfoundexception));
        s1 = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void displayInterstitial(Activity activity, AdMarvelUtils.SDKAdNetwork sdkadnetwork, String s, AdMarvelAd admarvelad)
    {
        if (sdkadnetwork != AdMarvelUtils.SDKAdNetwork.GOOGLEPLAY) goto _L2; else goto _L1
_L1:
        AdMarvelAdapter admarveladapter10 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter");
        AdMarvelAdapter admarveladapter = admarveladapter10;
_L8:
        if (admarveladapter == null) goto _L4; else goto _L3
_L3:
        admarveladapter.displayInterstitial(activity, s);
        (new ab(activity, handler)).a(admarvelad);
        if (contextReference != null && contextReference.get() != null && handler != null)
        {
            handler.postDelayed(new c(admarvelad, (Context)contextReference.get()), 3000L);
        }
_L6:
        return;
_L2:
        if (sdkadnetwork == AdMarvelUtils.SDKAdNetwork.RHYTHM)
        {
            AdMarvelUtils.SDKAdNetwork sdkadnetwork1;
            Exception exception;
            AdMarvelAdapter admarveladapter1;
            Exception exception1;
            AdMarvelAdapter admarveladapter2;
            Exception exception2;
            AdMarvelAdapter admarveladapter3;
            Exception exception3;
            AdMarvelAdapter admarveladapter4;
            Exception exception4;
            AdMarvelAdapter admarveladapter5;
            Exception exception5;
            AdMarvelAdapter admarveladapter6;
            Exception exception6;
            AdMarvelAdapter admarveladapter7;
            Exception exception7;
            AdMarvelAdapter admarveladapter8;
            AdMarvelAdapter admarveladapter9;
            try
            {
                admarveladapter9 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter");
            }
            catch (Exception exception8)
            {
                admarveladapter = null;
                continue; /* Loop/switch isn't completed */
            }
            admarveladapter = admarveladapter9;
            continue; /* Loop/switch isn't completed */
        } else
        if (sdkadnetwork == AdMarvelUtils.SDKAdNetwork.GREYSTRIPE)
        {
            try
            {
                admarveladapter8 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter");
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception7)
            {
                admarveladapter = null;
                continue; /* Loop/switch isn't completed */
            }
            admarveladapter = admarveladapter8;
            continue; /* Loop/switch isn't completed */
        } else
        if (sdkadnetwork == AdMarvelUtils.SDKAdNetwork.MILLENNIAL)
        {
            try
            {
                admarveladapter7 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter");
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception6)
            {
                admarveladapter = null;
                continue; /* Loop/switch isn't completed */
            }
            admarveladapter = admarveladapter7;
            continue; /* Loop/switch isn't completed */
        } else
        if (sdkadnetwork == AdMarvelUtils.SDKAdNetwork.AMAZON)
        {
            try
            {
                admarveladapter6 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter");
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception5)
            {
                admarveladapter = null;
                continue; /* Loop/switch isn't completed */
            }
            admarveladapter = admarveladapter6;
            continue; /* Loop/switch isn't completed */
        } else
        if (sdkadnetwork == AdMarvelUtils.SDKAdNetwork.ADCOLONY)
        {
            try
            {
                admarveladapter5 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter");
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception4)
            {
                admarveladapter = null;
                continue; /* Loop/switch isn't completed */
            }
            admarveladapter = admarveladapter5;
            continue; /* Loop/switch isn't completed */
        } else
        if (sdkadnetwork == AdMarvelUtils.SDKAdNetwork.PULSE3D)
        {
            try
            {
                admarveladapter4 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter");
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception3)
            {
                admarveladapter = null;
                continue; /* Loop/switch isn't completed */
            }
            admarveladapter = admarveladapter4;
            continue; /* Loop/switch isn't completed */
        } else
        if (sdkadnetwork == AdMarvelUtils.SDKAdNetwork.FACEBOOK)
        {
            try
            {
                admarveladapter3 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter");
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception2)
            {
                admarveladapter = null;
                continue; /* Loop/switch isn't completed */
            }
            admarveladapter = admarveladapter3;
            continue; /* Loop/switch isn't completed */
        } else
        if (sdkadnetwork == AdMarvelUtils.SDKAdNetwork.INMOBI)
        {
            try
            {
                admarveladapter2 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter");
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1)
            {
                admarveladapter = null;
                continue; /* Loop/switch isn't completed */
            }
            admarveladapter = admarveladapter2;
            continue; /* Loop/switch isn't completed */
        } else
        {
            sdkadnetwork1 = AdMarvelUtils.SDKAdNetwork.HEYZAP;
            admarveladapter = null;
            if (sdkadnetwork != sdkadnetwork1)
            {
                continue; /* Loop/switch isn't completed */
            }
            try
            {
                admarveladapter1 = com.admarvel.android.ads.b.a("ADMARVELGUID", "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter");
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                admarveladapter = null;
                continue; /* Loop/switch isn't completed */
            }
            admarveladapter = admarveladapter1;
            continue; /* Loop/switch isn't completed */
        }
_L4:
        if (sdkadnetwork != AdMarvelUtils.SDKAdNetwork.ADMARVEL) goto _L6; else goto _L5
_L5:
        displayPendingAdMarvelAd(s, admarvelad);
        return;
        Exception exception9;
        exception9;
        admarveladapter = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public int getAdMarvelBackgroundColor()
    {
        return backgroundColor;
    }

    public int getTextBackgroundColor()
    {
        return textBackgroundColor;
    }

    public int getTextBorderColor()
    {
        return textBorderColor;
    }

    public int getTextFontColor()
    {
        return textFontColor;
    }

    public boolean isAutoScalingEnabled()
    {
        return enableAutoScaling;
    }

    public void requestNewInterstitialAd(Context context, Map map, String s, String s1)
    {
        String s5;
        String s6;
        String s7;
        SharedPreferences sharedpreferences;
        String s2;
        int j;
        String s3;
        String s4;
        Date date;
        String s8;
        try
        {
            contextReference = new WeakReference(context);
            sharedpreferences = context.getSharedPreferences(com.admarvel.android.ads.ab.c("admarvel"), 0);
            s2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            j = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        s3 = (new StringBuilder()).append("duration").append(s2).append(j).append(AdMarvelUtils.getSDKVersion()).toString();
_L1:
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        s4 = sharedpreferences.getString(com.admarvel.android.ads.ab.c(s3), null);
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        if (s4.length() > 0)
        {
            date = DateFormat.getDateTimeInstance().parse(s4);
            s8 = DateFormat.getDateTimeInstance().format(new Date(System.currentTimeMillis()));
            if (DateFormat.getDateTimeInstance().parse(s8).before(date))
            {
                Logging.log("requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST");
                listener.a(context, null, null, 304, com.admarvel.android.ads.ab.a(304), s1, 0, map, "");
                return;
            }
        }
        break MISSING_BLOCK_LABEL_239;
        s3 = (new StringBuilder()).append("duration").append(j).append(AdMarvelUtils.getSDKVersion()).toString();
          goto _L1
        (new com.admarvel.android.a.a(context)).a();
        s5 = s.trim();
        s6 = s1.trim();
        if (System.currentTimeMillis() - lockTimestamp.getAndSet(System.currentTimeMillis()) <= 2000L)
        {
            break MISSING_BLOCK_LABEL_412;
        }
        listener.a();
        s7 = null;
        if (map == null)
        {
            break MISSING_BLOCK_LABEL_311;
        }
        s7 = (String)map.get("UNIQUE_ID");
        if (com.admarvel.android.ads.ac.a() >= 11)
        {
            handler.post(new b(map, s5, s6, s7, ab.d(context), com.admarvel.android.ads.ab.a(context), this, 0, "", context, handler));
            return;
        }
        handler.post(new a(map, s5, s6, s7, ab.d(context), com.admarvel.android.ads.ab.a(context), this, 0, "", context, handler));
        return;
        Logging.log("requestNewAd: AD REQUEST PENDING, IGNORING REQUEST");
        listener.a(context, null, null, 304, com.admarvel.android.ads.ab.a(304), s6, 0, map, "");
        return;
    }

    public void requestNewInterstitialAd(Context context, Map map, String s, String s1, Activity activity)
    {
        requestNewInterstitialAd(context, map, s, s1);
    }

    protected void requestPendingAdMarvelAd(AdMarvelAd admarvelad, Context context)
    {
        if (admarvelad == null)
        {
            if (listener != null)
            {
                listener.a(context, AdMarvelUtils.SDKAdNetwork.ADMARVEL, "", 304, com.admarvel.android.ads.ab.a(304), "", 0, null, "");
            }
            return;
        }
        String s1;
        String s2;
        if (admarvelad.getAdType() == AdMarvelAd.AdType.CUSTOM)
        {
            s1 = admarvelad.getXhtml();
        } else
        if (admarvelad.getAdType().equals(AdMarvelAd.AdType.IMAGE) && admarvelad.hasImage() && admarvelad.getImageWidth() > 0 && admarvelad.getImageHeight() > 0)
        {
            if (com.admarvel.android.ads.ac.a() >= 7)
            {
                int k1;
                float f;
                String s8;
                String s9;
                Object aobj4[];
                if (ab.g(context) < ab.h(context))
                {
                    k1 = ab.g(context);
                } else
                {
                    k1 = ab.h(context);
                }
                f = (float)k1 / ab.i(context);
                Logging.log((new StringBuilder()).append("Device Relative Screen Width :").append(f).toString());
                s8 = (new StringBuilder()).append("<a href=\"").append(admarvelad.getClickURL()).append("\"><img src=\"").append(admarvelad.getImageURL()).append("\" width=\"").append(f).append("\"\" /></a>").toString();
                s9 = DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT;
                aobj4 = new Object[2];
                aobj4[0] = (new StringBuilder()).append(DEFAULT_IMAGE_WEB_VIEW_CSS).append(IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT).toString();
                aobj4[1] = s8;
                s1 = String.format(s9, aobj4);
            } else
            if (context != null)
            {
                int j;
                int k;
                int l;
                int i1;
                int j1;
                String s6;
                String s7;
                Object aobj3[];
                if (ab.d(context) == 2)
                {
                    j = ab.h(context);
                } else
                {
                    j = ab.g(context);
                }
                if (ab.d(context) == 1)
                {
                    k = ab.h(context);
                } else
                {
                    k = ab.g(context);
                }
                if (enableAutoScaling)
                {
                    l = (int)((float)admarvelad.getImageWidth() * com.admarvel.android.ads.ab.a(context, j, admarvelad.getImageWidth()));
                    i1 = (int)((float)admarvelad.getImageHeight() * com.admarvel.android.ads.ab.a(context, j, admarvelad.getImageWidth()));
                } else
                {
                    l = admarvelad.getImageWidth();
                    i1 = admarvelad.getImageHeight();
                }
                j1 = Math.min(i1, k);
                s6 = (new StringBuilder()).append("<a href=\"").append(admarvelad.getClickURL()).append("\"><img src=\"").append(admarvelad.getImageURL()).append("\" width=\"").append(l).append("\" height=\"").append(j1).append("\" /></a>").toString();
                s7 = DEFAULT_WEB_VIEW_HTML_FORMAT;
                aobj3 = new Object[2];
                aobj3[0] = (new StringBuilder()).append(DEFAULT_WEB_VIEW_CSS).append(DEFAULT_WEB_VIEW_VIEWPORT).toString();
                aobj3[1] = s6;
                s1 = String.format(s7, aobj3);
            } else
            {
                String s5 = DEFAULT_WEB_VIEW_HTML_FORMAT;
                Object aobj2[] = new Object[2];
                aobj2[0] = (new StringBuilder()).append(DEFAULT_WEB_VIEW_CSS).append(DEFAULT_WEB_VIEW_VIEWPORT).toString();
                aobj2[1] = admarvelad.getXHTML();
                s1 = String.format(s5, aobj2);
            }
        } else
        if (admarvelad.getXhtml().contains("ORMMA_API"))
        {
            String s4 = DEFAULT_WEB_VIEW_HTML_FORMAT;
            Object aobj1[] = new Object[2];
            aobj1[0] = ORMMA_WEB_VIEW_CSS;
            aobj1[1] = admarvelad.getXHTML();
            s1 = String.format(s4, aobj1);
        } else
        {
            String s = DEFAULT_WEB_VIEW_HTML_FORMAT;
            Object aobj[] = new Object[2];
            aobj[0] = DEFAULT_WEB_VIEW_CSS;
            aobj[1] = (new StringBuilder()).append(admarvelad.getXHTML()).append(com.admarvel.android.ads.ab.a).toString();
            s1 = String.format(s, aobj);
        }
        s2 = (new StringBuilder()).append(admarvelad.getPartnerId()).append("|").append(admarvelad.getSiteId()).toString();
        admarvelInterstitialAds.put(s2, s1);
        if (admarvelad.getAdType() == AdMarvelAd.AdType.CUSTOM)
        {
            String s3 = (new StringBuilder()).append(s2).append("|").append("custom").toString();
            admarvelInterstitialAds.put(s3, "custom");
        }
        listener.a(context, AdMarvelUtils.SDKAdNetwork.ADMARVEL, s2, admarvelad, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
    }

    void requestPendingAdapterAd(Map map, AdMarvelAd admarvelad, String s, Context context)
    {
        try
        {
            AdMarvelAdapter admarveladapter = com.admarvel.android.ads.b.a("ADMARVELGUID", s);
            if (internalAdMarvelInterstitialAdapterListener != null)
            {
                internalAdMarvelInterstitialAdapterListener.a(admarvelad);
            }
            admarveladapter.requestIntersitialNewAd(internalAdMarvelInterstitialAdapterListener, context, admarvelad, map, backgroundColor, textFontColor);
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
        listener.a(context, admarvelad.getSdkAdNetwork(), admarvelad.getPubId(), 304, com.admarvel.android.ads.ab.a(304), admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
    }

    public void setAdMarvelBackgroundColor(int j)
    {
    }

    public void setEnableAutoScaling(boolean flag)
    {
        enableAutoScaling = flag;
    }

    public void setOptionalFlags(Map map)
    {
        optionalFlags = map;
    }

    public void setTextBackgroundColor(int j)
    {
    }




/*
    static c access$002(c c1)
    {
        checkForUpdatedPackage = c1;
        return c1;
    }

*/



    private class e
        implements AdMarvelInterstitialAdapterListener
    {

        private final WeakReference a;
        private WeakReference b;
        private AdMarvelAd c;

        public void a(AdMarvelAd admarvelad)
        {
            c = admarvelad;
            b = new WeakReference(admarvelad);
        }

        public void onClickInterstitialAd(String s)
        {
            AdMarvelAd admarvelad = (AdMarvelAd)b.get();
            AdMarvelInterstitialAds admarvelinterstitialads = (AdMarvelInterstitialAds)a.get();
            if (admarvelinterstitialads != null && admarvelinterstitialads.contextReference != null && admarvelinterstitialads.contextReference.get() != null && admarvelad != null)
            {
                Context context = (Context)admarvelinterstitialads.contextReference.get();
                if (context != null && AdMarvelInterstitialAds.listener != null)
                {
                    AdMarvelInterstitialAds.listener.a(context, s, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
                }
            }
        }

        public void onCloseInterstitialAd()
        {
            if (AdMarvelInterstitialAds.listener != null)
            {
                AdMarvelInterstitialAds.listener.b();
            }
        }

        public void onFailedToReceiveInterstitialAd(AdMarvelUtils.SDKAdNetwork sdkadnetwork, String s, int j, AdMarvelUtils.ErrorReason errorreason, AdMarvelAd admarvelad)
        {
            AdMarvelInterstitialAds admarvelinterstitialads = (AdMarvelInterstitialAds)a.get();
            if (admarvelinterstitialads != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            boolean flag1;
            int i1;
            String s2;
            boolean flag = admarvelad.getRetry().equals(Boolean.valueOf(true));
            flag1 = false;
            if (flag)
            {
                int k = admarvelad.getRetrynum();
                int l = admarvelad.getMaxretries();
                flag1 = false;
                if (k <= l)
                {
                    i1 = 1 + admarvelad.getRetrynum();
                    String s1 = admarvelad.getExcluded();
                    Context context;
                    if (admarvelad.getExcluded() == null)
                    {
                        s2 = admarvelad.getBannerid();
                    } else
                    if (admarvelad.getExcluded().length() > 0)
                    {
                        s2 = (new StringBuilder()).append(s1).append(",").append(admarvelad.getBannerid()).toString();
                    } else
                    {
                        s2 = admarvelad.getBannerid();
                    }
                    if (admarvelinterstitialads.contextReference == null || (Context)admarvelinterstitialads.contextReference.get() == null)
                    {
                        break MISSING_BLOCK_LABEL_389;
                    }
                    if (com.admarvel.android.ads.ac.a() < 11)
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    admarvelinterstitialads.handler.post(new b(admarvelad.getTargetParams(), admarvelad.getPartnerId(), admarvelad.getSiteId(), admarvelad.getAndroidId(), admarvelad.getOrientation(), admarvelad.getDeviceConnectivity(), admarvelinterstitialads, i1, s2, (Context)admarvelinterstitialads.contextReference.get(), admarvelinterstitialads.handler));
                    flag1 = true;
                }
            }
_L4:
            if (!flag1 && admarvelinterstitialads.contextReference != null)
            {
                context = (Context)admarvelinterstitialads.contextReference.get();
                if (context != null && AdMarvelInterstitialAds.listener != null)
                {
                    AdMarvelInterstitialAds.listener.a(context, sdkadnetwork, s, j, errorreason, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
                    return;
                }
            }
            if (true) goto _L1; else goto _L3
_L3:
            admarvelinterstitialads.handler.post(new a(admarvelad.getTargetParams(), admarvelad.getPartnerId(), admarvelad.getSiteId(), admarvelad.getAndroidId(), admarvelad.getOrientation(), admarvelad.getDeviceConnectivity(), admarvelinterstitialads, i1, s2, (Context)admarvelinterstitialads.contextReference.get(), admarvelinterstitialads.handler));
            flag1 = true;
              goto _L4
        }

        public void onReceiveInterstitialAd(AdMarvelUtils.SDKAdNetwork sdkadnetwork, String s, AdMarvelAd admarvelad)
        {
            AdMarvelInterstitialAds admarvelinterstitialads = (AdMarvelInterstitialAds)a.get();
            if (admarvelinterstitialads != null && admarvelinterstitialads.contextReference != null && admarvelinterstitialads.contextReference.get() != null)
            {
                Context context = (Context)admarvelinterstitialads.contextReference.get();
                if (context != null && AdMarvelInterstitialAds.listener != null)
                {
                    AdMarvelInterstitialAds.listener.a(context, sdkadnetwork, s, admarvelad, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
                }
            }
        }

        public void onRequestInterstitialAd()
        {
            if (AdMarvelInterstitialAds.listener != null)
            {
                AdMarvelInterstitialAds.listener.a();
            }
        }

        public e()
        {
            a = new WeakReference(AdMarvelInterstitialAds.this);
        }
    }


    private class d
        implements Runnable
    {

        private WeakReference a;
        private String b;

        public void run()
        {
            if (AdMarvelInterstitialAds.checkForUpdatedPackage != null)
            {
                AdMarvelInterstitialAds.checkForUpdatedPackage.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else
            if (a.get() != null && b != null)
            {
                AdMarvelInterstitialAds.checkForUpdatedPackage = new com.admarvel.android.b.c(b, (Activity)a.get());
                AdMarvelInterstitialAds.checkForUpdatedPackage.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                return;
            }
        }

        public d(Activity activity, String s)
        {
            a = new WeakReference(activity);
            b = s;
        }
    }


    private class c
        implements Runnable
    {

        private final AdMarvelAd a;
        private final Context b;

        public void run()
        {
            if (a != null)
            {
                a.setResponseJson();
            }
            com.admarvel.android.util.a a1 = com.admarvel.android.util.a.b(b);
            if (a1 != null && a != null)
            {
                int j = a1.a(b);
                a.setAdHistoryCounter(j);
                a1.a(a.getAdHistoryDumpString(), j);
            }
        }

        public c(AdMarvelAd admarvelad, Context context)
        {
            a = admarvelad;
            b = context;
        }
    }


    private class b
        implements Runnable
    {

        private final Map a;
        private final String b;
        private final String c;
        private final String d;
        private final int e;
        private final String f;
        private final WeakReference g;
        private final int h;
        private final String i;
        private final WeakReference j;
        private final Handler k;

        public void run()
        {
            AdMarvelInterstitialAds admarvelinterstitialads = (AdMarvelInterstitialAds)g.get();
            Context context = (Context)j.get();
            if (admarvelinterstitialads != null && context != null)
            {
                j j1 = new j(context);
                java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
                Object aobj[] = new Object[10];
                aobj[0] = a;
                aobj[1] = b;
                aobj[2] = c;
                aobj[3] = d;
                aobj[4] = Integer.valueOf(e);
                aobj[5] = f;
                aobj[6] = admarvelinterstitialads;
                aobj[7] = Integer.valueOf(h);
                aobj[8] = i;
                aobj[9] = k;
                j1.executeOnExecutor(executor, aobj);
            }
        }

        public b(Map map, String s, String s1, String s2, int l, String s3, AdMarvelInterstitialAds admarvelinterstitialads, 
                int i1, String s4, Context context, Handler handler1)
        {
            a = map;
            b = s;
            c = s1;
            d = s2;
            e = l;
            f = s3;
            g = new WeakReference(admarvelinterstitialads);
            h = i1;
            i = s4;
            j = new WeakReference(context);
            k = handler1;
        }
    }


    private class a
        implements Runnable
    {

        private final Map a;
        private final String b;
        private final String c;
        private final String d;
        private final int e;
        private final String f;
        private final WeakReference g;
        private final int h;
        private final String i;
        private final WeakReference j;
        private final Handler k;

        public void run()
        {
            AdMarvelInterstitialAds admarvelinterstitialads = (AdMarvelInterstitialAds)g.get();
            Context context = (Context)j.get();
            if (admarvelinterstitialads != null && context != null)
            {
                j j1 = new j(context);
                Object aobj[] = new Object[10];
                aobj[0] = a;
                aobj[1] = b;
                aobj[2] = c;
                aobj[3] = d;
                aobj[4] = Integer.valueOf(e);
                aobj[5] = f;
                aobj[6] = admarvelinterstitialads;
                aobj[7] = Integer.valueOf(h);
                aobj[8] = i;
                aobj[9] = k;
                j1.execute(aobj);
            }
        }

        public a(Map map, String s, String s1, String s2, int l, String s3, AdMarvelInterstitialAds admarvelinterstitialads, 
                int i1, String s4, Context context, Handler handler1)
        {
            a = map;
            b = s;
            c = s1;
            d = s2;
            e = l;
            f = s3;
            g = new WeakReference(admarvelinterstitialads);
            h = i1;
            i = s4;
            j = new WeakReference(context);
            k = handler1;
        }
    }

}
