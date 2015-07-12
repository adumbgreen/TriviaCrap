.class final Lcom/millennialmedia/a/a/b/a/c;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/millennialmedia/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/s",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/millennialmedia/a/a/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/q",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/a/a/e;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/s;Lcom/millennialmedia/a/a/b/q;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/e;",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/a/a/s",
            "<TE;>;",
            "Lcom/millennialmedia/a/a/b/q",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    .line 79
    new-instance v0, Lcom/millennialmedia/a/a/b/a/o;

    invoke-direct {v0, p1, p3, p2}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/s;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/c;->a:Lcom/millennialmedia/a/a/s;

    .line 81
    iput-object p4, p0, Lcom/millennialmedia/a/a/b/a/c;->b:Lcom/millennialmedia/a/a/b/q;

    .line 82
    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/a;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 88
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/c;->b:Lcom/millennialmedia/a/a/b/q;

    invoke-interface {v0}, Lcom/millennialmedia/a/a/b/q;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 92
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V

    .line 93
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/c;->a:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/c;->a(Lcom/millennialmedia/a/a/d/c;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/c;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->b()Lcom/millennialmedia/a/a/d/c;

    .line 110
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/c;->a:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v2, p1, v1}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->c()Lcom/millennialmedia/a/a/d/c;

    goto :goto_0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/c;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
