.class Lcom/mopub/nativeads/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final b:Ljava/lang/ref/WeakReference;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/an;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/mopub/nativeads/ao;

.field private g:Lcom/mopub/nativeads/aq;

.field private final h:Lcom/mopub/nativeads/ap;

.field private final i:Landroid/os/Handler;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/mopub/nativeads/ao;

    invoke-direct {v1}, Lcom/mopub/nativeads/ao;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/nativeads/am;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/nativeads/ao;Landroid/os/Handler;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/nativeads/ao;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/an;",
            ">;",
            "Lcom/mopub/nativeads/ao;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mopub/nativeads/am;->d:J

    .line 84
    iput-object p2, p0, Lcom/mopub/nativeads/am;->e:Ljava/util/Map;

    .line 85
    iput-object p3, p0, Lcom/mopub/nativeads/am;->f:Lcom/mopub/nativeads/ao;

    .line 86
    iput-object p4, p0, Lcom/mopub/nativeads/am;->i:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/mopub/nativeads/ap;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/ap;-><init>(Lcom/mopub/nativeads/am;)V

    iput-object v0, p0, Lcom/mopub/nativeads/am;->h:Lcom/mopub/nativeads/ap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mopub/nativeads/am;->c:Ljava/util/ArrayList;

    .line 90
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mopub/nativeads/am;->b:Ljava/lang/ref/WeakReference;

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v0, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v1, Lcom/mopub/nativeads/am$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/am$1;-><init>(Lcom/mopub/nativeads/am;)V

    iput-object v1, p0, Lcom/mopub/nativeads/am;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 104
    iget-object v1, p0, Lcom/mopub/nativeads/am;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/mopub/nativeads/am;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mopub/nativeads/am;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(J)V
    .locals 5
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mopub/nativeads/am;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/an;

    iget-wide v3, v1, Lcom/mopub/nativeads/an;->b:J

    cmp-long v1, v3, p1

    if-gez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/mopub/nativeads/am;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 142
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/am;->a(Landroid/view/View;)V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/am;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/mopub/nativeads/am;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/mopub/nativeads/am;)Lcom/mopub/nativeads/ao;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mopub/nativeads/am;->f:Lcom/mopub/nativeads/ao;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativeads/am;)Lcom/mopub/nativeads/aq;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mopub/nativeads/am;->g:Lcom/mopub/nativeads/aq;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/mopub/nativeads/am;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 159
    iget-object v0, p0, Lcom/mopub/nativeads/am;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iput-boolean v1, p0, Lcom/mopub/nativeads/am;->j:Z

    .line 161
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mopub/nativeads/am;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method a(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x32

    .line 117
    iget-object v0, p0, Lcom/mopub/nativeads/am;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/an;

    .line 118
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/mopub/nativeads/an;

    invoke-direct {v0}, Lcom/mopub/nativeads/an;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/mopub/nativeads/am;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/mopub/nativeads/am;->c()V

    .line 123
    :cond_0
    iput p2, v0, Lcom/mopub/nativeads/an;->a:I

    .line 124
    iget-wide v1, p0, Lcom/mopub/nativeads/am;->d:J

    iput-wide v1, v0, Lcom/mopub/nativeads/an;->b:J

    .line 127
    iget-wide v0, p0, Lcom/mopub/nativeads/am;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mopub/nativeads/am;->d:J

    .line 128
    iget-wide v0, p0, Lcom/mopub/nativeads/am;->d:J

    rem-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 129
    iget-wide v0, p0, Lcom/mopub/nativeads/am;->d:J

    sub-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/am;->a(J)V

    .line 131
    :cond_1
    return-void
.end method

.method a(Lcom/mopub/nativeads/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mopub/nativeads/am;->g:Lcom/mopub/nativeads/aq;

    .line 110
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/mopub/nativeads/am;->a()V

    .line 168
    iget-object v0, p0, Lcom/mopub/nativeads/am;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 169
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/nativeads/am;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/mopub/nativeads/am;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 174
    :cond_0
    iput-object v2, p0, Lcom/mopub/nativeads/am;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 176
    :cond_1
    iput-object v2, p0, Lcom/mopub/nativeads/am;->g:Lcom/mopub/nativeads/aq;

    .line 177
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/mopub/nativeads/am;->j:Z

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/am;->j:Z

    .line 187
    iget-object v0, p0, Lcom/mopub/nativeads/am;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/am;->h:Lcom/mopub/nativeads/ap;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
