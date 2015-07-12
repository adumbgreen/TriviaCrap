.class public Lorg/b/e/a/k;
.super Lorg/b/c/a/a/b;
.source "SourceFile"


# instance fields
.field private final a:Lorg/b/e/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/e/a/i",
            "<",
            "Lorg/b/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/c/b/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field private c:Lorg/b/e/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/b/e/a/k;-><init>(Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/b/c/a/a/b;-><init>()V

    .line 144
    new-instance v0, Lorg/b/e/a/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/b/e/a/n;-><init>(Lorg/b/e/a/k$1;)V

    iput-object v0, p0, Lorg/b/e/a/k;->a:Lorg/b/e/a/i;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/b/e/a/k;->b:Ljava/util/List;

    .line 148
    new-instance v0, Lorg/b/e/a/a;

    invoke-direct {v0}, Lorg/b/e/a/a;-><init>()V

    iput-object v0, p0, Lorg/b/e/a/k;->c:Lorg/b/e/a/h;

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lorg/b/e/a/k;->b:Ljava/util/List;

    invoke-static {v0}, Lorg/b/e/a/m;->a(Ljava/util/List;)V

    .line 173
    :cond_0
    return-void
.end method

.method private a(Lorg/b/c/f;Ljava/net/URI;Lorg/b/c/a/i;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    const-string v0, "RestTemplate"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    :try_start_0
    const-string v0, "RestTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/b/c/f;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" resulted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/b/c/a/i;->a()Lorg/b/c/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/b/c/a/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lorg/b/c/f;Ljava/net/URI;Lorg/b/c/a/i;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    const-string v0, "RestTemplate"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :try_start_0
    const-string v0, "RestTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/b/c/f;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" resulted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/b/c/a/i;->a()Lorg/b/c/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/b/c/a/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); invoking error handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/b/e/a/k;->d()Lorg/b/e/a/h;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/b/e/a/h;->a(Lorg/b/c/a/i;)V

    .line 525
    return-void

    .line 520
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/e/a/f;Lorg/b/e/a/i;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/b/c/f;",
            "Lorg/b/e/a/f;",
            "Lorg/b/e/a/i",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Lorg/b/e/a/p;

    invoke-direct {v0, p1}, Lorg/b/e/a/p;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0, p5}, Lorg/b/e/b/k;->a(Ljava/util/Map;)Ljava/net/URI;

    move-result-object v0

    .line 447
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/b/e/a/k;->a(Ljava/net/URI;Lorg/b/c/f;Lorg/b/e/a/f;Lorg/b/e/a/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/e/a/f;Lorg/b/e/a/i;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/b/c/f;",
            "Lorg/b/e/a/f;",
            "Lorg/b/e/a/i",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lorg/b/e/a/p;

    invoke-direct {v0, p1}, Lorg/b/e/a/p;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, p5}, Lorg/b/e/b/k;->a([Ljava/lang/Object;)Ljava/net/URI;

    move-result-object v0

    .line 439
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/b/e/a/k;->a(Ljava/net/URI;Lorg/b/c/f;Lorg/b/e/a/f;Lorg/b/e/a/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/net/URI;Lorg/b/c/f;Lorg/b/e/a/f;Lorg/b/e/a/i;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lorg/b/c/f;",
            "Lorg/b/e/a/f;",
            "Lorg/b/e/a/i",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 468
    const-string v1, "\'url\' must not be null"

    invoke-static {p1, v1}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    const-string v1, "\'method\' must not be null"

    invoke-static {p2, v1}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/b/e/a/k;->a(Ljava/net/URI;Lorg/b/c/f;)Lorg/b/c/a/e;

    move-result-object v1

    .line 473
    if-eqz p3, :cond_0

    .line 474
    invoke-interface {p3, v1}, Lorg/b/e/a/f;->a(Lorg/b/c/a/e;)V

    .line 476
    :cond_0
    invoke-interface {v1}, Lorg/b/c/a/e;->e()Lorg/b/c/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 477
    :try_start_1
    invoke-virtual {p0}, Lorg/b/e/a/k;->d()Lorg/b/e/a/h;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/b/e/a/h;->b(Lorg/b/c/a/i;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 478
    invoke-direct {p0, p2, p1, v1}, Lorg/b/e/a/k;->a(Lorg/b/c/f;Ljava/net/URI;Lorg/b/c/a/i;)V

    .line 483
    :goto_0
    if-eqz p4, :cond_4

    .line 484
    invoke-interface {p4, v1}, Lorg/b/e/a/i;->a(Lorg/b/c/a/i;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 494
    if-eqz v1, :cond_1

    .line 495
    invoke-interface {v1}, Lorg/b/c/a/i;->f()V

    :cond_1
    :goto_1
    return-object v0

    .line 481
    :cond_2
    :try_start_2
    invoke-direct {p0, p2, p1, v1}, Lorg/b/e/a/k;->b(Lorg/b/c/f;Ljava/net/URI;Lorg/b/c/a/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    :goto_2
    :try_start_3
    new-instance v2, Lorg/b/e/a/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/b/e/a/g;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 494
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    .line 495
    invoke-interface {v1}, Lorg/b/c/a/i;->f()V

    :cond_3
    throw v0

    .line 494
    :cond_4
    if-eqz v1, :cond_1

    .line 495
    invoke-interface {v1}, Lorg/b/c/a/i;->f()V

    goto :goto_1

    .line 494
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 490
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/b/c/f;",
            "Lorg/b/c/b",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/b/c/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v3, Lorg/b/e/a/o;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p3, p4, v0}, Lorg/b/e/a/o;-><init>(Lorg/b/e/a/k;Ljava/lang/Object;Ljava/lang/Class;Lorg/b/e/a/k$1;)V

    .line 421
    new-instance v4, Lorg/b/e/a/q;

    invoke-direct {v4, p0, p4}, Lorg/b/e/a/q;-><init>(Lorg/b/e/a/k;Ljava/lang/Class;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 422
    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/e/a/f;Lorg/b/e/a/i;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/l;

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/b/c/l;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/b/c/f;",
            "Lorg/b/c/b",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/b/c/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v3, Lorg/b/e/a/o;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p3, p4, v0}, Lorg/b/e/a/o;-><init>(Lorg/b/e/a/k;Ljava/lang/Object;Ljava/lang/Class;Lorg/b/e/a/k$1;)V

    .line 414
    new-instance v4, Lorg/b/e/a/q;

    invoke-direct {v4, p0, p4}, Lorg/b/e/a/q;-><init>(Lorg/b/e/a/k;Ljava/lang/Class;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 415
    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/e/a/f;Lorg/b/e/a/i;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/l;

    return-object v0
.end method

.method public a(Lorg/b/e/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    const-string v0, "\'errorHandler\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lorg/b/e/a/k;->c:Lorg/b/e/a/h;

    .line 223
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/b/f",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/b/e/a/k;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()Lorg/b/e/a/h;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/b/e/a/k;->c:Lorg/b/e/a/h;

    return-object v0
.end method
