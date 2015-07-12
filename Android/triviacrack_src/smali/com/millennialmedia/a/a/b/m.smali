.class Lcom/millennialmedia/a/a/b/m;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/b/j;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/j;)V
    .locals 0
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/j;->clear()V

    .line 937
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 915
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/util/Map$Entry;)Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 903
    new-instance v0, Lcom/millennialmedia/a/a/b/m$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/m$1;-><init>(Lcom/millennialmedia/a/a/b/m;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 921
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 925
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/util/Map$Entry;)Lcom/millennialmedia/a/a/b/p;

    move-result-object v2

    .line 926
    if-eqz v2, :cond_0

    .line 929
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0, v2, v1}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Z)V

    move v0, v1

    .line 930
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;

    iget v0, v0, Lcom/millennialmedia/a/a/b/j;->d:I

    return v0
.end method
