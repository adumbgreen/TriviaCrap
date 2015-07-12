.class abstract Lcom/millennialmedia/a/a/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/millennialmedia/a/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/millennialmedia/a/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/millennialmedia/a/a/b/j;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/a/a/b/j;)V
    .locals 1
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget-object v0, v0, Lcom/millennialmedia/a/a/b/j;->c:Lcom/millennialmedia/a/a/b/p;

    iget-object v0, v0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/o;->b:Lcom/millennialmedia/a/a/b/p;

    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    .line 861
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget v0, v0, Lcom/millennialmedia/a/a/b/j;->e:I

    iput v0, p0, Lcom/millennialmedia/a/a/b/o;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/a/a/b/j;Lcom/millennialmedia/a/a/b/j$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/o;-><init>(Lcom/millennialmedia/a/a/b/j;)V

    return-void
.end method


# virtual methods
.method final b()Lcom/millennialmedia/a/a/b/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->b:Lcom/millennialmedia/a/a/b/p;

    .line 871
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget-object v1, v1, Lcom/millennialmedia/a/a/b/j;->c:Lcom/millennialmedia/a/a/b/p;

    if-ne v0, v1, :cond_0

    .line 872
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget v1, v1, Lcom/millennialmedia/a/a/b/j;->e:I

    iget v2, p0, Lcom/millennialmedia/a/a/b/o;->d:I

    if-eq v1, v2, :cond_1

    .line 875
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 877
    :cond_1
    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    iput-object v1, p0, Lcom/millennialmedia/a/a/b/o;->b:Lcom/millennialmedia/a/a/b/p;

    .line 878
    iput-object v0, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->b:Lcom/millennialmedia/a/a/b/p;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget-object v1, v1, Lcom/millennialmedia/a/a/b/j;->c:Lcom/millennialmedia/a/a/b/p;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Z)V

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    .line 888
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget v0, v0, Lcom/millennialmedia/a/a/b/j;->e:I

    iput v0, p0, Lcom/millennialmedia/a/a/b/o;->d:I

    .line 889
    return-void
.end method
