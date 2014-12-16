.class public Lcom/smartadserver/android/library/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Ljava/util/regex/Pattern;

.field private static f:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lorg/apache/http/client/HttpClient;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/smartadserver/android/library/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/b/a;->a:Ljava/lang/String;

    .line 274
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/b/a;->e:Ljava/util/regex/Pattern;

    .line 275
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/b/a;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartadserver/android/library/b/a;-><init>(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/smartadserver/android/library/b/a;->c:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/smartadserver/android/library/b/a;->d:I

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/b/a;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/smartadserver/android/library/b/a;->d:I

    return v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 248
    const-class v1, Lcom/smartadserver/android/library/b/a;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 249
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 251
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 252
    if-nez v3, :cond_1

    .line 272
    :cond_0
    monitor-exit v1

    return-void

    .line 257
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    sget-object v4, Lcom/smartadserver/android/library/b/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rawCookieHeader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz v3, :cond_0

    .line 263
    sget-object v4, Lcom/smartadserver/android/library/b/a;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 265
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 266
    sget-object v4, Lcom/smartadserver/android/library/b/a;->f:Ljava/util/regex/Pattern;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 267
    new-instance v5, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5, p0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 269
    const-string v4, "/"

    invoke-virtual {v5, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2, v5}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/b/d;Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/smartadserver/android/library/b/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smartadserver/android/library/b/b;-><init>(Lcom/smartadserver/android/library/b/a;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/b/d;Lorg/apache/http/client/HttpClient;)V

    .line 81
    invoke-virtual {v0}, Lcom/smartadserver/android/library/b/b;->start()V

    .line 82
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/b/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartadserver/android/library/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 279
    const-class v1, Lcom/smartadserver/android/library/b/a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 300
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 283
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 284
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 285
    if-eqz v3, :cond_0

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 291
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$Version"

    if-ne v5, v6, :cond_3

    .line 299
    :cond_2
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 293
    :cond_3
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; Domain="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    sget-object v5, Lcom/smartadserver/android/library/b/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCookieHeader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/smartadserver/android/library/b/a;->b:Lorg/apache/http/client/HttpClient;

    .line 59
    return-void
.end method

.method public a(Lorg/apache/http/client/methods/HttpGet;Lcom/smartadserver/android/library/b/d;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/smartadserver/android/library/b/a;->b:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartadserver/android/library/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/b/d;Lorg/apache/http/client/HttpClient;)V

    .line 73
    return-void
.end method

.method public a(Lorg/apache/http/client/methods/HttpPost;Lcom/smartadserver/android/library/b/d;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/smartadserver/android/library/b/a;->b:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartadserver/android/library/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/b/d;Lorg/apache/http/client/HttpClient;)V

    .line 77
    return-void
.end method
