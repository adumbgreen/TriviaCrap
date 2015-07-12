// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util.vast;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.CacheService;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastVideoDownloadTask;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.mopub.mobileads.util.vast:
//            d, VastVideoConfiguration, a, c, 
//            b, VastCompanionAd, VastXmlManagerAggregator

public class VastManager
    implements d
{

    private static final List a = Arrays.asList(new String[] {
        "video/mp4", "video/3gpp"
    });
    private static final List b = Arrays.asList(new String[] {
        "image/jpeg", "image/png", "image/bmp", "image/gif"
    });
    private VastManagerListener c;
    private VastXmlManagerAggregator d;
    private double e;
    private int f;

    public VastManager(Context context)
    {
        a(context);
    }

    private double a(int i, int j)
    {
        double d1 = (double)i / (double)j;
        int k = i * j;
        double d2 = d1 / e;
        double d3 = (double)k / (double)f;
        return 40D * Math.abs(Math.log(d2)) + 60D * Math.abs(Math.log(d3));
    }

    static VastManagerListener a(VastManager vastmanager)
    {
        return vastmanager.c;
    }

    private void a(Context context)
    {
        Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        int i = display.getWidth();
        int j = display.getHeight();
        int k = Math.max(i, j);
        int l = Math.min(i, j);
        e = (double)k / (double)l;
        f = l * k;
    }

    static boolean a(VastManager vastmanager, VastVideoConfiguration vastvideoconfiguration)
    {
        return vastmanager.a(vastvideoconfiguration);
    }

    private boolean a(VastVideoConfiguration vastvideoconfiguration)
    {
        String s = vastvideoconfiguration.getNetworkMediaFileUrl();
        if (CacheService.containsKeyDiskCache(s))
        {
            vastvideoconfiguration.setDiskMediaFileUrl(CacheService.getFilePathDiskCache(s));
            return true;
        } else
        {
            return false;
        }
    }

    private VastVideoConfiguration c(List list)
    {
        VastVideoConfiguration vastvideoconfiguration = new VastVideoConfiguration();
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        a a1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist1.addAll(a1.k()))
        {
            a1 = (a)iterator.next();
            vastvideoconfiguration.addImpressionTrackers(a1.b());
            vastvideoconfiguration.addStartTrackers(a1.c());
            vastvideoconfiguration.addFirstQuartileTrackers(a1.d());
            vastvideoconfiguration.addMidpointTrackers(a1.e());
            vastvideoconfiguration.addThirdQuartileTrackers(a1.f());
            vastvideoconfiguration.addCompleteTrackers(a1.g());
            vastvideoconfiguration.addClickTrackers(a1.i());
            if (vastvideoconfiguration.getClickThroughUrl() == null)
            {
                vastvideoconfiguration.setClickThroughUrl(a1.h());
            }
            arraylist.addAll(a1.j());
        }

        vastvideoconfiguration.setNetworkMediaFileUrl(a(arraylist));
        vastvideoconfiguration.setVastCompanionAd(b(arraylist1));
        return vastvideoconfiguration;
    }

    String a(List list)
    {
        ArrayList arraylist;
        double d1;
        String s;
        Iterator iterator;
        arraylist = new ArrayList(list);
        d1 = (1.0D / 0.0D);
        s = null;
        iterator = arraylist.iterator();
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        c c1 = (c)iterator.next();
        String s1 = c1.c();
        String s2 = c1.d();
        if (!a.contains(s1) || s2 == null)
        {
            iterator.remove();
        } else
        {
            Integer integer = c1.a();
            Integer integer1 = c1.b();
            if (integer != null && integer.intValue() > 0 && integer1 != null && integer1.intValue() > 0)
            {
                double d2 = a(integer.intValue(), integer1.intValue());
                String s3;
                double d3;
                if (d2 < d1)
                {
                    s3 = s2;
                    d3 = d2;
                } else
                {
                    s3 = s;
                    d3 = d1;
                }
                d1 = d3;
                s = s3;
            }
        }
        if (true) goto _L3; else goto _L2
_L2:
        if (s == null && !arraylist.isEmpty())
        {
            s = ((c)arraylist.get(0)).d();
        }
        return s;
    }

    VastCompanionAd b(List list)
    {
        ArrayList arraylist;
        double d1;
        Iterator iterator;
        b b1;
        arraylist = new ArrayList(list);
        d1 = (1.0D / 0.0D);
        iterator = arraylist.iterator();
        b1 = null;
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        b b3 = (b)iterator.next();
        String s = b3.c();
        String s1 = b3.d();
        if (!b.contains(s) || s1 == null)
        {
            iterator.remove();
        } else
        {
            Integer integer = b3.a();
            Integer integer1 = b3.b();
            if (integer != null && integer.intValue() > 0 && integer1 != null && integer1.intValue() > 0)
            {
                double d2 = a(integer.intValue(), integer1.intValue());
                b b2;
                double d3;
                if (d2 < d1)
                {
                    d3 = d2;
                } else
                {
                    b3 = b1;
                    d3 = d1;
                }
                d1 = d3;
                b1 = b3;
            }
        }
        if (true) goto _L3; else goto _L2
_L2:
        if (b1 == null && !arraylist.isEmpty())
        {
            b2 = (b)arraylist.get(0);
        } else
        {
            b2 = b1;
        }
        if (b2 != null)
        {
            return new VastCompanionAd(b2.a(), b2.b(), b2.d(), b2.e(), new ArrayList(b2.f()));
        } else
        {
            return null;
        }
    }

    public void cancel()
    {
        if (d != null)
        {
            d.cancel(true);
            d = null;
        }
    }

    public void onAggregationComplete(List list)
    {
        d = null;
        if (list != null) goto _L2; else goto _L1
_L1:
        if (c != null)
        {
            c.onVastVideoConfigurationPrepared(null);
        }
_L4:
        return;
_L2:
        VastVideoConfiguration vastvideoconfiguration;
        vastvideoconfiguration = c(list);
        if (!a(vastvideoconfiguration))
        {
            break; /* Loop/switch isn't completed */
        }
        if (c != null)
        {
            c.onVastVideoConfigurationPrepared(vastvideoconfiguration);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        VastVideoDownloadTask vastvideodownloadtask = new VastVideoDownloadTask(new com.mopub.mobileads.VastVideoDownloadTask.VastVideoDownloadTaskListener(vastvideoconfiguration) {

            final VastVideoConfiguration a;
            final VastManager b;

            public void onComplete(boolean flag)
            {
                if (flag && VastManager.a(b, a))
                {
                    if (VastManager.a(b) != null)
                    {
                        VastManager.a(b).onVastVideoConfigurationPrepared(a);
                    }
                } else
                if (VastManager.a(b) != null)
                {
                    VastManager.a(b).onVastVideoConfigurationPrepared(null);
                    return;
                }
            }

            
            {
                b = VastManager.this;
                a = vastvideoconfiguration;
                super();
            }
        });
        try
        {
            String as[] = new String[1];
            as[0] = vastvideoconfiguration.getNetworkMediaFileUrl();
            AsyncTasks.safeExecuteOnExecutor(vastvideodownloadtask, as);
            return;
        }
        catch (Exception exception)
        {
            MoPubLog.d("Failed to download vast video", exception);
        }
        if (c != null)
        {
            c.onVastVideoConfigurationPrepared(null);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void prepareVastVideoConfiguration(String s, VastManagerListener vastmanagerlistener)
    {
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        c = vastmanagerlistener;
        d = new VastXmlManagerAggregator(this);
        AsyncTasks.safeExecuteOnExecutor(d, new String[] {
            s
        });
_L1:
        return;
        Exception exception;
        exception;
        MoPubLog.d("Failed to aggregate vast xml", exception);
        if (c != null)
        {
            c.onVastVideoConfigurationPrepared(null);
            return;
        }
          goto _L1
    }


    private class VastManagerListener
    {

        public abstract void onVastVideoConfigurationPrepared(VastVideoConfiguration vastvideoconfiguration);
    }

}
