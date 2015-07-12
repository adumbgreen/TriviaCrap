.class final Lcom/millennialmedia/a/a/b/a/p$11;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/b/a/p;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/net/URI;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 554
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v1, v2, :cond_1

    .line 555
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 560
    :cond_0
    :goto_0
    return-object v0

    .line 559
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 560
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    new-instance v1, Lcom/millennialmedia/a/a/k;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 550
    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$11;->a(Lcom/millennialmedia/a/a/d/c;Ljava/net/URI;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/net/URI;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 569
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 570
    return-void

    .line 569
    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$11;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
