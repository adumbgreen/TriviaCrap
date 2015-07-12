.class public final Lcom/millennialmedia/a/a/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2
    .parameter

    .prologue
    .line 80
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/b/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/a/a/b/t;-><init>(Ljava/lang/Appendable;Lcom/millennialmedia/a/a/b/s$1;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Lcom/millennialmedia/a/a/j;Lcom/millennialmedia/a/a/d/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->P:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0, p1, p0}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    .line 76
    return-void
.end method
