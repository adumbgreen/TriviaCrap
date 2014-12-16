// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdContainer, WebRequest, InternalAdRegistration, IInternalAdRegistration, 
//            DeviceInfo, ResponseReader, ThreadUtils, Log, 
//            PreloadCallback

class k
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
        webrequest.setUrlString(val$url);
        webrequest.putHeader("User-Agent", InternalAdRegistration.getInstance().getDeviceInfo().getUserAgentString());
        Response response1 = webrequest.makeCall();
        Response response = response1;
_L2:
        if (response != null)
        {
            final String body = response.getResponseReader().readAsString();
            if (body == null)
            {
                break; /* Loop/switch isn't completed */
            }
            ThreadUtils.executeOnMainThread(new Runnable() {

                final AdContainer._cls1 this$1;
                final String val$body;

                public void run()
                {
                    AdContainer.access$200(this$0, url, body, shouldPreload, callback);
                }

            
            {
                this$1 = AdContainer._cls1.this;
                body = s;
                super();
            }
            });
        }
        return;
        RequestException requestexception;
        requestexception;
        String s = AdContainer.access$100();
        Object aobj[] = new Object[2];
        aobj[0] = val$url;
        aobj[1] = requestexception.getMessage();
        Log.e(s, "Could not load URL (%s) into AdContainer: %s", aobj);
        response = null;
        if (true) goto _L2; else goto _L1
_L1:
        String s1 = AdContainer.access$100();
        Object aobj1[] = new Object[1];
        aobj1[0] = val$url;
        Log.e(s1, "Could not load URL (%s) into AdContainer.", aobj1);
        return;
    }

    k()
    {
        this$0 = final_adcontainer;
        val$url = s;
        val$shouldPreload = flag;
        val$callback = PreloadCallback.this;
        super();
    }
}
