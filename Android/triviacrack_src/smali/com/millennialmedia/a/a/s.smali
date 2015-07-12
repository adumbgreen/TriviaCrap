.class public abstract Lcom/millennialmedia/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/j;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/millennialmedia/a/a/j;"
        }
    .end annotation

    .prologue
    .line 284
    :try_start_0
    new-instance v0, Lcom/millennialmedia/a/a/b/a/f;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/f;-><init>()V

    .line 285
    invoke-virtual {p0, v0, p1}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/a/f;->a()Lcom/millennialmedia/a/a/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Lcom/millennialmedia/a/a/k;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/c;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/a;",
            ")TT;"
        }
    .end annotation
.end method
