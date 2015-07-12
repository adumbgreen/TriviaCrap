.class Lcom/mopub/nativeads/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/mopub/nativeads/am;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/aj",
            "<",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/mopub/nativeads/p;

.field private final f:Lcom/mopub/nativeads/ao;

.field private g:Lcom/mopub/nativeads/aq;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 43
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lcom/mopub/nativeads/ao;

    invoke-direct {v3}, Lcom/mopub/nativeads/ao;-><init>()V

    new-instance v4, Lcom/mopub/nativeads/am;

    invoke-direct {v4, p1}, Lcom/mopub/nativeads/am;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/o;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/mopub/nativeads/ao;Lcom/mopub/nativeads/am;Landroid/os/Handler;)V

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/mopub/nativeads/ao;Lcom/mopub/nativeads/am;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/aj",
            "<",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;>;",
            "Lcom/mopub/nativeads/ao;",
            "Lcom/mopub/nativeads/am;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/mopub/nativeads/o;->b:Ljava/util/Map;

    .line 57
    iput-object p2, p0, Lcom/mopub/nativeads/o;->c:Ljava/util/Map;

    .line 58
    iput-object p3, p0, Lcom/mopub/nativeads/o;->f:Lcom/mopub/nativeads/ao;

    .line 59
    iput-object p4, p0, Lcom/mopub/nativeads/o;->a:Lcom/mopub/nativeads/am;

    .line 61
    new-instance v0, Lcom/mopub/nativeads/o$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/o$1;-><init>(Lcom/mopub/nativeads/o;)V

    iput-object v0, p0, Lcom/mopub/nativeads/o;->g:Lcom/mopub/nativeads/aq;

    .line 90
    iget-object v0, p0, Lcom/mopub/nativeads/o;->a:Lcom/mopub/nativeads/am;

    iget-object v1, p0, Lcom/mopub/nativeads/o;->g:Lcom/mopub/nativeads/aq;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/am;->a(Lcom/mopub/nativeads/aq;)V

    .line 92
    iput-object p5, p0, Lcom/mopub/nativeads/o;->d:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/mopub/nativeads/p;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/p;-><init>(Lcom/mopub/nativeads/o;)V

    iput-object v0, p0, Lcom/mopub/nativeads/o;->e:Lcom/mopub/nativeads/p;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/o;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mopub/nativeads/o;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/nativeads/o;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mopub/nativeads/o;->c:Ljava/util/Map;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mopub/nativeads/o;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method static synthetic c(Lcom/mopub/nativeads/o;)Lcom/mopub/nativeads/ao;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mopub/nativeads/o;->f:Lcom/mopub/nativeads/ao;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mopub/nativeads/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    iget-object v0, p0, Lcom/mopub/nativeads/o;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    iget-object v0, p0, Lcom/mopub/nativeads/o;->a:Lcom/mopub/nativeads/am;

    invoke-virtual {v0}, Lcom/mopub/nativeads/am;->a()V

    .line 129
    iget-object v0, p0, Lcom/mopub/nativeads/o;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mopub/nativeads/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/o;->b(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/mopub/nativeads/o;->a:Lcom/mopub/nativeads/am;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/am;->a(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method a(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/o;->a(Landroid/view/View;)V

    .line 108
    invoke-virtual {p2}, Lcom/mopub/nativeads/NativeResponse;->getRecordedImpression()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mopub/nativeads/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/mopub/nativeads/o;->a:Lcom/mopub/nativeads/am;

    invoke-virtual {p2}, Lcom/mopub/nativeads/NativeResponse;->getImpressionMinPercentageViewed()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mopub/nativeads/am;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/mopub/nativeads/o;->a()V

    .line 134
    iget-object v0, p0, Lcom/mopub/nativeads/o;->a:Lcom/mopub/nativeads/am;

    invoke-virtual {v0}, Lcom/mopub/nativeads/am;->b()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/o;->g:Lcom/mopub/nativeads/aq;

    .line 136
    return-void
.end method

.method c()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/o;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/o;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/o;->e:Lcom/mopub/nativeads/p;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
