.class final Lcom/millennialmedia/a/a/b/a/p$28;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Number;
    .locals 2
    .parameter

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 246
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->m()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    new-instance v1, Lcom/millennialmedia/a/a/q;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Number;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-virtual {p1, p2}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/Number;)Lcom/millennialmedia/a/a/d/c;

    .line 259
    return-void
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$28;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$28;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
