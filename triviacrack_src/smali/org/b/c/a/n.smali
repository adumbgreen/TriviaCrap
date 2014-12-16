.class Lorg/b/c/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/a/f;


# instance fields
.field final synthetic a:Lorg/b/c/a/m;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/b/c/a/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/b/c/a/m;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lorg/b/c/a/n;->a:Lorg/b/c/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lorg/b/c/a/m;->a(Lorg/b/c/a/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/a/n;->b:Ljava/util/Iterator;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/c/a/m;Lorg/b/c/a/m$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/b/c/a/n;-><init>(Lorg/b/c/a/m;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/h;[B)Lorg/b/c/a/i;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lorg/b/c/a/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/b/c/a/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/a/h;

    .line 81
    invoke-interface {v0, p1, p2, p0}, Lorg/b/c/a/h;->a(Lorg/b/c/h;[BLorg/b/c/a/f;)Lorg/b/c/a/i;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/b/c/a/n;->a:Lorg/b/c/a/m;

    invoke-static {v0}, Lorg/b/c/a/m;->b(Lorg/b/c/a/m;)Lorg/b/c/a/g;

    move-result-object v0

    invoke-interface {p1}, Lorg/b/c/h;->c()Ljava/net/URI;

    move-result-object v1

    invoke-interface {p1}, Lorg/b/c/h;->b()Lorg/b/c/f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/b/c/a/g;->a(Ljava/net/URI;Lorg/b/c/f;)Lorg/b/c/a/e;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Lorg/b/c/a/e;->d()Lorg/b/c/c;

    move-result-object v1

    invoke-interface {p1}, Lorg/b/c/h;->d()Lorg/b/c/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/c/c;->putAll(Ljava/util/Map;)V

    .line 88
    array-length v1, p2

    if-lez v1, :cond_1

    .line 89
    invoke-interface {v0}, Lorg/b/c/a/e;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/b/d/e;->a([BLjava/io/OutputStream;)V

    .line 91
    :cond_1
    invoke-interface {v0}, Lorg/b/c/a/e;->e()Lorg/b/c/a/i;

    move-result-object v0

    goto :goto_0
.end method
