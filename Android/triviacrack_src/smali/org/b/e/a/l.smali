.class Lorg/b/e/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/e/a/f;


# instance fields
.field final synthetic a:Lorg/b/e/a/k;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/b/e/a/k;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 534
    iput-object p1, p0, Lorg/b/e/a/l;->a:Lorg/b/e/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p2, p0, Lorg/b/e/a/l;->b:Ljava/lang/Class;

    .line 536
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/e/a/k;Ljava/lang/Class;Lorg/b/e/a/k$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-direct {p0, p1, p2}, Lorg/b/e/a/l;-><init>(Lorg/b/e/a/k;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/a/e;)V
    .locals 6
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lorg/b/e/a/l;->b:Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 541
    iget-object v0, p0, Lorg/b/e/a/l;->a:Lorg/b/e/a/k;

    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/b/f;

    .line 542
    iget-object v1, p0, Lorg/b/e/a/l;->b:Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Lorg/b/c/b/f;->a(Ljava/lang/Class;Lorg/b/c/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-interface {v0}, Lorg/b/c/b/f;->a()Ljava/util/List;

    move-result-object v0

    .line 544
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/k;

    .line 545
    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 546
    new-instance v1, Lorg/b/c/k;

    invoke-virtual {v0}, Lorg/b/c/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/b/c/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 549
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    invoke-static {v2}, Lorg/b/c/k;->a(Ljava/util/List;)V

    .line 555
    const-string v0, "RestTemplate"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    const-string v0, "RestTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting request Accept header to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_3
    invoke-interface {p1}, Lorg/b/c/a/e;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/b/c/c;->a(Ljava/util/List;)V

    .line 561
    :cond_4
    return-void
.end method
