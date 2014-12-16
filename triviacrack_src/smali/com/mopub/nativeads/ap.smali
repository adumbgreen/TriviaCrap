.class Lcom/mopub/nativeads/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/am;

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


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/am;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mopub/nativeads/ap;->a:Lcom/mopub/nativeads/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/ap;->c:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/ap;->b:Ljava/util/ArrayList;

    .line 199
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mopub/nativeads/ap;->a:Lcom/mopub/nativeads/am;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/nativeads/am;->a(Lcom/mopub/nativeads/am;Z)Z

    .line 204
    iget-object v0, p0, Lcom/mopub/nativeads/ap;->a:Lcom/mopub/nativeads/am;

    invoke-static {v0}, Lcom/mopub/nativeads/am;->a(Lcom/mopub/nativeads/am;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/an;

    iget v0, v0, Lcom/mopub/nativeads/an;->a:I

    .line 208
    iget-object v3, p0, Lcom/mopub/nativeads/ap;->a:Lcom/mopub/nativeads/am;

    invoke-static {v3}, Lcom/mopub/nativeads/am;->b(Lcom/mopub/nativeads/am;)Lcom/mopub/nativeads/ao;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/mopub/nativeads/ao;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mopub/nativeads/ap;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/ap;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/ap;->a:Lcom/mopub/nativeads/am;

    invoke-static {v0}, Lcom/mopub/nativeads/am;->c(Lcom/mopub/nativeads/am;)Lcom/mopub/nativeads/aq;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/mopub/nativeads/ap;->a:Lcom/mopub/nativeads/am;

    invoke-static {v0}, Lcom/mopub/nativeads/am;->c(Lcom/mopub/nativeads/am;)Lcom/mopub/nativeads/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/ap;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mopub/nativeads/ap;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/mopub/nativeads/aq;->onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/ap;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Lcom/mopub/nativeads/ap;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 222
    return-void
.end method
