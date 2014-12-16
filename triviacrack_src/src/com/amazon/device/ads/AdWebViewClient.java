// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package com.amazon.device.ads:
//            BridgeSelector, AdSDKBridgeFactory, AdSDKBridgeList, ThreadUtils, 
//            WebUtils, Log, AdControlAccessor

class AdWebViewClient extends WebViewClient
{

    protected static final String AAX_REDIRECT_BETA = "aax-beta.integ.amazon.com";
    protected static final String AAX_REDIRECT_GAMMA = "aax-us-east.amazon-adsystem.com";
    protected static final String AAX_REDIRECT_PROD = "aax-us-east.amazon-adsystem.com";
    public static final String AMAZON_MOBILE = "amazonmobile";
    protected static final String CORNERSTONE_BEST_ENDPOINT_BETA = "d16g-cornerstone-bes.integ.amazon.com";
    protected static final String CORNERSTONE_BEST_ENDPOINT_PROD = "pda-bes.amazon.com";
    public static final String GEO = "geo";
    public static final String GOOGLE_STREETVIEW = "google.streetview";
    private static final String LOG_TAG = com/amazon/device/ads/AdWebViewClient.getSimpleName();
    public static final String MAILTO = "mailto";
    public static final String SMS = "sms";
    public static final String TELEPHONE = "tel";
    public static final String VOICEMAIL = "voicemail";
    protected static final HashSet intentSchemes;
    protected static Set redirectHosts;
    private final AdControlAccessor adControlAccessor;
    private final AdSDKBridgeList bridgeList;
    private final Context context;
    private AdWebViewClientListener listener;
    private CopyOnWriteArrayList resourceList;
    private final HashMap urlExecutors = new HashMap();

    public AdWebViewClient(Context context1, AdSDKBridgeList adsdkbridgelist, AdControlAccessor adcontrolaccessor)
    {
        resourceList = new CopyOnWriteArrayList();
        context = context1;
        bridgeList = adsdkbridgelist;
        adControlAccessor = adcontrolaccessor;
        setupUrlExecutors();
    }

