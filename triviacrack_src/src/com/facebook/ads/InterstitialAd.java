// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.content.Context;
import android.content.Intent;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.facebook.ads.internal.AdRequestController;
import com.facebook.ads.internal.AdResponse;
import com.facebook.ads.internal.AdType;
import com.facebook.ads.internal.HtmlAdDataModel;
import java.util.UUID;

// Referenced classes of package com.facebook.ads:
//            Ad, AdSize, AdError, InterstitialAdListener, 
//            InterstitialAdActivity, ImpressionListener

public class InterstitialAd
    implements Ad
{

    public static final String DISPLAY_HEIGHT_INTENT_EXTRA = "displayHeight";
    public static final String DISPLAY_ROTATION_INTENT_EXTRA = "displayRotation";
    public static final String DISPLAY_WIDTH_INTENT_EXTRA = "displayWidth";
    public static final String IMPRESSION_WILL_LOG = "com.facebook.ads.interstitial.impression.logged";
    public static final String INTERSTITIAL_CLICKED = "com.facebook.ads.interstitial.clicked";
    public static final String INTERSTITIAL_DISMISSED = "com.facebook.ads.interstitial.dismissed";
    public static final String INTERSTITIAL_DISPLAYED = "com.facebook.ads.interstitial.displayed";
    public static final String INTERSTITIAL_UNIQUE_ID_EXTRA = "adInterstitialUniqueId";
    private InterstitialAdListener adListener;
    private boolean adLoaded;
    private AdRequestController adRequestController;
    private AdResponse adResponse;
    private final AdInterstitialBroadcastReceiver broadcastReceiver = new AdInterstitialBroadcastReceiver();
    private final Context context;
    private ImpressionListener impListener;
    private final String uniqueId = UUID.randomUUID().toString();

    public InterstitialAd(Context context1, String s)
    {
        adLoaded = false;
        context = context1;
        adRequestController = new AdRequestController(context, s, AdSize.INTERSTITIAL, false, AdType.HTML, new com.facebook.ads.internal.AdRequest.Callback() {

            final InterstitialAd this$0;

            public void onCompleted(AdResponse adresponse)
            {
                adResponse = adresponse;
                if (adresponse.getDataModel() == null || !(adresponse.getDataModel() instanceof HtmlAdDataModel)) goto _L2; else goto _L1
_L1:
                adLoaded = true;
                if (adListener != null)
                {
                    adListener.onAdLoaded(InterstitialAd.this);
                }
_L4:
                return;
_L2:
                if (adresponse.getDataModel() != null)
                {
                    break; /* Loop/switch isn't completed */
                }
                adLoaded = false;
                if (adListener != null)
                {
                    InterstitialAdListener interstitialadlistener = adListener;
                    InterstitialAd interstitialad = InterstitialAd.this;
                    AdError aderror;
                    if (adresponse.getError() != null)
                    {
                        aderror = adresponse.getError();
                    } else
                    {
                        aderror = AdError.INTERNAL_ERROR;
                    }
                    interstitialadlistener.onError(interstitialad, aderror);
                    return;
                }
                if (true) goto _L4; else goto _L3
_L3:
                adLoaded = false;
                if (adListener != null)
                {
                    adListener.onError(InterstitialAd.this, AdError.INTERNAL_ERROR);
                    return;
                }
                if (true) goto _L4; else goto _L5
_L5:
            }

            public void onError(AdError aderror)
            {
                adLoaded = false;
                if (adListener != null)
                {
                    adListener.onError(InterstitialAd.this, aderror);
                }
            }

            
            {
                this$0 = InterstitialAd.this;
                super();
            }
        });
        broadcastReceiver.register();
    }

    private void ensureAdRequestController()
    {
        if (adRequestController == null)
        {
            throw new RuntimeException("No request controller available, has the InterstitialAd been destroyed?");
        } else
        {
            return;
        }
    }

    public void destroy()
    {
        if (adRequestController != null)
        {
            adRequestController.destroy();
            adRequestController = null;
            broadcastReceiver.unregister();
        }
    }

    public boolean isAdLoaded()
    {
        return adLoaded;
    }

    public void loadAd()
    {
        ensureAdRequestController();
        adLoaded = false;
        adRequestController.loadAd();
    }

    public void setAdListener(InterstitialAdListener interstitialadlistener)
    {
        adListener = interstitialadlistener;
    }

    public void setImpressionListener(ImpressionListener impressionlistener)
    {
        impListener = impressionlistener;
    }

    public boolean show()
    {
        if (!adLoaded)
        {
            if (adListener != null)
            {
                adListener.onError(this, AdError.INTERNAL_ERROR);
            }
            return false;
        } else
        {
            Intent intent = new Intent(context, com/facebook/ads/InterstitialAdActivity);
            ((HtmlAdDataModel)adResponse.getDataModel()).addToIntentExtra(intent);
            adLoaded = false;
            Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displaymetrics = new DisplayMetrics();
            display.getMetrics(displaymetrics);
            intent.putExtra("displayRotation", display.getRotation());
            intent.putExtra("displayWidth", displaymetrics.widthPixels);
            intent.putExtra("displayHeight", displaymetrics.heightPixels);
            intent.putExtra("adInterstitialUniqueId", uniqueId);
            context.startActivity(intent);
            return true;
        }
    }


/*
    static AdResponse access$002(InterstitialAd interstitialad, AdResponse adresponse)
    {
        interstitialad.adResponse = adresponse;
        return adresponse;
    }

*/


/*
    static boolean access$102(InterstitialAd interstitialad, boolean flag)
    {
        interstitialad.adLoaded = flag;
        return flag;
    }

*/





    private class AdInterstitialBroadcastReceiver extends BroadcastReceiver
    {

        final InterstitialAd this$0;

        public void onReceive(Context context1, Intent intent)
        {
            String s = intent.getStringExtra("adInterstitialUniqueId");
            if (uniqueId.equals(s))
            {
                String s1 = intent.getAction();
                if (adListener != null || s1.equals("com.facebook.ads.interstitial.impression.logged"))
                {
                    if ("com.facebook.ads.interstitial.clicked".equals(s1))
                    {
                        adListener.onAdClicked(InterstitialAd.this);
                        return;
                    }
                    if ("com.facebook.ads.interstitial.dismissed".equals(s1))
                    {
                        adListener.onInterstitialDismissed(InterstitialAd.this);
                        return;
                    }
                    if ("com.facebook.ads.interstitial.displayed".equals(s1))
                    {
                        adListener.onInterstitialDisplayed(InterstitialAd.this);
                        return;
                    }
                    if ("com.facebook.ads.interstitial.impression.logged".equals(s1) && impListener != null)
                    {
                        impListener.onLoggingImpression(InterstitialAd.this);
                        return;
                    }
                }
            }
        }

        public void register()
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("com.facebook.ads.interstitial.displayed");
            intentfilter.addAction("com.facebook.ads.interstitial.dismissed");
            intentfilter.addAction("com.facebook.ads.interstitial.clicked");
            intentfilter.addAction("com.facebook.ads.interstitial.impression.logged");
            LocalBroadcastManager.getInstance(context).registerReceiver(this, intentfilter);
        }

        public void unregister()
        {
            LocalBroadcastManager.getInstance(context).unregisterReceiver(this);
        }

        private AdInterstitialBroadcastReceiver()
        {
            this$0 = InterstitialAd.this;
            super();
        }

    }

}
