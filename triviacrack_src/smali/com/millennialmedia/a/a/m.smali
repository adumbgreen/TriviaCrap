.class public final Lcom/millennialmedia/a/a/m;
.super Lcom/millennialmedia/a/a/j;
.source "SourceFile"


# instance fields
.field private final a:Lcom/millennialmedia/a/a/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/j",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/a/a/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/millennialmedia/a/a/j;-><init>()V

    .line 36
    new-instance v0, Lcom/millennialmedia/a/a/b/j;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/j;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/a/a/m;->a:Lcom/millennialmedia/a/a/b/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/millennialmedia/a/a/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    sget-object p2, Lcom/millennialmedia/a/a/l;->a:Lcom/millennialmedia/a/a/l;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/m;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/b/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 226
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/millennialmedia/a/a/m;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/millennialmedia/a/a/m;

    iget-object v0, p1, Lcom/millennialmedia/a/a/m;->a:Lcom/millennialmedia/a/a/b/j;

    iget-object v1, p0, Lcom/millennialmedia/a/a/m;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/b/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/millennialmedia/a/a/m;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/j;->hashCode()I

    move-result v0

    return v0
.end method

.method public o()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/a/a/j;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/millennialmedia/a/a/m;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/j;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
