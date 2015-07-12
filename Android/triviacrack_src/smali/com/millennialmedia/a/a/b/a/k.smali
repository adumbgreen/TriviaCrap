.class public final Lcom/millennialmedia/a/a/b/a/k;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/a/a/s",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/millennialmedia/a/a/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/q",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/a/a/b/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/millennialmedia/a/a/b/q;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/b/q",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/a/a/b/a/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/k;->a:Lcom/millennialmedia/a/a/b/q;

    .line 189
    iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/k;->b:Ljava/util/Map;

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/a/a/b/q;Ljava/util/Map;Lcom/millennialmedia/a/a/b/a/j$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/k;-><init>(Lcom/millennialmedia/a/a/b/q;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 225
    if-nez p2, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 242
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->d()Lcom/millennialmedia/a/a/d/c;

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/b/a/l;

    .line 233
    iget-boolean v2, v0, Lcom/millennialmedia/a/a/b/a/l;->h:Z

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, v0, Lcom/millennialmedia/a/a/b/a/l;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 235
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/b/a/l;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 241
    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->e()Lcom/millennialmedia/a/a/d/c;

    goto :goto_0
.end method

.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 197
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/k;->a:Lcom/millennialmedia/a/a/b/q;

    invoke-interface {v0}, Lcom/millennialmedia/a/a/b/q;->a()Ljava/lang/Object;

    move-result-object v1

    .line 203
    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V

    .line 204
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/k;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/b/a/l;

    .line 207
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/millennialmedia/a/a/b/a/l;->i:Z

    if-nez v2, :cond_2

    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->n()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Lcom/millennialmedia/a/a/q;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 210
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/a/a/b/a/l;->a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 215
    :catch_1
    move-exception v0

    .line 216
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 218
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V

    move-object v0, v1

    .line 219
    goto :goto_0
.end method
