// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdContainer, WebRequest, InternalAdRegistration, IInternalAdRegistration, 
//            DeviceInfo, ResponseReader, ThreadUtils, Log, 
//            PreloadCallback

class val.body
    implements Runnable
{

    final l.callback this$1;
    final String val$body;

    public void run()
    {
        AdContainer.access$200(_fld0, url, val$body, shouldPreload, callback);
    }

    l.callback()
    {
        this$1 = final_callback;
        val$body = String.this;
        super();
    }

    // Unreferenced inner class com/amazon/device/ads/AdContainer$1

/* anonymous class */
    class AdContainer._cls1
        implements Runnable
    {

        final AdContainer this$0;
        final PreloadCallback val$callback;
        final boolean val$shouldPreload;
        final String val$url;

        public void run()
        {
            WebRequest webrequest;
            webrequest = WebRequest.createNewWebRequest();
            webrequest.setExternalLogTag(AdContainer.access$100());
            webrequest.enableLogUrl(true);
            webrequest.setUrlString(url);
            webrequest.putHeader("User-Agent", InternalAdRegistration.getInstance().getDeviceInfo().getUserAgentString());
            WebRequest.WebResponse webresponse1 = webrequest.makeCall();
            WebRequest.WebResponse webresponse = webresponse1;
_L2:
            if (webresponse != null)
            {
                String s1 = webresponse.getResponseReader().readAsString();
                if (s1 == null)
                {
                    break; /* Loop/switch isn't completed */
                }
                ThreadUtils.executeOnMainThread(s1. new AdContainer._cls1._cls1());
            }
            return;
            WebRequest.WebRequestException webrequestexception;
            webrequestexception;
            String s = AdContainer.access$100();
            Object aobj[] = new Object[2];
            aobj[0] = url;
            aobj[1] = webrequestexception.getMessage();
            Log.e(s, "Could not load URL (%s) into AdContainer: %s", aobj);
            webresponse = null;
            if (true) goto _L2; else goto _L1
_L1:
            String s2 = AdContainer.access$100();
            Object aobj1[] = new Object[1];
            aobj1[0] = url;
            Log.e(s2, "Could not load URL (%s) into AdContainer.", aobj1);
            return;
        }

            
            {
                this$0 = final_adcontainer;
                url = s;
                shouldPreload = flag;
                callback = PreloadCallback.this;
                super();
            }
    }

}
