.class final Lcom/millennialmedia/a/a/b/a/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/b/a/i;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
    .locals 3
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
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    .line 46
    new-instance v0, Lcom/millennialmedia/a/a/b/a/i;

    invoke-direct {v0, p1, v1}, Lcom/millennialmedia/a/a/b/a/i;-><init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/b/a/i$1;)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
