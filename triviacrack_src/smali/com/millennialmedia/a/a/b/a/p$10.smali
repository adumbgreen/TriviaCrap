.class final Lcom/millennialmedia/a/a/b/a/p$10;
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
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/net/URL;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 531
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v1, v2, :cond_1

    .line 532
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 536
    :cond_0
    :goto_0
    return-object v0

    .line 535
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 536
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 527
    check-cast p2, Ljava/net/URL;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$10;->a(Lcom/millennialmedia/a/a/d/c;Ljava/net/URL;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/net/URL;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 542
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 543
    return-void

    .line 542
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$10;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
