.class final Lcom/millennialmedia/a/a/b/a/h;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/b/a/g;

.field private final b:Lcom/millennialmedia/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/s",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/millennialmedia/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/s",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/millennialmedia/a/a/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/q",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/a/a/b/a/g;Lcom/millennialmedia/a/a/e;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/s;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/s;Lcom/millennialmedia/a/a/b/q;)V
    .locals 1
    .parameter
    .parameter
    .parameter
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
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/a/a/s",
            "<TV;>;",
            "Lcom/millennialmedia/a/a/b/q",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/h;->a:Lcom/millennialmedia/a/a/b/a/g;

    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    .line 186
    new-instance v0, Lcom/millennialmedia/a/a/b/a/o;

    invoke-direct {v0, p2, p4, p3}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/s;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->b:Lcom/millennialmedia/a/a/s;

    .line 188
    new-instance v0, Lcom/millennialmedia/a/a/b/a/o;

    invoke-direct {v0, p2, p6, p5}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/s;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/s;

    .line 190
    iput-object p7, p0, Lcom/millennialmedia/a/a/b/a/h;->d:Lcom/millennialmedia/a/a/b/q;

    .line 191
    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/j;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/j;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/j;->m()Lcom/millennialmedia/a/a/o;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    .line 288
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 295
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    const-string v0, "null"

    goto :goto_0

    .line 298
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/a;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v1

    .line 196
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v1, v0, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 198
    const/4 v0, 0x0

    .line 229
    :goto_0
    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->d:Lcom/millennialmedia/a/a/b/q;

    invoke-interface {v0}, Lcom/millennialmedia/a/a/b/q;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 203
    sget-object v2, Lcom/millennialmedia/a/a/d/b;->a:Lcom/millennialmedia/a/a/d/b;

    if-ne v1, v2, :cond_3

    .line 204
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V

    .line 205
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V

    .line 207
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/h;->b:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v2, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 209
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 210
    if-eqz v2, :cond_1

    .line 211
    new-instance v0, Lcom/millennialmedia/a/a/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V

    .line 218
    :cond_4
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    sget-object v1, Lcom/millennialmedia/a/a/b/h;->a:Lcom/millennialmedia/a/a/b/h;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/a/a/b/h;->a(Lcom/millennialmedia/a/a/d/a;)V

    .line 220
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/h;->b:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v2, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_4

    .line 224
    new-instance v0, Lcom/millennialmedia/a/a/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_5
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/h;->a(Lcom/millennialmedia/a/a/d/c;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/c;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 234
    if-nez p2, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 280
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->a:Lcom/millennialmedia/a/a/b/a/g;

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a/g;->a(Lcom/millennialmedia/a/a/b/a/g;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->d()Lcom/millennialmedia/a/a/d/c;

    .line 241
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 243
    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/s;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->e()Lcom/millennialmedia/a/a/d/c;

    goto :goto_0

    .line 250
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 254
    iget-object v6, p0, Lcom/millennialmedia/a/a/b/a/h;->b:Lcom/millennialmedia/a/a/s;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/millennialmedia/a/a/s;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/j;

    move-result-object v6

    .line 256
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v6}, Lcom/millennialmedia/a/a/j;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/millennialmedia/a/a/j;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    .line 260
    goto :goto_2

    :cond_4
    move v0, v2

    .line 258
    goto :goto_3

    .line 262
    :cond_5
    if-eqz v1, :cond_7

    .line 263
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->b()Lcom/millennialmedia/a/a/d/c;

    .line 264
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 265
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->b()Lcom/millennialmedia/a/a/d/c;

    .line 266
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/j;

    invoke-static {v0, p1}, Lcom/millennialmedia/a/a/b/s;->a(Lcom/millennialmedia/a/a/j;Lcom/millennialmedia/a/a/d/c;)V

    .line 267
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/s;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->c()Lcom/millennialmedia/a/a/d/c;

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 270
    :cond_6
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->c()Lcom/millennialmedia/a/a/d/c;

    goto/16 :goto_0

    .line 272
    :cond_7
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->d()Lcom/millennialmedia/a/a/d/c;

    .line 273
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 274
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/j;

    .line 275
    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/h;->a(Lcom/millennialmedia/a/a/j;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 276
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/s;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 278
    :cond_8
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->e()Lcom/millennialmedia/a/a/d/c;

    goto/16 :goto_0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/h;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
