// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;


// Referenced classes of package org.b.c:
//            j

public final class i extends Enum
{

    public static final i A;
    public static final i B;
    public static final i C;
    public static final i D;
    public static final i E;
    public static final i F;
    public static final i G;
    public static final i H;
    public static final i I;
    public static final i J;
    public static final i K;
    public static final i L;
    public static final i M;
    public static final i N;
    public static final i O;
    public static final i P;
    public static final i Q;
    public static final i R;
    public static final i S;
    public static final i T;
    public static final i U;
    public static final i V;
    public static final i W;
    public static final i X;
    public static final i Y;
    public static final i Z;
    public static final i a;
    public static final i aa;
    public static final i ab;
    public static final i ac;
    public static final i ad;
    public static final i ae;
    public static final i af;
    public static final i ag;
    public static final i ah;
    public static final i ai;
    public static final i aj;
    public static final i ak;
    public static final i al;
    private static final i ao[];
    public static final i b;
    public static final i c;
    public static final i d;
    public static final i e;
    public static final i f;
    public static final i g;
    public static final i h;
    public static final i i;
    public static final i j;
    public static final i k;
    public static final i l;
    public static final i m;
    public static final i n;
    public static final i o;
    public static final i p;
    public static final i q;
    public static final i r;
    public static final i s;
    public static final i t;
    public static final i u;
    public static final i v;
    public static final i w;
    public static final i x;
    public static final i y;
    public static final i z;
    private final int am;
    private final String an;

    private i(String s1, int i1, int j1, String s2)
    {
        super(s1, i1);
        am = j1;
        an = s2;
    }

    public static i a(int i1)
    {
        i ai1[] = values();
        int j1 = ai1.length;
        for (int k1 = 0; k1 < j1; k1++)
        {
            i l1 = ai1[k1];
            if (l1.am == i1)
            {
                return l1;
            }
        }

        throw new IllegalArgumentException((new StringBuilder()).append("No matching constant for [").append(i1).append("]").toString());
    }

    public static i valueOf(String s1)
    {
        return (i)Enum.valueOf(org/b/c/i, s1);
    }

    public static i[] values()
    {
        return (i[])ao.clone();
    }

    public int a()
    {
        return am;
    }

    public String b()
    {
        return an;
    }

    public j c()
    {
        return org.b.c.j.a(this);
    }

    public String toString()
    {
        return Integer.toString(am);
    }

