// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util.vast;


// Referenced classes of package com.mopub.mobileads.util.vast:
//            VastManager, VastVideoConfiguration

class a
    implements com.mopub.mobileads.oadTask.VastVideoDownloadTaskListener
{

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

    guration(VastManager vastmanager, VastVideoConfiguration vastvideoconfiguration)
    {
        b = vastmanager;
        a = vastvideoconfiguration;
        super();
    }
}
