// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.lifestreet.android.lsmsdk.ErrorCode;
import com.lifestreet.android.lsmsdk.SlotContext;
import com.lifestreet.android.lsmsdk.exceptions.AsyncHttpTaskCanceledException;
import com.lifestreet.android.lsmsdk.exceptions.AsyncHttpTaskException;
import com.lifestreet.android.lsmsdk.exceptions.AsyncHttpTaskNetworkException;
import com.lifestreet.android.lsmsdk.exceptions.SlotException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;

// Referenced classes of package com.lifestreet.android.lsmsdk.commons:
//            CustomHttpClient, AsyncHttpTaskListener, AsyncHttpTaskResponse

public final class AsyncHttpTask extends AsyncTask
{

    private static final Handler sHandler = new Handler(Looper.getMainLooper());
    private final WeakReference mListenerRef;
    private final SlotContext mSlotContext;
    private final String mUserAgent;

    private AsyncHttpTask(AsyncHttpTaskListener asynchttptasklistener, SlotContext slotcontext, String s)
    {
        mUserAgent = s;
        mSlotContext = slotcontext;
        mListenerRef = new WeakReference(asynchttptasklistener);
    }

    public static void execute(AsyncHttpTaskListener asynchttptasklistener, SlotContext slotcontext, String s, String s1)
    {
        (new AsyncHttpTask(asynchttptasklistener, slotcontext, s1)).execute(((Object []) (new String[] {
            s
        })));
    }

    private AsyncHttpTaskResponse getAsyncHttpTaskResponse(String s)
    {
        CustomHttpClient customhttpclient;
        HttpResponse httpresponse;
        customhttpclient = new CustomHttpClient();
        HttpGet httpget;
        Exception exception;
        try
        {
            httpget = new HttpGet(s);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new AsyncHttpTaskException((new StringBuilder()).append("URL format error: ").append(illegalargumentexception.getMessage()).toString(), mSlotContext);
        }
        if (mUserAgent != null)
        {
            httpget.addHeader("User-Agent", mUserAgent);
        }
        httpresponse = customhttpclient.execute(httpget);
        if (httpresponse != null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        throw new AsyncHttpTaskNetworkException("Invalid response");
        exception;
        customhttpclient.getConnectionManager().shutdown();
        throw exception;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        throw new AsyncHttpTaskException(illegalstateexception.getMessage(), mSlotContext);
        IOException ioexception;
        ioexception;
        throw new AsyncHttpTaskNetworkException(ioexception.getMessage());
        HttpEntity httpentity;
        if (httpresponse.getStatusLine().getStatusCode() != 200)
        {
            throw new AsyncHttpTaskException(ErrorCode.BAD_STATUS_CODE, "Bad status code", mSlotContext);
        }
        httpentity = httpresponse.getEntity();
        if (httpentity != null)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        throw new AsyncHttpTaskException(ErrorCode.EMPTY_RESPONSE, "Empty response", mSlotContext);
        Header header = httpentity.getContentType();
        if (header == null)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        if (header.getValue() != null)
        {
            break MISSING_BLOCK_LABEL_248;
        }
        throw new AsyncHttpTaskException(ErrorCode.UNKNOWN_CONTENT_TYPE, "Invalid content-type", mSlotContext);
        String s1;
        AsyncHttpTaskListener asynchttptasklistener;
        s1 = header.getValue().toLowerCase(Locale.US);
        asynchttptasklistener = getListener();
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        stringbuilder = new StringBuilder();
        bufferedreader = new BufferedReader(new InputStreamReader(httpentity.getContent(), "UTF-8"), 8192);
_L7:
        if (asynchttptasklistener == null) goto _L2; else goto _L1
_L1:
        if (!asynchttptasklistener.shouldCancelAsyncHttpTask()) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L5:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_336;
        }
        if (!isCancelled())
        {
            break; /* Loop/switch isn't completed */
        }
        throw new AsyncHttpTaskCanceledException();
        IOException ioexception1;
        ioexception1;
        throw new AsyncHttpTaskNetworkException(ioexception1.getMessage());
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        int i;
        if (stringbuilder.length() > 0xa0000)
        {
            throw new AsyncHttpTaskException(ErrorCode.NO_ERROR, "The http response is too large (max is 655360)", mSlotContext);
        }
        i = bufferedreader.read();
        if (i == -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        stringbuilder.append((char)i);
        if (i != -1) goto _L7; else goto _L6
_L6:
        String s2 = stringbuilder.toString();
        if (s2 != null)
        {
            break MISSING_BLOCK_LABEL_449;
        }
        throw new AsyncHttpTaskException(ErrorCode.EMPTY_RESPONSE, "Empty response body", mSlotContext);
        customhttpclient.getConnectionManager().shutdown();
        return new AsyncHttpTaskResponse(s2, s1);
    }

    private AsyncHttpTaskListener getListener()
    {
        WeakReference weakreference = mListenerRef;
        AsyncHttpTaskListener asynchttptasklistener = null;
        if (weakreference != null)
        {
            asynchttptasklistener = (AsyncHttpTaskListener)mListenerRef.get();
        }
        return asynchttptasklistener;
    }

    private void postOnAsyncHttpTaskFailed(final String message, final Throwable throwable)
    {
        sHandler.post(new Runnable() {

            final AsyncHttpTask this$0;
            final String val$message;
            final Throwable val$throwable;

            public void run()
            {
                AsyncHttpTaskListener asynchttptasklistener = getListener();
                if (asynchttptasklistener != null)
                {
                    asynchttptasklistener.onAsyncHttpTaskFailed(message, throwable);
                }
            }

            
            {
                this$0 = AsyncHttpTask.this;
                message = s;
                throwable = throwable1;
                super();
            }
        });
    }

    protected transient AsyncHttpTaskResponse doInBackground(String as[])
    {
        String s = as[0];
        AsyncHttpTaskResponse asynchttptaskresponse;
        try
        {
            asynchttptaskresponse = getAsyncHttpTaskResponse(s);
        }
        catch (SlotException slotexception)
        {
            postOnAsyncHttpTaskFailed(slotexception.getMessage(), slotexception);
            return null;
        }
        return asynchttptaskresponse;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(AsyncHttpTaskResponse asynchttptaskresponse)
    {
        AsyncHttpTaskListener asynchttptasklistener = getListener();
        if (asynchttptasklistener != null && asynchttptaskresponse != null)
        {
            asynchttptasklistener.onAsyncHttpTaskCompleted(asynchttptaskresponse);
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((AsyncHttpTaskResponse)obj);
    }


}