    static 
    {
        a = new i("CONTINUE", 0, 100, "Continue");
        b = new i("SWITCHING_PROTOCOLS", 1, 101, "Switching Protocols");
        c = new i("PROCESSING", 2, 102, "Processing");
        d = new i("CHECKPOINT", 3, 103, "Checkpoint");
        e = new i("OK", 4, 200, "OK");
        f = new i("CREATED", 5, 201, "Created");
        g = new i("ACCEPTED", 6, 202, "Accepted");
        h = new i("NON_AUTHORITATIVE_INFORMATION", 7, 203, "Non-Authoritative Information");
        i = new i("NO_CONTENT", 8, 204, "No Content");
        j = new i("RESET_CONTENT", 9, 205, "Reset Content");
        k = new i("PARTIAL_CONTENT", 10, 206, "Partial Content");
        l = new i("MULTI_STATUS", 11, 207, "Multi-Status");
        m = new i("ALREADY_REPORTED", 12, 208, "Already Reported");
        n = new i("IM_USED", 13, 226, "IM Used");
        o = new i("MULTIPLE_CHOICES", 14, 300, "Multiple Choices");
        p = new i("MOVED_PERMANENTLY", 15, 301, "Moved Permanently");
        q = new i("FOUND", 16, 302, "Found");
        r = new i("MOVED_TEMPORARILY", 17, 302, "Moved Temporarily");
        s = new i("SEE_OTHER", 18, 303, "See Other");
        t = new i("NOT_MODIFIED", 19, 304, "Not Modified");
        u = new i("USE_PROXY", 20, 305, "Use Proxy");
        v = new i("TEMPORARY_REDIRECT", 21, 307, "Temporary Redirect");
        w = new i("RESUME_INCOMPLETE", 22, 308, "Resume Incomplete");
        x = new i("BAD_REQUEST", 23, 400, "Bad Request");
        y = new i("UNAUTHORIZED", 24, 401, "Unauthorized");
        z = new i("PAYMENT_REQUIRED", 25, 402, "Payment Required");
        A = new i("FORBIDDEN", 26, 403, "Forbidden");
        B = new i("NOT_FOUND", 27, 404, "Not Found");
        C = new i("METHOD_NOT_ALLOWED", 28, 405, "Method Not Allowed");
        D = new i("NOT_ACCEPTABLE", 29, 406, "Not Acceptable");
        E = new i("PROXY_AUTHENTICATION_REQUIRED", 30, 407, "Proxy Authentication Required");
        F = new i("REQUEST_TIMEOUT", 31, 408, "Request Timeout");
        G = new i("CONFLICT", 32, 409, "Conflict");
        H = new i("GONE", 33, 410, "Gone");
        I = new i("LENGTH_REQUIRED", 34, 411, "Length Required");
        J = new i("PRECONDITION_FAILED", 35, 412, "Precondition Failed");
        K = new i("REQUEST_ENTITY_TOO_LARGE", 36, 413, "Request Entity Too Large");
        L = new i("REQUEST_URI_TOO_LONG", 37, 414, "Request-URI Too Long");
        M = new i("UNSUPPORTED_MEDIA_TYPE", 38, 415, "Unsupported Media Type");
        N = new i("REQUESTED_RANGE_NOT_SATISFIABLE", 39, 416, "Requested range not satisfiable");
        O = new i("EXPECTATION_FAILED", 40, 417, "Expectation Failed");
        P = new i("I_AM_A_TEAPOT", 41, 418, "I'm a teapot");
        Q = new i("INSUFFICIENT_SPACE_ON_RESOURCE", 42, 419, "Insufficient Space On Resource");
        R = new i("METHOD_FAILURE", 43, 420, "Method Failure");
        S = new i("DESTINATION_LOCKED", 44, 421, "Destination Locked");
        T = new i("UNPROCESSABLE_ENTITY", 45, 422, "Unprocessable Entity");
        U = new i("LOCKED", 46, 423, "Locked");
        V = new i("FAILED_DEPENDENCY", 47, 424, "Failed Dependency");
        W = new i("UPGRADE_REQUIRED", 48, 426, "Upgrade Required");
        X = new i("PRECONDITION_REQUIRED", 49, 428, "Precondition Required");
        Y = new i("TOO_MANY_REQUESTS", 50, 429, "Too Many Requests");
        Z = new i("REQUEST_HEADER_FIELDS_TOO_LARGE", 51, 431, "Request Header Fields Too Large");
        aa = new i("INTERNAL_SERVER_ERROR", 52, 500, "Internal Server Error");
        ab = new i("NOT_IMPLEMENTED", 53, 501, "Not Implemented");
        ac = new i("BAD_GATEWAY", 54, 502, "Bad Gateway");
        ad = new i("SERVICE_UNAVAILABLE", 55, 503, "Service Unavailable");
        ae = new i("GATEWAY_TIMEOUT", 56, 504, "Gateway Timeout");
        af = new i("HTTP_VERSION_NOT_SUPPORTED", 57, 505, "HTTP Version not supported");
        ag = new i("VARIANT_ALSO_NEGOTIATES", 58, 506, "Variant Also Negotiates");
        ah = new i("INSUFFICIENT_STORAGE", 59, 507, "Insufficient Storage");
        ai = new i("LOOP_DETECTED", 60, 508, "Loop Detected");
        aj = new i("BANDWIDTH_LIMIT_EXCEEDED", 61, 509, "Bandwidth Limit Exceeded");
        ak = new i("NOT_EXTENDED", 62, 510, "Not Extended");
        al = new i("NETWORK_AUTHENTICATION_REQUIRED", 63, 511, "Network Authentication Required");
        i ai1[] = new i[64];
        ai1[0] = a;
        ai1[1] = b;
        ai1[2] = c;
        ai1[3] = d;
        ai1[4] = e;
        ai1[5] = f;
        ai1[6] = g;
        ai1[7] = h;
        ai1[8] = i;
        ai1[9] = j;
        ai1[10] = k;
        ai1[11] = l;
        ai1[12] = m;
        ai1[13] = n;
        ai1[14] = o;
        ai1[15] = p;
        ai1[16] = q;
        ai1[17] = r;
        ai1[18] = s;
        ai1[19] = t;
        ai1[20] = u;
        ai1[21] = v;
        ai1[22] = w;
        ai1[23] = x;
        ai1[24] = y;
        ai1[25] = z;
        ai1[26] = A;
        ai1[27] = B;
        ai1[28] = C;
        ai1[29] = D;
        ai1[30] = E;
        ai1[31] = F;
        ai1[32] = G;
        ai1[33] = H;
        ai1[34] = I;
        ai1[35] = J;
        ai1[36] = K;
        ai1[37] = L;
        ai1[38] = M;
        ai1[39] = N;
        ai1[40] = O;
        ai1[41] = P;
        ai1[42] = Q;
        ai1[43] = R;
        ai1[44] = S;
        ai1[45] = T;
        ai1[46] = U;
        ai1[47] = V;
        ai1[48] = W;
        ai1[49] = X;
        ai1[50] = Y;
        ai1[51] = Z;
        ai1[52] = aa;
        ai1[53] = ab;
        ai1[54] = ac;
        ai1[55] = ad;
        ai1[56] = ae;
        ai1[57] = af;
        ai1[58] = ag;
        ai1[59] = ah;
        ai1[60] = ai;
        ai1[61] = aj;
        ai1[62] = ak;
        ai1[63] = al;
        ao = ai1;
    }
}
