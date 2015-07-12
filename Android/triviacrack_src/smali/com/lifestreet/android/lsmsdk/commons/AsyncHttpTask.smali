.class public final Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mUserAgent:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;)Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->getListener()Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;-><init>(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method private getAsyncHttpTaskResponse(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 76
    new-instance v1, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;

    invoke-direct {v1}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;-><init>()V

    .line 79
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mUserAgent:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    :try_start_2
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskNetworkException;

    const-string v2, "Invalid response"

    invoke-direct {v0, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskNetworkException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL format error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    :try_start_3
    new-instance v2, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v2, v0, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v2

    .line 97
    :catch_2
    move-exception v0

    .line 98
    new-instance v2, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskNetworkException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskNetworkException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    .line 106
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->BAD_STATUS_CODE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v3, "Bad status code"

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v0, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 110
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_RESPONSE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v3, "Empty response"

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v0, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 116
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 118
    :cond_4
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNKNOWN_CONTENT_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v3, "Invalid content-type"

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v0, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 122
    :cond_5
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->getListener()Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 127
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-direct {v5, v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 133
    :cond_6
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;->shouldCancelAsyncHttpTask()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 135
    :goto_0
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 136
    :cond_7
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskCanceledException;

    invoke-direct {v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskCanceledException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 154
    :catch_3
    move-exception v0

    .line 155
    :try_start_5
    new-instance v2, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskNetworkException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskNetworkException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_9
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/high16 v6, 0xa

    if-le v0, v6, :cond_a

    .line 141
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_ERROR:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v3, "The http response is too large (max is 655360)"

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v0, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 146
    :cond_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 147
    if-eq v0, v8, :cond_b

    .line 148
    int-to-char v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    :cond_b
    if-ne v0, v8, :cond_6

    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    .line 158
    if-nez v0, :cond_c

    .line 159
    :try_start_7
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_RESPONSE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v3, "Empty response body"

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v0, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    :cond_c
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 166
    new-instance v1, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;

    invoke-direct {v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getListener()Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;

    .line 188
    :cond_0
    return-object v0
.end method

.method private postOnAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 170
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask$1;-><init>(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;
    .locals 3
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 54
    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-direct {p0, v1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->getAsyncHttpTaskResponse(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;
    :try_end_0
    .catch Lcom/lifestreet/android/lsmsdk/exceptions/SlotException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->postOnAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->doInBackground([Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->getListener()Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {v0, p1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;->onAsyncHttpTaskCompleted(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;

    invoke-virtual {p0, p1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->onPostExecute(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;)V

    return-void
.end method
