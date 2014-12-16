.class final Lcom/millennialmedia/a/a/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/millennialmedia/a/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

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

.field d:Lcom/millennialmedia/a/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/millennialmedia/a/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final g:I

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field i:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/p;->g:I

    .line 536
    iput-object p0, p0, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    iput-object p0, p0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    .line 537
    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/a/a/b/p;Ljava/lang/Object;ILcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;TK;I",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 544
    iput-object p2, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    .line 545
    iput p3, p0, Lcom/millennialmedia/a/a/b/p;->g:I

    .line 546
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 547
    iput-object p4, p0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    .line 548
    iput-object p5, p0, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    .line 549
    iput-object p0, p5, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    .line 550
    iput-object p0, p4, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    .line 551
    return-void
.end method


# virtual methods
.method public a()Lcom/millennialmedia/a/a/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 602
    .line 603
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 604
    :goto_0
    if-eqz v0, :cond_0

    .line 606
    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0

    .line 608
    :cond_0
    return-object p0
.end method

.method public b()Lcom/millennialmedia/a/a/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 616
    .line 617
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 618
    :goto_0
    if-eqz v0, :cond_0

    .line 620
    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0

    .line 622
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 574
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 575
    check-cast p1, Ljava/util/Map$Entry;

    .line 576
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    const/4 v0, 0x1

    .line 581
    :cond_0
    return v0

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 587
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    .line 566
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    .line 567
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
