.class Lcom/millennialmedia/a/a/b/n;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/b/j;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/j;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/j;->clear()V

    .line 976
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 963
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 951
    new-instance v0, Lcom/millennialmedia/a/a/b/n$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/n$1;-><init>(Lcom/millennialmedia/a/a/b/n;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 969
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->b(Ljava/lang/Object;)Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;

    iget v0, v0, Lcom/millennialmedia/a/a/b/j;->d:I

    return v0
.end method
