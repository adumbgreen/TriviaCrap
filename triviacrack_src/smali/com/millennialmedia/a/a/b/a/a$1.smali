.class final Lcom/millennialmedia/a/a/b/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/b/a/a;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/a/a/e;",
            "Lcom/millennialmedia/a/a/c/a",
            "<TT;>;)",
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 47
    instance-of v0, v1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_1
    invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v2

    .line 55
    new-instance v0, Lcom/millennialmedia/a/a/b/a/a;

    invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/millennialmedia/a/a/b/a/a;-><init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/s;Ljava/lang/Class;)V

    goto :goto_0
.end method
