// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.DownloadResponse;
import com.mopub.common.DownloadTask;
import com.mopub.common.HttpClient;
import com.mopub.common.HttpResponses;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import org.apache.http.client.methods.HttpUriRequest;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.mopub.nativeads:
//            PositioningSource, af, ad

class ae
    implements PositioningSource
{

    static int a = 0x493e0;
    private final Context b;
    private final af c;
    private final Handler d;
    private final Runnable e;
    private DownloadTask f;
    private PositioningSource.PositioningListener g;
    private int h;
    private String i;
    private com.mopub.common.DownloadTask.DownloadTaskListener j = new com.mopub.common.DownloadTask.DownloadTaskListener() {

        final ae a;

        public void onComplete(String s, DownloadResponse downloadresponse)
        {
            if (downloadresponse == null)
            {
                return;
            }
            ae.a(a, null);
            if (downloadresponse.getStatusCode() != 200)
            {
                MoPubLog.e("Invalid positioning download response ");
                ae.b(a);
                return;
            }
            String s1 = HttpResponses.asResponseString(downloadresponse);
            MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning;
            try
            {
                mopubclientpositioning = a.a(s1);
            }
            catch (JSONException jsonexception)
            {
                MoPubLog.e("Error parsing JSON: ", jsonexception);
                ae.b(a);
                return;
            }
            ae.a(a, mopubclientpositioning);
        }

            
            {
                a = ae.this;
                super();
            }
    };

    ae(Context context)
    {
        this(context, new af());
    }

    ae(Context context, af af1)
    {
        b = context.getApplicationContext();
        c = af1;
        d = new Handler();
        e = new Runnable() {

            final ae a;

            public void run()
            {
                ae.a(a);
            }

            
            {
                a = ae.this;
                super();
            }
        };
    }

    static DownloadTask a(ae ae1, DownloadTask downloadtask)
    {
        ae1.f = downloadtask;
        return downloadtask;
    }

    private void a()
    {
        MoPubLog.d((new StringBuilder()).append("Loading positioning from: ").append(i).toString());
        f = c.a(j);
        org.apache.http.client.methods.HttpGet httpget = HttpClient.initializeHttpGet(i, b);
        AsyncTasks.safeExecuteOnExecutor(f, new HttpUriRequest[] {
            httpget
        });
    }

    private void a(MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
    {
        g.onLoad(mopubclientpositioning);
        g = null;
        h = 0;
    }

    static void a(ae ae1)
    {
        ae1.a();
    }

    static void a(ae ae1, MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
    {
        ae1.a(mopubclientpositioning);
    }

    private void a(JSONArray jsonarray, MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
    {
        int k = 0;
        while (k < jsonarray.length()) 
        {
            JSONObject jsonobject = jsonarray.getJSONObject(k);
            int l = jsonobject.optInt("section", 0);
            if (l < 0)
            {
                throw new JSONException((new StringBuilder()).append("Invalid section ").append(l).append(" in JSON response").toString());
            }
            if (l <= 0)
            {
                int i1 = jsonobject.getInt("position");
                if (i1 < 0 || i1 > 0x10000)
                {
                    throw new JSONException((new StringBuilder()).append("Invalid position ").append(i1).append(" in JSON response").toString());
                }
                mopubclientpositioning.addFixedPosition(i1);
            }
            k++;
        }
    }

    private void a(JSONObject jsonobject, MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
    {
        int k = jsonobject.getInt("interval");
        if (k < 2 || k > 0x10000)
        {
            throw new JSONException((new StringBuilder()).append("Invalid interval ").append(k).append(" in JSON response").toString());
        } else
        {
            mopubclientpositioning.enableRepeatingPositions(k);
            return;
        }
    }

    private void b()
    {
        int k = (int)(1000D * Math.pow(2D, 1 + h));
        if (k >= a)
        {
            MoPubLog.d("Error downloading positioning information");
            g.onFailed();
            g = null;
            return;
        } else
        {
            h = 1 + h;
            d.postDelayed(e, k);
            return;
        }
    }

    static void b(ae ae1)
    {
        ae1.b();
    }

    MoPubNativeAdPositioning.MoPubClientPositioning a(String s)
    {
        if (s == null || s.equals(""))
        {
            throw new JSONException("Empty response");
        }
        JSONObject jsonobject = new JSONObject(s);
        String s1 = jsonobject.optString("error", null);
        if (s1 != null)
        {
            throw new JSONException(s1);
        }
        JSONArray jsonarray = jsonobject.optJSONArray("fixed");
        JSONObject jsonobject1 = jsonobject.optJSONObject("repeating");
        MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning = new MoPubNativeAdPositioning.MoPubClientPositioning();
        if (jsonarray == null && jsonobject1 == null)
        {
            throw new JSONException("Must contain fixed or repeating positions");
        }
        if (jsonarray != null)
        {
            a(jsonarray, mopubclientpositioning);
        }
        if (jsonobject1 != null)
        {
            a(jsonobject1, mopubclientpositioning);
        }
        return mopubclientpositioning;
    }

    public void loadPositions(String s, PositioningSource.PositioningListener positioninglistener)
    {
        if (f != null)
        {
            f.cancel(true);
            f = null;
        }
        if (h > 0)
        {
            d.removeCallbacks(e);
            h = 0;
        }
        g = positioninglistener;
        i = (new ad(b)).withAdUnitId(s).generateUrlString("ads.mopub.com");
        a();
    }

}
