// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import twitter4j.conf.Configuration;
import twitter4j.conf.ConfigurationContext;

// Referenced classes of package twitter4j:
//            HttpResponseImpl, Logger, JSONException, JSONArray, 
//            JSONTokener, HttpClientConfiguration, TwitterException, JSONObject

public abstract class HttpResponse
{

    private static final Logger logger = Logger.getLogger(twitter4j/HttpResponseImpl);
    protected final HttpClientConfiguration CONF;
    protected InputStream is;
    private JSONObject json;
    private JSONArray jsonArray;
    protected String responseAsString;
    protected int statusCode;
    private boolean streamConsumed;

    HttpResponse()
    {
        responseAsString = null;
        streamConsumed = false;
        json = null;
        jsonArray = null;
        CONF = ConfigurationContext.getInstance().getHttpClientConfiguration();
    }

    public HttpResponse(HttpClientConfiguration httpclientconfiguration)
    {
        responseAsString = null;
        streamConsumed = false;
        json = null;
        jsonArray = null;
        CONF = httpclientconfiguration;
    }

    private void disconnectForcibly()
    {
        try
        {
            disconnect();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public JSONArray asJSONArray()
    {
        if (jsonArray != null) goto _L2; else goto _L1
_L1:
        Reader reader = null;
        String s = responseAsString;
        reader = null;
        if (s != null) goto _L4; else goto _L3
_L3:
        reader = asReader();
        jsonArray = new JSONArray(new JSONTokener(reader));
_L7:
        if (!CONF.isPrettyDebugEnabled()) goto _L6; else goto _L5
_L5:
        logger.debug(jsonArray.toString(1));
_L10:
        Exception exception;
        JSONException jsonexception;
        Logger logger1;
        String s1;
        String s2;
        if (reader != null)
        {
            try
            {
                reader.close();
            }
            catch (IOException ioexception1) { }
        }
        disconnectForcibly();
_L2:
        return jsonArray;
_L4:
        jsonArray = new JSONArray(responseAsString);
        reader = null;
          goto _L7
        jsonexception;
        if (logger.isDebugEnabled())
        {
            throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(responseAsString).toString(), jsonexception);
        }
        break MISSING_BLOCK_LABEL_219;
        exception;
        if (reader != null)
        {
            try
            {
                reader.close();
            }
            catch (IOException ioexception) { }
        }
        disconnectForcibly();
        throw exception;
_L6:
        logger1 = logger;
        if (responseAsString == null) goto _L9; else goto _L8
_L8:
        s2 = responseAsString;
_L11:
        logger1.debug(s2);
          goto _L10
_L9:
        s1 = jsonArray.toString();
        s2 = s1;
          goto _L11
        throw new TwitterException(jsonexception.getMessage(), jsonexception);
          goto _L7
    }

    public JSONObject asJSONObject()
    {
        if (json != null) goto _L2; else goto _L1
_L1:
        Reader reader = null;
        String s = responseAsString;
        reader = null;
        if (s != null) goto _L4; else goto _L3
_L3:
        reader = asReader();
        json = new JSONObject(new JSONTokener(reader));
_L7:
        if (!CONF.isPrettyDebugEnabled()) goto _L6; else goto _L5
_L5:
        logger.debug(json.toString(1));
_L10:
        Exception exception;
        JSONException jsonexception;
        Logger logger1;
        String s1;
        String s2;
        if (reader != null)
        {
            try
            {
                reader.close();
            }
            catch (IOException ioexception1) { }
        }
        disconnectForcibly();
_L2:
        return json;
_L4:
        json = new JSONObject(responseAsString);
        reader = null;
          goto _L7
        jsonexception;
        if (responseAsString == null)
        {
            throw new TwitterException(jsonexception.getMessage(), jsonexception);
        }
        break MISSING_BLOCK_LABEL_192;
        exception;
        if (reader != null)
        {
            try
            {
                reader.close();
            }
            catch (IOException ioexception) { }
        }
        disconnectForcibly();
        throw exception;
_L6:
        logger1 = logger;
        if (responseAsString == null) goto _L9; else goto _L8
_L8:
        s2 = responseAsString;
_L11:
        logger1.debug(s2);
          goto _L10
_L9:
        s1 = json.toString();
        s2 = s1;
          goto _L11
        throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(responseAsString).toString(), jsonexception);
          goto _L7
    }

