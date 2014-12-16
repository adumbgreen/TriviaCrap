.class final Lcom/millennialmedia/a/a/d/a$1;
.super Lcom/millennialmedia/a/a/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/d/a;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)V
    .locals 3
    .parameter

    .prologue
    .line 1665
    instance-of v0, p1, Lcom/millennialmedia/a/a/b/a/e;

    if-eqz v0, :cond_0

    .line 1666
    check-cast p1, Lcom/millennialmedia/a/a/b/a/e;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/b/a/e;->o()V

    .line 1685
    :goto_0
    return-void

    .line 1669
    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/a/a/d/a;->a(Lcom/millennialmedia/a/a/d/a;)I

    move-result v0

    .line 1670
    if-nez v0, :cond_1

    .line 1671
    invoke-static {p1}, Lcom/millennialmedia/a/a/d/a;->b(Lcom/millennialmedia/a/a/d/a;)I

    move-result v0

    .line 1673
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1674
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/millennialmedia/a/a/d/a;->a(Lcom/millennialmedia/a/a/d/a;I)I

    goto :goto_0

    .line 1675
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1676
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/millennialmedia/a/a/d/a;->a(Lcom/millennialmedia/a/a/d/a;I)I

    goto :goto_0

    .line 1677
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1678
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/millennialmedia/a/a/d/a;->a(Lcom/millennialmedia/a/a/d/a;I)I

    goto :goto_0

    .line 1680
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/millennialmedia/a/a/d/a;->c(Lcom/millennialmedia/a/a/d/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/millennialmedia/a/a/d/a;->d(Lcom/millennialmedia/a/a/d/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
