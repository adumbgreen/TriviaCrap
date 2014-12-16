.class Lcom/millennialmedia/a/a/b/a/p$15$1;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/a/p$15;->a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/s;

.field final synthetic b:Lcom/millennialmedia/a/a/b/a/p$15;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/a/p$15;Lcom/millennialmedia/a/a/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/p$15$1;->b:Lcom/millennialmedia/a/a/b/a/p$15;

    iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/p$15$1;->a:Lcom/millennialmedia/a/a/s;

    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/sql/Timestamp;
    .locals 4
    .parameter

    .prologue
    .line 639
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/p$15$1;->a:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 640
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$15$1;->a(Lcom/millennialmedia/a/a/d/c;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/sql/Timestamp;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/p$15$1;->a:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    .line 648
    return-void
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$15$1;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method
