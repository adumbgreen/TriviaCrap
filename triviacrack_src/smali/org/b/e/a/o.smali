.class Lorg/b/e/a/o;
.super Lorg/b/e/a/l;
.source "SourceFile"


# instance fields
.field final synthetic b:Lorg/b/e/a/k;

.field private final c:Lorg/b/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c/b",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/b/e/a/k;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 577
    iput-object p1, p0, Lorg/b/e/a/o;->b:Lorg/b/e/a/k;

    .line 578
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lorg/b/e/a/l;-><init>(Lorg/b/e/a/k;Ljava/lang/Class;Lorg/b/e/a/k$1;)V

    .line 579
    instance-of v0, p2, Lorg/b/c/b;

    if-eqz v0, :cond_0

    .line 580
    check-cast p2, Lorg/b/c/b;

    iput-object p2, p0, Lorg/b/e/a/o;->c:Lorg/b/c/b;

    .line 588
    :goto_0
    return-void

    .line 582
    :cond_0
    if-eqz p2, :cond_1

    .line 583
    new-instance v0, Lorg/b/c/b;

    invoke-direct {v0, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/b/e/a/o;->c:Lorg/b/c/b;

    goto :goto_0

    .line 586
    :cond_1
    sget-object v0, Lorg/b/c/b;->a:Lorg/b/c/b;

    iput-object v0, p0, Lorg/b/e/a/o;->c:Lorg/b/c/b;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/b/e/a/k;Ljava/lang/Object;Ljava/lang/Class;Lorg/b/e/a/k$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-direct {p0, p1, p2, p3}, Lorg/b/e/a/o;-><init>(Lorg/b/e/a/k;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/a/e;)V
    .locals 7
    .parameter

    .prologue
    .line 593
    invoke-super {p0, p1}, Lorg/b/e/a/l;->a(Lorg/b/c/a/e;)V

    .line 594
    iget-object v0, p0, Lorg/b/e/a/o;->c:Lorg/b/c/b;

    invoke-virtual {v0}, Lorg/b/c/b;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    invoke-interface {p1}, Lorg/b/c/a/e;->d()Lorg/b/c/c;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lorg/b/e/a/o;->c:Lorg/b/c/b;

    invoke-virtual {v1}, Lorg/b/c/b;->a()Lorg/b/c/c;

    move-result-object v1

    .line 597
    invoke-virtual {v1}, Lorg/b/c/c;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    invoke-virtual {v0, v1}, Lorg/b/c/c;->putAll(Ljava/util/Map;)V

    .line 600
    :cond_0
    invoke-virtual {v0}, Lorg/b/c/c;->b()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 601
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/b/c/c;->a(J)V

    .line 635
    :cond_1
    :goto_0
    return-void

    .line 605
    :cond_2
    iget-object v0, p0, Lorg/b/e/a/o;->c:Lorg/b/c/b;

    invoke-virtual {v0}, Lorg/b/c/b;->b()Ljava/lang/Object;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 607
    iget-object v0, p0, Lorg/b/e/a/o;->c:Lorg/b/c/b;

    invoke-virtual {v0}, Lorg/b/c/b;->a()Lorg/b/c/c;

    move-result-object v3

    .line 608
    invoke-virtual {v3}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v4

    .line 609
    iget-object v0, p0, Lorg/b/e/a/o;->b:Lorg/b/e/a/k;

    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/b/f;

    .line 610
    invoke-interface {v0, v2, v4}, Lorg/b/c/b/f;->b(Ljava/lang/Class;Lorg/b/c/k;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 611
    invoke-virtual {v3}, Lorg/b/c/c;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 612
    invoke-interface {p1}, Lorg/b/c/a/e;->d()Lorg/b/c/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/b/c/c;->putAll(Ljava/util/Map;)V

    .line 614
    :cond_4
    const-string v2, "RestTemplate"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 615
    if-eqz v4, :cond_6

    .line 616
    const-string v2, "RestTemplate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] as \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" using ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_5
    :goto_1
    invoke-interface {v0, v1, v4, p1}, Lorg/b/c/b/f;->a(Ljava/lang/Object;Lorg/b/c/k;Lorg/b/c/g;)V

    goto :goto_0

    .line 620
    :cond_6
    const-string v2, "RestTemplate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] using ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 628
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not write request: no suitable HttpMessageConverter found for request type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    if-eqz v4, :cond_8

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and content type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    :cond_8
    new-instance v1, Lorg/b/e/a/j;

    invoke-direct {v1, v0}, Lorg/b/e/a/j;-><init>(Ljava/lang/String;)V

    throw v1
.end method
