.class Lcom/mopub/nativeads/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field b:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field c:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field d:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/aj",
            "<",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Runnable;

.field private final h:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field private i:Lcom/mopub/nativeads/v;

.field private j:Lcom/mopub/nativeads/RequestParameters;

.field private k:Lcom/mopub/nativeads/MoPubNative;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/u;-><init>(Ljava/util/List;Landroid/os/Handler;)V

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/aj",
            "<",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/mopub/nativeads/u;->e:Ljava/util/List;

    .line 71
    iput-object p2, p0, Lcom/mopub/nativeads/u;->f:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/mopub/nativeads/u$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/u$1;-><init>(Lcom/mopub/nativeads/u;)V

    iput-object v0, p0, Lcom/mopub/nativeads/u;->g:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/mopub/nativeads/u$2;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/u$2;-><init>(Lcom/mopub/nativeads/u;)V

    iput-object v0, p0, Lcom/mopub/nativeads/u;->h:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativeads/u;->c:I

    .line 121
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mopub/nativeads/u;->d:I

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/u;)Lcom/mopub/nativeads/MoPubNative;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mopub/nativeads/u;->k:Lcom/mopub/nativeads/MoPubNative;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/nativeads/u;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mopub/nativeads/u;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativeads/u;)Lcom/mopub/nativeads/v;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mopub/nativeads/u;->i:Lcom/mopub/nativeads/v;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/nativeads/u;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mopub/nativeads/u;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/mopub/nativeads/u;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mopub/nativeads/u;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/mopub/nativeads/u;->k:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mopub/nativeads/u;->k:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 156
    iput-object v1, p0, Lcom/mopub/nativeads/u;->k:Lcom/mopub/nativeads/MoPubNative;

    .line 159
    :cond_0
    iput-object v1, p0, Lcom/mopub/nativeads/u;->j:Lcom/mopub/nativeads/RequestParameters;

    .line 161
    iget-object v0, p0, Lcom/mopub/nativeads/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/aj;

    .line 162
    iget-object v0, v0, Lcom/mopub/nativeads/aj;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeResponse;->destroy()V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/mopub/nativeads/u;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iput-boolean v2, p0, Lcom/mopub/nativeads/u;->a:Z

    .line 168
    iput v2, p0, Lcom/mopub/nativeads/u;->c:I

    .line 169
    invoke-virtual {p0}, Lcom/mopub/nativeads/u;->d()V

    .line 170
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/u;->h:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    invoke-virtual {p0, p3, v0}, Lcom/mopub/nativeads/u;->a(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V

    .line 136
    return-void
.end method

.method a(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V
    .locals 0
    .parameter
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/mopub/nativeads/u;->a()V

    .line 143
    iput-object p1, p0, Lcom/mopub/nativeads/u;->j:Lcom/mopub/nativeads/RequestParameters;

    .line 144
    iput-object p2, p0, Lcom/mopub/nativeads/u;->k:Lcom/mopub/nativeads/MoPubNative;

    .line 146
    invoke-virtual {p0}, Lcom/mopub/nativeads/u;->e()V

    .line 147
    return-void
.end method

.method a(Lcom/mopub/nativeads/v;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mopub/nativeads/u;->i:Lcom/mopub/nativeads/v;

    .line 130
    return-void
.end method

.method b()Lcom/mopub/nativeads/NativeResponse;
    .locals 7

    .prologue
    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 186
    iget-boolean v0, p0, Lcom/mopub/nativeads/u;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/nativeads/u;->b:Z

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mopub/nativeads/u;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mopub/nativeads/u;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/mopub/nativeads/u;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/aj;

    .line 194
    iget-wide v3, v0, Lcom/mopub/nativeads/aj;->b:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xdbba0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 195
    iget-object v0, v0, Lcom/mopub/nativeads/aj;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/NativeResponse;

    .line 198
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 5
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const v4, 0x493e0

    .line 204
    iget v0, p0, Lcom/mopub/nativeads/u;->d:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/mopub/nativeads/u;->d:I

    .line 205
    iget v0, p0, Lcom/mopub/nativeads/u;->d:I

    if-le v0, v4, :cond_0

    .line 206
    iput v4, p0, Lcom/mopub/nativeads/u;->d:I

    .line 208
    :cond_0
    return-void
.end method

.method d()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 212
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mopub/nativeads/u;->d:I

    .line 213
    return-void
.end method

.method e()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/mopub/nativeads/u;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/u;->k:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/u;->a:Z

    .line 224
    iget-object v0, p0, Lcom/mopub/nativeads/u;->k:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/u;->j:Lcom/mopub/nativeads/RequestParameters;

    iget v2, p0, Lcom/mopub/nativeads/u;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    .line 226
    :cond_0
    return-void
.end method
