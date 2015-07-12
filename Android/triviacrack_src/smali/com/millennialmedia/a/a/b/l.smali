.class Lcom/millennialmedia/a/a/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/millennialmedia/a/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/millennialmedia/a/a/b/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/l;->a:Lcom/millennialmedia/a/a/b/p;

    .line 723
    if-nez v1, :cond_0

    .line 734
    :goto_0
    return-object v0

    .line 727
    :cond_0
    iget-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 728
    iput-object v0, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 729
    iget-object v0, v1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    :goto_1
    if-eqz v0, :cond_1

    .line 730
    iput-object v2, v0, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 729
    iget-object v2, v0, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_1

    .line 733
    :cond_1
    iput-object v2, p0, Lcom/millennialmedia/a/a/b/l;->a:Lcom/millennialmedia/a/a/b/p;

    move-object v0, v1

    .line 734
    goto :goto_0
.end method

.method a(Lcom/millennialmedia/a/a/b/p;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 713
    :goto_0
    if-eqz p1, :cond_0

    .line 714
    iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 713
    iget-object v0, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 717
    :cond_0
    iput-object v0, p0, Lcom/millennialmedia/a/a/b/l;->a:Lcom/millennialmedia/a/a/b/p;

    .line 718
    return-void
.end method
