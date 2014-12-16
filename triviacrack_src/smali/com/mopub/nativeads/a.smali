.class abstract Lcom/mopub/nativeads/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/t;


# instance fields
.field private a:Lcom/mopub/nativeads/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Double;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private final k:Ljava/util/Map;
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

.field private l:Z

.field private m:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mopub/nativeads/a;->j:I

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/a;->i:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/a;->k:Ljava/util/Map;

    .line 55
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/CustomEventNative$ImageListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/CustomEventNative$ImageListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/mopub/nativeads/a$1;

    invoke-direct {v0, p2}, Lcom/mopub/nativeads/a$1;-><init>(Lcom/mopub/nativeads/CustomEventNative$ImageListener;)V

    invoke-static {p0, p1, v0}, Lcom/mopub/nativeads/i;->a(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/l;)V

    .line 343
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Double;)V
    .locals 6
    .parameter

    .prologue
    const-wide/high16 v4, 0x4014

    const-wide/16 v2, 0x0

    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/a;->h:Ljava/lang/Double;

    .line 230
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_1

    .line 225
    iput-object p1, p0, Lcom/mopub/nativeads/a;->h:Ljava/lang/Double;

    goto :goto_0

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to set invalid star rating ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). Must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mopub/nativeads/a;->b:Ljava/lang/String;

    .line 199
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mopub/nativeads/a;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mopub/nativeads/a;->c:Ljava/lang/String;

    .line 203
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mopub/nativeads/a;->d:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public clear(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    return-void
.end method

.method final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/mopub/nativeads/a;->e:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mopub/nativeads/a;->f:Ljava/lang/String;

    .line 215
    return-void
.end method

.method final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/mopub/nativeads/a;->g:Ljava/lang/String;

    .line 219
    return-void
.end method

.method final g(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mopub/nativeads/a;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mopub/nativeads/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickDestinationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mopub/nativeads/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mopub/nativeads/a;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Ljava/util/Map;
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
    .line 166
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativeads/a;->k:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/nativeads/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinPercentageViewed()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x32

    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/mopub/nativeads/a;->j:I

    return v0
.end method

.method public final getImpressionTrackers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/nativeads/a;->i:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mopub/nativeads/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mopub/nativeads/a;->h:Ljava/lang/Double;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mopub/nativeads/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mopub/nativeads/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    return-void
.end method

.method public final isOverridingClickTracker()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/mopub/nativeads/a;->l:Z

    return v0
.end method

.method public final isOverridingImpressionTracker()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/mopub/nativeads/a;->m:Z

    return v0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    return-void
.end method

.method public recordImpression()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public final setNativeEventListener(Lcom/mopub/nativeads/b;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mopub/nativeads/a;->a:Lcom/mopub/nativeads/b;

    .line 195
    return-void
.end method
