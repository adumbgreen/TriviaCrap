.class final Lcom/millennialmedia/a/a/b/a/p$5;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    .line 413
    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 414
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 415
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    .line 418
    :cond_0
    sget-object v1, Lcom/millennialmedia/a/a/d/b;->h:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$5;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-virtual {p1, p2}, Lcom/millennialmedia/a/a/d/c;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 428
    return-void
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$5;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
