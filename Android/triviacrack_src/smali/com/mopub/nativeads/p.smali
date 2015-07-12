.class Lcom/mopub/nativeads/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/o;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/o;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mopub/nativeads/p;->a:Lcom/mopub/nativeads/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/p;->b:Ljava/util/ArrayList;

    .line 160
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mopub/nativeads/p;->a:Lcom/mopub/nativeads/o;

    invoke-static {v0}, Lcom/mopub/nativeads/o;->b(Lcom/mopub/nativeads/o;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/aj;

    .line 169
    iget-object v2, p0, Lcom/mopub/nativeads/p;->a:Lcom/mopub/nativeads/o;

    invoke-static {v2}, Lcom/mopub/nativeads/o;->c(Lcom/mopub/nativeads/o;)Lcom/mopub/nativeads/ao;

    move-result-object v4

    iget-wide v5, v0, Lcom/mopub/nativeads/aj;->b:J

    iget-object v2, v0, Lcom/mopub/nativeads/aj;->a:Ljava/lang/Object;

    check-cast v2, Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeResponse;->getImpressionMinTimeViewed()I

    move-result v2

    invoke-virtual {v4, v5, v6, v2}, Lcom/mopub/nativeads/ao;->a(JI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v0, v0, Lcom/mopub/nativeads/aj;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeResponse;->recordImpression(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/mopub/nativeads/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 182
    iget-object v2, p0, Lcom/mopub/nativeads/p;->a:Lcom/mopub/nativeads/o;

    invoke-virtual {v2, v0}, Lcom/mopub/nativeads/o;->a(Landroid/view/View;)V

    goto :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v0, p0, Lcom/mopub/nativeads/p;->a:Lcom/mopub/nativeads/o;

    invoke-static {v0}, Lcom/mopub/nativeads/o;->b(Lcom/mopub/nativeads/o;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/mopub/nativeads/p;->a:Lcom/mopub/nativeads/o;

    invoke-virtual {v0}, Lcom/mopub/nativeads/o;->c()V

    .line 189
    :cond_3
    return-void
.end method
