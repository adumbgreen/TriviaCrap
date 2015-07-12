.class public Lcom/mopub/mobileads/AdViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/widget/FrameLayout$LayoutParams;

.field private static b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Lcom/mopub/common/GpsHelper$GpsHelperListener;

.field private e:Lcom/mopub/mobileads/MoPubView;

.field private final f:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

.field private g:Lcom/mopub/mobileads/AdFetcher;

.field private h:Lcom/mopub/mobileads/AdConfiguration;

.field private final i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Landroid/location/Location;

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 33
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Ljava/util/Map;

    .line 54
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    .line 55
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    .line 70
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController;->e:Lcom/mopub/mobileads/MoPubView;

    .line 73
    new-instance v0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 74
    new-instance v0, Lcom/mopub/mobileads/AdConfiguration;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/AdConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mopub/mobileads/factories/AdFetcherFactory;->create(Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/AdFetcher;

    .line 78
    new-instance v0, Lcom/mopub/mobileads/g;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/g;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/common/GpsHelper$GpsHelperListener;

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/common/GpsHelper;->fetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    .line 82
    new-instance v0, Lcom/mopub/mobileads/AdViewController$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdViewController$1;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->k:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->d(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;)Lcom/mopub/mobileads/AdConfiguration;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    return-object v0
.end method

.method protected static a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private b(Z)V
    .locals 4
    .parameter

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->t:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 236
    :goto_0
    if-eqz v0, :cond_0

    .line 237
    if-eqz p1, :cond_3

    const-string v0, "enabled"

    .line 238
    :goto_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    .line 240
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for ad unit ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 243
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    .line 244
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->t:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    if-eqz v0, :cond_5

    .line 245
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    .line 249
    :cond_1
    :goto_3
    return-void

    .line 235
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_3
    const-string v0, "disabled"

    goto :goto_1

    .line 238
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 246
    :cond_5
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    if-nez v0, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->o()V

    goto :goto_3
.end method

.method private static c(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->l()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdConfiguration;->m()I

    move-result v1

    .line 436
    invoke-static {p1}, Lcom/mopub/mobileads/AdViewController;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 437
    int-to-float v0, v0

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 438
    int-to-float v0, v1

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 440
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 442
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "testing.ads.mopub.com"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ads.mopub.com"

    goto :goto_0
.end method

.method private q()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 405
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 406
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 412
    :goto_0
    return v1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 411
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Z

    .line 164
    return-void
.end method

.method a(I)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdConfiguration;->a(I)V

    .line 308
    return-void
.end method

.method a(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Z

    .line 147
    const-string v1, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoPubErrorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading failover url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdConfiguration;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;)V

    .line 156
    :goto_1
    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 125
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Z

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already loading an ad for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wait to finish."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->m:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdConfiguration;->d(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Z

    .line 136
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Ljava/util/Map;

    .line 387
    return-void

    .line 384
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method a(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdConfiguration;->a(Lorg/apache/http/HttpResponse;)V

    .line 295
    return-void
.end method

.method a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    .line 231
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 232
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 223
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->k:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/AdViewController$4;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/AdViewController$4;-><init>(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method

.method b(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .parameter

    .prologue
    .line 369
    const-string v0, "Ad failed to load."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 371
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    .line 372
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 373
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/AdFetcher;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/AdFetcher;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdFetcher;->fetchAdForUrl(Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 227
    return-void
.end method

.method public customEventActionWillBegin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 474
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 469
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 462
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->i()V

    .line 463
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    .line 464
    return-void
.end method

.method d()Lcom/mopub/mobileads/AdConfiguration;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    return-object v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Z

    return v0
.end method

.method f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Z

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 276
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->o()V

    .line 282
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/AdFetcher;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdFetcher;->a()V

    .line 283
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/AdFetcher;

    .line 285
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->a()V

    .line 287
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Lcom/mopub/mobileads/MoPubView;

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Z

    goto :goto_0
.end method

.method g()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->n()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->m()I

    move-result v0

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->l()I

    move-result v0

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    return v0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Landroid/location/Location;

    return-object v0
.end method

.method public getMoPubView()Lcom/mopub/mobileads/MoPubView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Z

    return v0
.end method

.method h()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->o()I

    move-result v0

    return v0
.end method

.method i()V
    .locals 2

    .prologue
    .line 311
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mopub/mobileads/AdViewController$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdViewController$2;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 327
    return-void
.end method

.method public isFacebookSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method j()V
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mopub/mobileads/AdViewController$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdViewController$3;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 347
    return-void
.end method

.method k()V
    .locals 0

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 357
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    .line 358
    return-void
.end method

.method l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->r:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAd()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->t:Z

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "Can\'t load an ad in this ad view because the ad unit ID is null. Did you forget to call setAdUnitId()?"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const-string v0, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/content/Context;

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v1

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Landroid/location/Location;

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/common/GpsHelper$GpsHelperListener;

    invoke-static {v0, v1}, Lcom/mopub/common/GpsHelper;->fetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    goto :goto_0
.end method

.method m()V
    .locals 4

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->o()V

    .line 377
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->o()I

    move-result v0

    if-lez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdConfiguration;->o()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    :cond_0
    return-void
.end method

.method n()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->n:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reload ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdConfiguration;->a(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdConfiguration;->c(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public setFacebookSupported(Z)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->q:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->r:Landroid/location/Location;

    .line 180
    return-void
.end method

.method public setTesting(Z)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->s:Z

    .line 257
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/AdFetcher;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/AdFetcher;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdFetcher;->a(I)V

    .line 194
    :cond_0
    return-void
.end method
