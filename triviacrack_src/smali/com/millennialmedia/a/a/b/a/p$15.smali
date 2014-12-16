.class final Lcom/millennialmedia/a/a/b/a/p$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/b/a/p;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/a/a/e;",
            "Lcom/millennialmedia/a/a/c/a",
            "<TT;>;)",
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 634
    :goto_0
    return-object v0

    .line 632
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/s;

    move-result-object v1

    .line 634
    new-instance v0, Lcom/millennialmedia/a/a/b/a/p$15$1;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/a/a/b/a/p$15$1;-><init>(Lcom/millennialmedia/a/a/b/a/p$15;Lcom/millennialmedia/a/a/s;)V

    goto :goto_0
.end method
