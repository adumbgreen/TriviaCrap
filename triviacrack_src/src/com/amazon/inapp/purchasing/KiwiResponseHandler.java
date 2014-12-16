// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.amazon.inapp.purchasing:
//            ResponseHandler, HandlerManager, Logger, HandlerAdapter

final class KiwiResponseHandler
    implements ResponseHandler
{

    static final String HANDLER_THREAD_NAME = "KiwiResponseHandlerHandlerThread";
    private static final String KEY_REQUEST_ID = "requestId";
    private static final String KEY_RESPONSE_TYPE = "response_type";
    private static final String TAG = "KiwiResponseHandler";
    private final HandlerAdapter _handler = HandlerManager.getHandlerAdapter("KiwiResponseHandlerHandlerThread");

    KiwiResponseHandler()
    {
    }

    public void handleResponse(Context context, Intent intent)
    {
        String s;
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiResponseHandler", "handleResponse");
        }
        s = intent.getExtras().getString("response_type");
        if (s != null) goto _L2; else goto _L1
_L1:
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiResponseHandler", "Invalid response type: null");
        }
_L7:
        return;
_L2:
        ResponseType responsetype = ResponseType.valueOf(s);
        int i;
        Object obj;
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiResponseHandler", (new StringBuilder()).append("Found response type: ").append(responsetype).toString());
        }
        class _cls1
        {

            static final int $SwitchMap$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType[];

            static 
            {
                $SwitchMap$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType = new int[ResponseType.values().length];
                try
                {
                    $SwitchMap$com$amazon$inapp$purchasing$KiwiResponseHandler$ResponseType[ResponseType.purchase_response.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
            }
        }

        i = _cls1..SwitchMap.com.amazon.inapp.purchasing.KiwiResponseHandler.ResponseType[responsetype.ordinal()];
        obj = null;
        i;
        JVM INSTR tableswitch 1 1: default 112
    //                   1 161;
           goto _L3 _L4
_L3:
        if (obj != null)
        {
            _handler.post(((Runnable) (obj)));
            return;
        }
          goto _L5
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiResponseHandler", (new StringBuilder()).append("Invlid response type: ").append(s).toString());
            return;
        }
          goto _L5
_L4:
        obj = new PurchaseResponseHandlerRunnable(context, intent);
        if (true) goto _L3; else goto _L5
_L5:
        if (true) goto _L7; else goto _L6
_L6:
    }

    private class ResponseType extends Enum
    {

        private static final ResponseType $VALUES[];
        public static final ResponseType item_response;
        public static final ResponseType purchase_response;
        public static final ResponseType updates_response;

        public static ResponseType valueOf(String s)
        {
            return (ResponseType)Enum.valueOf(com/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType, s);
        }

        public static ResponseType[] values()
        {
            return (ResponseType[])$VALUES.clone();
        }

        static 
        {
            purchase_response = new ResponseType("purchase_response", 0);
            item_response = new ResponseType("item_response", 1);
            updates_response = new ResponseType("updates_response", 2);
            ResponseType aresponsetype[] = new ResponseType[3];
            aresponsetype[0] = purchase_response;
            aresponsetype[1] = item_response;
            aresponsetype[2] = updates_response;
            $VALUES = aresponsetype;
        }

        private ResponseType(String s, int i)
        {
            super(s, i);
        }
    }


    private class PurchaseResponseHandlerRunnable extends ResponseHandlerRunnable
    {
        private class ResponseHandlerRunnable
            implements Runnable
        {

            private final Context _context;
            private final Intent _intent;
            final KiwiResponseHandler this$0;

            protected final Context getContext()
            {
                return _context;
            }

            protected final Intent getIntent()
            {
                return _intent;
            }

            public ResponseHandlerRunnable(Context context, Intent intent)
            {
                this$0 = KiwiResponseHandler.this;
                super();
                _context = context;
                _intent = intent;
            }
        }


        final KiwiResponseHandler this$0;

        public void run()
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiResponseHandler", "PurchaseResponseHandlerRunnable.run()");
            }
            String s = getIntent().getExtras().getString("requestId");
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiResponseHandler", (new StringBuilder()).append("PurchaseResponseHandlerRunnable.run: requestId: ").append(s).toString());
            }
            if (s != null && s.trim().length() > 0)
            {
                Kiwi.addCommandToCommandTaskPipeline(new KiwiPurchaseResponseCommandTask(s));
            }
        }

        public PurchaseResponseHandlerRunnable(Context context, Intent intent)
        {
            this$0 = KiwiResponseHandler.this;
            super(context, intent);
        }
    }

}