    private boolean checkResources()
    {
        Iterator iterator = resourceList.iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            String s = (String)iterator.next();
            Set set = BridgeSelector.getInstance().getBridgeFactoriesForResourceLoad(s);
            if (set.size() > 0)
            {
                Iterator iterator1 = set.iterator();
                while (iterator1.hasNext()) 
                {
                    AdSDKBridge adsdkbridge = ((AdSDKBridgeFactory)iterator1.next()).createAdSDKBridge(adControlAccessor);
                    if (!bridgeList.contains(adsdkbridge))
                    {
                        flag = true;
                        bridgeList.addBridge(adsdkbridge);
                    }
                }
            }
        }
        if (flag)
        {
            ThreadUtils.executeOnMainThread(new Runnable() {

                final AdWebViewClient this$0;

                public void run()
                {
                    adControlAccessor.reload();
                }

            
            {
                this$0 = AdWebViewClient.this;
                super();
            }
            });
        }
        return flag;
    }

    static boolean isHoneycombVersion()
    {
        return android.os.Build.VERSION.SDK_INT >= 11 && android.os.Build.VERSION.SDK_INT <= 13;
    }

    private void setupUrlExecutors()
    {
        urlExecutors.put("amazonmobile", new AmazonMobileExecutor(context));
        DefaultExecutor defaultexecutor = new DefaultExecutor(context);
        for (Iterator iterator = intentSchemes.iterator(); iterator.hasNext(); putUrlExecutor((String)iterator.next(), defaultexecutor)) { }
    }

    protected String getScheme(String s)
    {
        return WebUtils.getScheme(s);
    }

    protected boolean interpretScheme(String s, String s1)
    {
        if (s1 == null || s1.equals("about") && s.equalsIgnoreCase("about:blank"))
        {
            return false;
        }
        if (urlExecutors.containsKey(s1))
        {
            return ((UrlExecutor)urlExecutors.get(s1)).execute(s);
        } else
        {
            Log.d(LOG_TAG, "Scheme %s unrecognized. Launching as intent.", new Object[] {
                s1
            });
            return WebUtils.launchActivityForIntentLink(s, context);
        }
    }

    public void onLoadResource(WebView webview, String s)
    {
        resourceList.add(s);
        Log.d(LOG_TAG, "Loading resource: %s", new Object[] {
            s
        });
        listener.onLoadResource(webview, s);
    }

    public void onPageFinished(WebView webview, String s)
    {
        Log.d(LOG_TAG, "Page Finished %s", new Object[] {
            s
        });
        if (checkResources())
        {
            return;
        }
        if (listener == null)
        {
            Log.w(LOG_TAG, "Call to onPageFinished() ignored because listener is null.");
            return;
        } else
        {
            listener.onPageFinished(webview, s);
            return;
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
        listener.onPageStarted(webview, s);
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        Log.e(LOG_TAG, "Error: %s", new Object[] {
            s
        });
        super.onReceivedError(webview, i, s, s1);
        listener.onReceivedError(webview, i, s, s1);
    }

    public void putUrlExecutor(String s, UrlExecutor urlexecutor)
    {
        urlExecutors.put(s, urlexecutor);
    }

    public void setListener(AdWebViewClientListener adwebviewclientlistener)
    {
        listener = adwebviewclientlistener;
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Uri uri = Uri.parse(s);
        boolean flag;
        if (redirectHosts.contains(uri.getHost()) && !isHoneycombVersion())
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (interpretScheme(s, getScheme(s)))
        {
            return true;
        } else
        {
            return flag;
        }
    }

    static 
    {
        intentSchemes = new HashSet();
        intentSchemes.add("tel");
        intentSchemes.add("voicemail");
        intentSchemes.add("sms");
        intentSchemes.add("mailto");
        intentSchemes.add("geo");
        intentSchemes.add("google.streetview");
        redirectHosts = new HashSet();
        redirectHosts.add("aax-us-east.amazon-adsystem.com");
        redirectHosts.add("aax-us-east.amazon-adsystem.com");
        redirectHosts.add("aax-beta.integ.amazon.com");
        redirectHosts.add("pda-bes.amazon.com");
        redirectHosts.add("d16g-cornerstone-bes.integ.amazon.com");
    }



    private class AmazonMobileExecutor
        implements UrlExecutor
    {

        private final Context context;

        public boolean execute(String s)
        {
            specialUrlClicked(s);
            return true;
        }

        protected void handleApplicationDefinedSpecialURL(String s)
        {
            Log.i(AdWebViewClient.LOG_TAG, "Special url clicked, but was not handled by SDK. Url: %s", new Object[] {
                s
            });
        }

        protected boolean launchExternalActivity(String s)
        {
            return WebUtils.launchActivityForIntentLink(s, context);
        }

        public void specialUrlClicked(String s)
        {
            Uri uri;
            Log.d(AdWebViewClient.LOG_TAG, "Executing AmazonMobile Intent");
            uri = Uri.parse(s);
            List list;
            Iterator iterator;
            List list1;
            try
            {
                list1 = uri.getQueryParameters("intent");
            }
            catch (UnsupportedOperationException unsupportedoperationexception)
            {
                list = null;
                continue; /* Loop/switch isn't completed */
            }
            list = list1;
_L11:
            if (list == null || list.size() <= 0) goto _L2; else goto _L1
_L1:
            iterator = list.iterator();
_L6:
            if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
            if (!launchExternalActivity((String)iterator.next())) goto _L6; else goto _L5
_L5:
            return;
_L4:
            handleApplicationDefinedSpecialURL(s);
            return;
_L2:
            String s1;
            if (!AmazonDeviceLauncher.isWindowshopPresent(context))
            {
                break MISSING_BLOCK_LABEL_231;
            }
            if (!uri.getHost().equals("shopping"))
            {
                continue; /* Loop/switch isn't completed */
            }
            s1 = uri.getQueryParameter("app-action");
            if (s1 == null || s1.length() == 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (!s1.equals("detail"))
            {
                break; /* Loop/switch isn't completed */
            }
            String s3 = uri.getQueryParameter("asin");
            if (s3 != null && s3.length() != 0)
            {
                AmazonDeviceLauncher.launchWindowshopDetailPage(context, s3);
                return;
            }
            if (true) goto _L5; else goto _L7
_L7:
            String s2;
            if (!s1.equals("search"))
            {
                continue; /* Loop/switch isn't completed */
            }
            s2 = uri.getQueryParameter("keyword");
            if (s2 == null || s2.length() == 0) goto _L5; else goto _L8
_L8:
            AmazonDeviceLauncher.launchWindowshopSearchPage(context, s2);
            return;
            if (!s1.equals("webview")) goto _L5; else goto _L9
_L9:
            handleApplicationDefinedSpecialURL(s);
            return;
            handleApplicationDefinedSpecialURL(s);
            return;
            if (true) goto _L11; else goto _L10
_L10:
        }

        AmazonMobileExecutor(Context context1)
        {
            context = context1;
        }
    }


    private class DefaultExecutor
        implements UrlExecutor
    {

        private final Context context;

        public boolean execute(String s)
        {
            WebUtils.launchActivityForIntentLink(s, context);
            return true;
        }

        public DefaultExecutor(Context context1)
        {
            context = context1;
        }
    }


    private class UrlExecutor
    {

        public abstract boolean execute(String s);
    }


    private class AdWebViewClientListener
    {

        public abstract void onLoadResource(WebView webview, String s);

        public abstract void onPageFinished(WebView webview, String s);

        public abstract void onPageStarted(WebView webview, String s);

        public abstract void onReceivedError(WebView webview, int i, String s, String s1);
    }

}
