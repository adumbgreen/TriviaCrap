// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

// Referenced classes of package com.millennialmedia.android:
//            MMLog, OverlaySettings, AdViewOverlayActivity, VideoAd

final class HttpRedirection
{

    HttpRedirection()
    {
    }

    static final String a(String s)
    {
        String s1;
        if (s == null)
        {
            return null;
        }
        HttpURLConnection.setFollowRedirects(false);
        s1 = s;
_L9:
        if (!s1.startsWith("https")) goto _L2; else goto _L1
_L2:
        URL url;
        int i;
        String s6;
        URI uri;
        try
        {
            url = new URL(s1);
            HttpURLConnection httpurlconnection = (HttpURLConnection)url.openConnection();
            httpurlconnection.setConnectTimeout(10000);
            httpurlconnection.setRequestMethod("GET");
            httpurlconnection.connect();
            i = httpurlconnection.getResponseCode();
            s6 = httpurlconnection.getHeaderField("Location");
        }
        catch (MalformedURLException malformedurlexception)
        {
            String s5 = s1;
            MMLog.a("HttpRedirection", "Bad url scheme", malformedurlexception);
            return s5;
        }
        catch (SocketTimeoutException sockettimeoutexception)
        {
            String s4 = s1;
            MMLog.a("HttpRedirection", "Connection timeout.", sockettimeoutexception);
            return s4;
        }
        catch (IOException ioexception)
        {
            String s3 = s1;
            MMLog.a("HttpRedirection", "IOException following redirects: ", ioexception);
            return s3;
        }
        catch (URISyntaxException urisyntaxexception)
        {
            String s2 = s1;
            MMLog.a("HttpRedirection", "URI Syntax incorrect.", urisyntaxexception);
            return s2;
        }
        if (i < 300 || i >= 400) goto _L1; else goto _L3
_L3:
        if (TextUtils.isEmpty(s6)) goto _L1; else goto _L4
_L4:
        uri = new URI(s6);
        if (uri.isAbsolute()) goto _L6; else goto _L5
_L5:
        s1 = url.toURI().resolve(uri).toString();
_L7:
        MMLog.a("HttpRedirection", String.format("Redirecting to: %s", new Object[] {
            s1
        }));
        continue; /* Loop/switch isn't completed */
_L6:
        if (s6 != null)
        {
            s1 = s6;
        }
        if (true) goto _L7; else goto _L1
_L1:
        return s1;
        if (true) goto _L9; else goto _L8
_L8:
    }

    static void a(RedirectionListenerImpl redirectionlistenerimpl)
    {
        if (redirectionlistenerimpl == null || redirectionlistenerimpl.a == null || redirectionlistenerimpl.b == null)
        {
            return;
        } else
        {
            Utils.ThreadUtils.a(new Runnable(new WeakReference(redirectionlistenerimpl)) {

                final WeakReference a;

                private void a(RedirectionListenerImpl redirectionlistenerimpl1)
                {
                    Context context = (Context)redirectionlistenerimpl1.b.get();
                    if (context == null) goto _L2; else goto _L1
_L1:
                    String s;
                    Intent intent;
                    s = redirectionlistenerimpl1.c.getScheme();
                    intent = null;
                    if (s == null) goto _L4; else goto _L3
_L3:
                    if (s.equalsIgnoreCase("mmvideo")) goto _L6; else goto _L5
_L5:
                    intent = Utils.IntentUtils.a(redirectionlistenerimpl1);
_L4:
                    if (intent == null) goto _L2; else goto _L7
_L7:
                    String s1;
                    OverlaySettings overlaysettings = redirectionlistenerimpl1.getOverlaySettings();
                    if (intent != null && overlaysettings != null)
                    {
                        if (redirectionlistenerimpl1.d != null)
                        {
                            overlaysettings.c = redirectionlistenerimpl1.d;
                        }
                        intent.putExtra("settings", overlaysettings);
                    }
                    s1 = intent.getStringExtra("class");
                    if (s1 != null && s1.equals(com/millennialmedia/android/AdViewOverlayActivity.getCanonicalName())) goto _L2; else goto _L8
_L8:
                    if (redirectionlistenerimpl1.isActivityStartable(redirectionlistenerimpl1.c))
                    {
                        Utils.IntentUtils.c(context, intent);
                        redirectionlistenerimpl1.startingActivity(redirectionlistenerimpl1.c);
                    }
_L2:
                    return;
_L6:
                    boolean flag = redirectionlistenerimpl1.isHandlingMMVideo(redirectionlistenerimpl1.c);
                    intent = null;
                    if (!flag)
                    {
                        VideoAd.a(context, redirectionlistenerimpl1.c.getHost(), redirectionlistenerimpl1);
                        intent = null;
                    }
                    if (true) goto _L4; else goto _L9
_L9:
                    ActivityNotFoundException activitynotfoundexception;
                    activitynotfoundexception;
                    Object aobj[] = new Object[1];
                    aobj[0] = redirectionlistenerimpl1.c;
                    MMLog.a("HttpRedirection", String.format("No activity found for %s", aobj), activitynotfoundexception);
                    return;
                }

                public void run()
                {
                    String s;
label0:
                    {
                        RedirectionListenerImpl redirectionlistenerimpl1 = (RedirectionListenerImpl)a.get();
                        if (redirectionlistenerimpl1 != null)
                        {
                            s = HttpRedirection.a(redirectionlistenerimpl1.a);
                            if (s != null)
                            {
                                redirectionlistenerimpl1.c = Uri.parse(s);
                                if (redirectionlistenerimpl1.c == null)
                                {
                                    break label0;
                                }
                                a(redirectionlistenerimpl1);
                            }
                        }
                        return;
                    }
                    MMLog.e("HttpRedirection", String.format("Could not start activity for %s", new Object[] {
                        s
                    }));
                }

            
            {
                a = weakreference;
                super();
            }
            });
            return;
        }
    }

    private class RedirectionListenerImpl
        implements Listener
    {

        String a;
        WeakReference b;
        Uri c;
        String d;
        long e;

        public boolean canOpenOverlay()
        {
            return false;
        }

        public OverlaySettings getOverlaySettings()
        {
            return null;
        }

        public boolean isActivityStartable(Uri uri)
        {
            return true;
        }

        public boolean isExpandingToUrl()
        {
            return false;
        }

        public boolean isHandlingMMVideo(Uri uri)
        {
            return false;
        }

        public void startingActivity(Uri uri)
        {
            MMLog.b("HttpRedirection", String.format("Starting activity for %s", new Object[] {
                uri
            }));
        }

        public void startingVideo()
        {
        }

        public void updateLastVideoViewedTime()
        {
        }

        public RedirectionListenerImpl()
        {
        }
    }

}