    public Reader asReader()
    {
        BufferedReader bufferedreader;
        try
        {
            bufferedreader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return new InputStreamReader(is);
        }
        return bufferedreader;
    }

    public InputStream asStream()
    {
        if (streamConsumed)
        {
            throw new IllegalStateException("Stream has already been consumed.");
        } else
        {
            return is;
        }
    }

    public String asString()
    {
        if (responseAsString != null) goto _L2; else goto _L1
_L1:
        IOException ioexception1;
        InputStream inputstream;
        BufferedReader bufferedreader;
        InputStream inputstream2;
        Exception exception;
        BufferedReader bufferedreader1;
        IOException ioexception2;
        IOException ioexception3;
        InputStream inputstream3;
        IOException ioexception4;
        IOException ioexception5;
        Exception exception2;
        try
        {
            inputstream3 = asStream();
        }
        catch (IOException ioexception)
        {
            ioexception1 = ioexception;
            inputstream = null;
            bufferedreader = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            exception = exception1;
            bufferedreader1 = null;
            inputstream2 = null;
            continue; /* Loop/switch isn't completed */
        }
        inputstream2 = inputstream3;
        if (inputstream2 == null)
        {
            InputStream inputstream1;
            StringBuilder stringbuilder;
            InputStream inputstream4;
            String s;
            if (inputstream2 != null)
            {
                try
                {
                    inputstream2.close();
                }
                catch (IOException ioexception8) { }
            }
            if (false)
            {
                try
                {
                    null.close();
                }
                catch (IOException ioexception7) { }
            }
            disconnectForcibly();
            return null;
        }
        bufferedreader1 = new BufferedReader(new InputStreamReader(inputstream2, "UTF-8"));
        stringbuilder = new StringBuilder();
_L5:
        s = bufferedreader1.readLine();
        if (s == null) goto _L4; else goto _L3
_L3:
        stringbuilder.append(s).append("\n");
          goto _L5
        ioexception1;
        inputstream4 = inputstream2;
        bufferedreader = bufferedreader1;
        inputstream = inputstream4;
_L9:
        throw new TwitterException(ioexception1.getMessage(), ioexception1);
        exception;
        inputstream1 = inputstream;
        bufferedreader1 = bufferedreader;
        inputstream2 = inputstream1;
_L7:
        if (inputstream2 != null)
        {
            try
            {
                inputstream2.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception3) { }
        }
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2) { }
        }
        disconnectForcibly();
        throw exception;
_L4:
        responseAsString = stringbuilder.toString();
        logger.debug(responseAsString);
        inputstream2.close();
        streamConsumed = true;
        if (inputstream2 != null)
        {
            try
            {
                inputstream2.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception5) { }
        }
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception4) { }
        }
        disconnectForcibly();
_L2:
        return responseAsString;
        exception2;
        exception = exception2;
        bufferedreader1 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L7; else goto _L6
        IOException ioexception6;
        ioexception6;
        inputstream = inputstream2;
        ioexception1 = ioexception6;
        bufferedreader = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public abstract void disconnect();

    public abstract String getResponseHeader(String s);

    public abstract Map getResponseHeaderFields();

    public int getStatusCode()
    {
        return statusCode;
    }

    public String toString()
    {
        return (new StringBuilder()).append("HttpResponse{statusCode=").append(statusCode).append(", responseAsString='").append(responseAsString).append('\'').append(", is=").append(is).append(", streamConsumed=").append(streamConsumed).append('}').toString();
    }

}
