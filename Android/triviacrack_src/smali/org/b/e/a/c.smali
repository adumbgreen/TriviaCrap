.class public Lorg/b/e/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/e/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/b/e/a/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/c/b/f",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/b/f",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "\'responseType\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v0, "\'messageConverters\' must not be empty"

    invoke-static {p2, v0}, Lorg/b/d/a;->a(Ljava/util/Collection;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lorg/b/e/a/c;->a:Ljava/lang/Class;

    .line 55
    iput-object p2, p0, Lorg/b/e/a/c;->b:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/a/i;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c/a/i;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 60
    invoke-virtual {p0, p1}, Lorg/b/e/a/c;->b(Lorg/b/c/a/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-interface {p1}, Lorg/b/c/a/i;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    const-string v0, "RestTemplate"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "RestTemplate"

    const-string v1, "No Content-Type header found, defaulting to application/octet-stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    sget-object v0, Lorg/b/c/k;->f:Lorg/b/c/k;

    move-object v1, v0

    .line 70
    :goto_1
    iget-object v0, p0, Lorg/b/e/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/b/f;

    .line 71
    iget-object v3, p0, Lorg/b/e/a/c;->a:Ljava/lang/Class;

    invoke-interface {v0, v3, v1}, Lorg/b/c/b/f;->a(Ljava/lang/Class;Lorg/b/c/k;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    const-string v2, "RestTemplate"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    const-string v2, "RestTemplate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/b/e/a/c;->a:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] as \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" using ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_3
    iget-object v1, p0, Lorg/b/e/a/c;->a:Ljava/lang/Class;

    invoke-interface {v0, v1, p1}, Lorg/b/c/b/f;->a(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_4
    new-instance v0, Lorg/b/e/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not extract response: no suitable HttpMessageConverter found for response type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/b/e/a/c;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and content type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/b/e/a/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, v0

    goto/16 :goto_1
.end method

.method protected b(Lorg/b/c/a/i;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-interface {p1}, Lorg/b/c/a/i;->a()Lorg/b/c/i;

    move-result-object v1

    .line 96
    sget-object v2, Lorg/b/c/i;->i:Lorg/b/c/i;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/b/c/i;->t:Lorg/b/c/i;

    if-ne v1, v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-interface {p1}, Lorg/b/c/a/i;->d()Lorg/b/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/b/c/c;->b()J

    move-result-wide v1

    .line 100
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
