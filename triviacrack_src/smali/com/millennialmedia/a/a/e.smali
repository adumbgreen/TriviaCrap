.class public final Lcom/millennialmedia/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/millennialmedia/a/a/i;

.field final b:Lcom/millennialmedia/a/a/p;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/a/a/c/a",
            "<*>;",
            "Lcom/millennialmedia/a/a/f",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/a/a/c/a",
            "<*>;",
            "Lcom/millennialmedia/a/a/s",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/a/a/t;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/millennialmedia/a/a/b/f;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 211
    sget-object v1, Lcom/millennialmedia/a/a/b/g;->a:Lcom/millennialmedia/a/a/b/g;

    sget-object v2, Lcom/millennialmedia/a/a/c;->a:Lcom/millennialmedia/a/a/c;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/millennialmedia/a/a/r;->a:Lcom/millennialmedia/a/a/r;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/millennialmedia/a/a/e;-><init>(Lcom/millennialmedia/a/a/b/g;Lcom/millennialmedia/a/a/d;Ljava/util/Map;ZZZZZZLcom/millennialmedia/a/a/r;Ljava/util/List;)V

    .line 216
    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/a/a/b/g;Lcom/millennialmedia/a/a/d;Ljava/util/Map;ZZZZZZLcom/millennialmedia/a/a/r;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
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
            "Lcom/millennialmedia/a/a/b/g;",
            "Lcom/millennialmedia/a/a/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/a/a/g",
            "<*>;>;ZZZZZZ",
            "Lcom/millennialmedia/a/a/r;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/a/a/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/a/a/e;->c:Ljava/lang/ThreadLocal;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/e;->d:Ljava/util/Map;

    .line 140
    new-instance v0, Lcom/millennialmedia/a/a/e$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/e$1;-><init>(Lcom/millennialmedia/a/a/e;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/e;->a:Lcom/millennialmedia/a/a/i;

    .line 150
    new-instance v0, Lcom/millennialmedia/a/a/e$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/e$2;-><init>(Lcom/millennialmedia/a/a/e;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/e;->b:Lcom/millennialmedia/a/a/p;

    .line 226
    new-instance v0, Lcom/millennialmedia/a/a/b/f;

    invoke-direct {v0, p3}, Lcom/millennialmedia/a/a/b/f;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/e;->f:Lcom/millennialmedia/a/a/b/f;

    .line 228
    iput-boolean p4, p0, Lcom/millennialmedia/a/a/e;->g:Z

    .line 229
    iput-boolean p6, p0, Lcom/millennialmedia/a/a/e;->i:Z

    .line 230
    iput-boolean p7, p0, Lcom/millennialmedia/a/a/e;->h:Z

    .line 231
    iput-boolean p8, p0, Lcom/millennialmedia/a/a/e;->j:Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->Q:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v1, Lcom/millennialmedia/a/a/b/a/i;->a:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->x:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->m:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->g:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->i:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->k:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/r;)Lcom/millennialmedia/a/a/s;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/a/a/s;)Lcom/millennialmedia/a/a/t;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/millennialmedia/a/a/e;->a(Z)Lcom/millennialmedia/a/a/s;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/a/a/s;)Lcom/millennialmedia/a/a/t;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/millennialmedia/a/a/e;->b(Z)Lcom/millennialmedia/a/a/s;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/a/a/s;)Lcom/millennialmedia/a/a/t;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->r:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->t:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->z:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->B:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/millennialmedia/a/a/b/a/p;->v:Lcom/millennialmedia/a/a/s;

    invoke-static {v1, v2}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Lcom/millennialmedia/a/a/s;)Lcom/millennialmedia/a/a/t;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/millennialmedia/a/a/b/a/p;->w:Lcom/millennialmedia/a/a/s;

    invoke-static {v1, v2}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Lcom/millennialmedia/a/a/s;)Lcom/millennialmedia/a/a/t;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->D:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->F:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->J:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->O:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->H:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->d:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v1, Lcom/millennialmedia/a/a/b/a/d;->a:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->M:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v1, Lcom/millennialmedia/a/a/b/a/n;->a:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v1, Lcom/millennialmedia/a/a/b/a/m;->a:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->K:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v1, Lcom/millennialmedia/a/a/b/a/a;->a:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->R:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->b:Lcom/millennialmedia/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v1, Lcom/millennialmedia/a/a/b/a/b;

    iget-object v2, p0, Lcom/millennialmedia/a/a/e;->f:Lcom/millennialmedia/a/a/b/f;

    invoke-direct {v1, v2}, Lcom/millennialmedia/a/a/b/a/b;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v1, Lcom/millennialmedia/a/a/b/a/g;

    iget-object v2, p0, Lcom/millennialmedia/a/a/e;->f:Lcom/millennialmedia/a/a/b/f;

    invoke-direct {v1, v2, p5}, Lcom/millennialmedia/a/a/b/a/g;-><init>(Lcom/millennialmedia/a/a/b/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v1, Lcom/millennialmedia/a/a/b/a/j;

    iget-object v2, p0, Lcom/millennialmedia/a/a/e;->f:Lcom/millennialmedia/a/a/b/f;

    invoke-direct {v1, v2, p2, p1}, Lcom/millennialmedia/a/a/b/a/j;-><init>(Lcom/millennialmedia/a/a/b/f;Lcom/millennialmedia/a/a/d;Lcom/millennialmedia/a/a/b/g;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/e;->e:Ljava/util/List;

    .line 288
    return-void
.end method

.method private a(Ljava/io/Writer;)Lcom/millennialmedia/a/a/d/c;
    .locals 2
    .parameter

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/e;->i:Z

    if-eqz v0, :cond_0

    .line 802
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 804
    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/d/c;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/d/c;-><init>(Ljava/io/Writer;)V

    .line 805
    iget-boolean v1, p0, Lcom/millennialmedia/a/a/e;->j:Z

    if-eqz v1, :cond_1

    .line 806
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/d/c;->c(Ljava/lang/String;)V

    .line 808
    :cond_1
    iget-boolean v1, p0, Lcom/millennialmedia/a/a/e;->g:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/d/c;->d(Z)V

    .line 809
    return-object v0
.end method

.method private a(Lcom/millennialmedia/a/a/r;)Lcom/millennialmedia/a/a/s;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/r;",
            ")",
            "Lcom/millennialmedia/a/a/s",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    sget-object v0, Lcom/millennialmedia/a/a/r;->a:Lcom/millennialmedia/a/a/r;

    if-ne p1, v0, :cond_0

    .line 368
    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->n:Lcom/millennialmedia/a/a/s;

    .line 370
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/e$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/e$5;-><init>(Lcom/millennialmedia/a/a/e;)V

    goto :goto_0
.end method

.method private a(Z)Lcom/millennialmedia/a/a/s;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/millennialmedia/a/a/s",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->p:Lcom/millennialmedia/a/a/s;

    .line 296
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/e$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/e$3;-><init>(Lcom/millennialmedia/a/a/e;)V

    goto :goto_0
.end method

.method private a(D)V
    .locals 3
    .parameter

    .prologue
    .line 356
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/a/a/e;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/a/a/e;->a(D)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/millennialmedia/a/a/d/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 991
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->j:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    .line 992
    new-instance v0, Lcom/millennialmedia/a/a/k;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/k;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/millennialmedia/a/a/d/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 995
    :catch_0
    move-exception v0

    .line 996
    new-instance v1, Lcom/millennialmedia/a/a/q;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 997
    :catch_1
    move-exception v0

    .line 998
    new-instance v1, Lcom/millennialmedia/a/a/k;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1000
    :cond_0
    return-void
.end method

.method private b(Z)Lcom/millennialmedia/a/a/s;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/millennialmedia/a/a/s",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->o:Lcom/millennialmedia/a/a/s;

    .line 328
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/e$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/e$4;-><init>(Lcom/millennialmedia/a/a/e;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/a/a/c/a",
            "<TT;>;)",
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/millennialmedia/a/a/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/s;

    .line 404
    if-eqz v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-object v0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 409
    const/4 v1, 0x0

    .line 410
    if-nez v0, :cond_5

    .line 411
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 412
    iget-object v0, p0, Lcom/millennialmedia/a/a/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 413
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 417
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/f;

    .line 419
    if-nez v0, :cond_0

    .line 424
    :try_start_0
    new-instance v3, Lcom/millennialmedia/a/a/f;

    invoke-direct {v3}, Lcom/millennialmedia/a/a/f;-><init>()V

    .line 425
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/millennialmedia/a/a/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/t;

    .line 428
    invoke-interface {v0, p0, p1}, Lcom/millennialmedia/a/a/t;->a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v3, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/s;)V

    .line 431
    iget-object v3, p0, Lcom/millennialmedia/a/a/e;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/millennialmedia/a/a/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 435
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    if-eqz v1, :cond_4

    .line 440
    iget-object v1, p0, Lcom/millennialmedia/a/a/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 437
    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Lcom/millennialmedia/a/a/t;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/a/a/t;",
            "Lcom/millennialmedia/a/a/c/a",
            "<TT;>;)",
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 520
    iget-object v1, p0, Lcom/millennialmedia/a/a/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/t;

    .line 521
    if-nez v1, :cond_1

    .line 522
    if-ne v0, p1, :cond_0

    .line 523
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 528
    :cond_1
    invoke-interface {v0, p0, p2}, Lcom/millennialmedia/a/a/t;->a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_0

    .line 530
    return-object v0

    .line 533
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/s;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 544
    invoke-static {p1}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/Class;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/a/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1016
    .line 1017
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->p()Z

    move-result v2

    .line 1018
    invoke-virtual {p1, v1}, Lcom/millennialmedia/a/a/d/a;->a(Z)V

    .line 1020
    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    .line 1021
    const/4 v1, 0x0

    .line 1022
    invoke-static {p2}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    .line 1023
    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    .line 1024
    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1042
    :goto_0
    invoke-virtual {p1, v2}, Lcom/millennialmedia/a/a/d/a;->a(Z)V

    .line 1032
    return-object v0

    .line 1026
    :catch_0
    move-exception v0

    .line 1031
    if-eqz v1, :cond_0

    .line 1032
    const/4 v0, 0x0

    goto :goto_0

    .line 1034
    :cond_0
    :try_start_1
    new-instance v1, Lcom/millennialmedia/a/a/q;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1042
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/millennialmedia/a/a/d/a;->a(Z)V

    throw v0

    .line 1035
    :catch_1
    move-exception v0

    .line 1036
    :try_start_2
    new-instance v1, Lcom/millennialmedia/a/a/q;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1037
    :catch_2
    move-exception v0

    .line 1040
    new-instance v1, Lcom/millennialmedia/a/a/q;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 982
    new-instance v0, Lcom/millennialmedia/a/a/d/a;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/d/a;-><init>(Ljava/io/Reader;)V

    .line 983
    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 984
    invoke-static {v1, v0}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/Object;Lcom/millennialmedia/a/a/d/a;)V

    .line 985
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 864
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 865
    invoke-static {p2}, Lcom/millennialmedia/a/a/b/r;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 902
    if-nez p1, :cond_0

    .line 903
    const/4 v0, 0x0

    .line 907
    :goto_0
    return-object v0

    .line 905
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/a/a/e;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/millennialmedia/a/a/j;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 767
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 768
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/j;Ljava/lang/Appendable;)V

    .line 769
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    sget-object v0, Lcom/millennialmedia/a/a/l;->a:Lcom/millennialmedia/a/a/l;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/j;)Ljava/lang/String;

    move-result-object v0

    .line 625
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 654
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 655
    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 656
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/millennialmedia/a/a/j;Lcom/millennialmedia/a/a/d/c;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 821
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/d/c;->g()Z

    move-result v1

    .line 822
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/millennialmedia/a/a/d/c;->b(Z)V

    .line 823
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/d/c;->h()Z

    move-result v2

    .line 824
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/e;->h:Z

    invoke-virtual {p2, v0}, Lcom/millennialmedia/a/a/d/c;->c(Z)V

    .line 825
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/d/c;->i()Z

    move-result v3

    .line 826
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/e;->g:Z

    invoke-virtual {p2, v0}, Lcom/millennialmedia/a/a/d/c;->d(Z)V

    .line 828
    :try_start_0
    invoke-static {p1, p2}, Lcom/millennialmedia/a/a/b/s;->a(Lcom/millennialmedia/a/a/j;Lcom/millennialmedia/a/a/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    invoke-virtual {p2, v1}, Lcom/millennialmedia/a/a/d/c;->b(Z)V

    .line 833
    invoke-virtual {p2, v2}, Lcom/millennialmedia/a/a/d/c;->c(Z)V

    .line 834
    invoke-virtual {p2, v3}, Lcom/millennialmedia/a/a/d/c;->d(Z)V

    .line 836
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    :try_start_1
    new-instance v4, Lcom/millennialmedia/a/a/k;

    invoke-direct {v4, v0}, Lcom/millennialmedia/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/millennialmedia/a/a/d/c;->b(Z)V

    .line 833
    invoke-virtual {p2, v2}, Lcom/millennialmedia/a/a/d/c;->c(Z)V

    .line 834
    invoke-virtual {p2, v3}, Lcom/millennialmedia/a/a/d/c;->d(Z)V

    .line 832
    throw v0
.end method

.method public a(Lcom/millennialmedia/a/a/j;Ljava/lang/Appendable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 787
    :try_start_0
    invoke-static {p2}, Lcom/millennialmedia/a/a/b/s;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/e;->a(Ljava/io/Writer;)Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    .line 789
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/j;Lcom/millennialmedia/a/a/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/d/c;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 738
    invoke-static {p2}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    .line 739
    invoke-virtual {p3}, Lcom/millennialmedia/a/a/d/c;->g()Z

    move-result v1

    .line 740
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/millennialmedia/a/a/d/c;->b(Z)V

    .line 741
    invoke-virtual {p3}, Lcom/millennialmedia/a/a/d/c;->h()Z

    move-result v2

    .line 742
    iget-boolean v3, p0, Lcom/millennialmedia/a/a/e;->h:Z

    invoke-virtual {p3, v3}, Lcom/millennialmedia/a/a/d/c;->c(Z)V

    .line 743
    invoke-virtual {p3}, Lcom/millennialmedia/a/a/d/c;->i()Z

    move-result v3

    .line 744
    iget-boolean v4, p0, Lcom/millennialmedia/a/a/e;->g:Z

    invoke-virtual {p3, v4}, Lcom/millennialmedia/a/a/d/c;->d(Z)V

    .line 746
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    invoke-virtual {p3, v1}, Lcom/millennialmedia/a/a/d/c;->b(Z)V

    .line 751
    invoke-virtual {p3, v2}, Lcom/millennialmedia/a/a/d/c;->c(Z)V

    .line 752
    invoke-virtual {p3, v3}, Lcom/millennialmedia/a/a/d/c;->d(Z)V

    .line 754
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    :try_start_1
    new-instance v4, Lcom/millennialmedia/a/a/k;

    invoke-direct {v4, v0}, Lcom/millennialmedia/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/millennialmedia/a/a/d/c;->b(Z)V

    .line 751
    invoke-virtual {p3, v2}, Lcom/millennialmedia/a/a/d/c;->c(Z)V

    .line 752
    invoke-virtual {p3, v3}, Lcom/millennialmedia/a/a/d/c;->d(Z)V

    .line 750
    throw v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 719
    :try_start_0
    invoke-static {p3}, Lcom/millennialmedia/a/a/b/s;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/e;->a(Ljava/io/Writer;)Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    .line 721
    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    return-void

    .line 722
    :catch_0
    move-exception v0

    .line 723
    new-instance v1, Lcom/millennialmedia/a/a/k;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/millennialmedia/a/a/e;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/e;->f:Lcom/millennialmedia/a/a/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
