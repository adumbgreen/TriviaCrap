.class public Lorg/b/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/b/c/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/b/c/k;

.field public static final b:Lorg/b/c/k;

.field public static final c:Lorg/b/c/k;

.field public static final d:Lorg/b/c/k;

.field public static final e:Lorg/b/c/k;

.field public static final f:Lorg/b/c/k;

.field public static final g:Lorg/b/c/k;

.field public static final h:Lorg/b/c/k;

.field public static final i:Lorg/b/c/k;

.field public static final j:Lorg/b/c/k;

.field public static final k:Lorg/b/c/k;

.field public static final l:Lorg/b/c/k;

.field public static final m:Lorg/b/c/k;

.field public static final n:Lorg/b/c/k;

.field public static final o:Lorg/b/c/k;

.field public static final p:Lorg/b/c/k;

.field public static final q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/b/c/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/b/c/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Ljava/util/BitSet;


# instance fields
.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x80

    .line 232
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    .line 233
    :goto_0
    const/16 v3, 0x1f

    if-gt v0, v3, :cond_0

    .line 234
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const/16 v0, 0x7f

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 238
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 239
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 240
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 241
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 242
    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 243
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 244
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 245
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 246
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 247
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 248
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 249
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 250
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 251
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 252
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 253
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 254
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 255
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 256
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 257
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 259
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lorg/b/c/k;->s:Ljava/util/BitSet;

    .line 260
    sget-object v3, Lorg/b/c/k;->s:Ljava/util/BitSet;

    invoke-virtual {v3, v1, v4}, Ljava/util/BitSet;->set(II)V

    .line 261
    sget-object v1, Lorg/b/c/k;->s:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 262
    sget-object v1, Lorg/b/c/k;->s:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 264
    const-string v0, "*/*"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->a:Lorg/b/c/k;

    .line 265
    const-string v0, "application/atom+xml"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->b:Lorg/b/c/k;

    .line 266
    const-string v0, "application/rss+xml"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->c:Lorg/b/c/k;

    .line 267
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->d:Lorg/b/c/k;

    .line 268
    const-string v0, "application/json"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->e:Lorg/b/c/k;

    .line 269
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->f:Lorg/b/c/k;

    .line 270
    const-string v0, "application/xhtml+xml"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->g:Lorg/b/c/k;

    .line 271
    const-string v0, "application/xml"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->h:Lorg/b/c/k;

    .line 272
    const-string v0, "application/*+xml"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->i:Lorg/b/c/k;

    .line 273
    const-string v0, "image/gif"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->j:Lorg/b/c/k;

    .line 274
    const-string v0, "image/jpeg"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->k:Lorg/b/c/k;

    .line 275
    const-string v0, "image/png"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->l:Lorg/b/c/k;

    .line 276
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->m:Lorg/b/c/k;

    .line 277
    const-string v0, "text/html"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->n:Lorg/b/c/k;

    .line 278
    const-string v0, "text/plain"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->o:Lorg/b/c/k;

    .line 279
    const-string v0, "text/xml"

    invoke-static {v0}, Lorg/b/c/k;->b(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    sput-object v0, Lorg/b/c/k;->p:Lorg/b/c/k;

    .line 799
    new-instance v0, Lorg/b/c/k$1;

    invoke-direct {v0}, Lorg/b/c/k$1;-><init>()V

    sput-object v0, Lorg/b/c/k;->q:Ljava/util/Comparator;

    .line 836
    new-instance v0, Lorg/b/c/k$2;

    invoke-direct {v0}, Lorg/b/c/k$2;-><init>()V

    sput-object v0, Lorg/b/c/k;->r:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    const-string v0, "charset"

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const-string v0, "\'type\' must not be empty"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "\'subtype\' must not be empty"

    invoke-static {p2, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, p1}, Lorg/b/c/k;->d(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, p2}, Lorg/b/c/k;->d(Ljava/lang/String;)V

    .line 352
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/k;->t:Ljava/lang/String;

    .line 353
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    .line 354
    invoke-static {p3}, Lorg/b/d/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    new-instance v2, Lorg/b/d/f;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Lorg/b/d/f;-><init>(ILjava/util/Locale;)V

    .line 356
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    invoke-direct {p0, v1, v0}, Lorg/b/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 362
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    .line 366
    :goto_1
    return-void

    .line 364
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/b/c/k;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c/k;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p1}, Lorg/b/c/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/b/c/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 338
    return-void
.end method

.method public static a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/b/c/k;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/k;

    .line 727
    invoke-direct {v0, v1}, Lorg/b/c/k;->a(Ljava/lang/StringBuilder;)V

    .line 728
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 732
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 383
    const-string v0, "parameter attribute must not be empty"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "parameter value must not be empty"

    invoke-static {p2, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, p1}, Lorg/b/c/k;->d(Ljava/lang/String;)V

    .line 386
    const-string v0, "q"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    invoke-direct {p0, p2}, Lorg/b/c/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 389
    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    const-wide/high16 v4, 0x3ff0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid quality value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": should be between 0.0 and 1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/b/d/a;->a(ZLjava/lang/String;)V

    .line 396
    :cond_0
    :goto_1
    return-void

    .line 389
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    :cond_2
    const-string v0, "charset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    invoke-direct {p0, p2}, Lorg/b/c/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    goto :goto_1

    .line 393
    :cond_3
    invoke-direct {p0, p2}, Lorg/b/c/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-direct {p0, p2}, Lorg/b/c/k;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 625
    iget-object v0, p0, Lorg/b/c/k;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    iget-object v0, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v0, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/b/c/k;->a(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 629
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 761
    const-string v0, "\'mediaTypes\' must not be null"

    invoke-static {p0, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 763
    sget-object v0, Lorg/b/c/k;->q:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 765
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 632
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 633
    const/16 v1, 0x3b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const/16 v1, 0x3d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 638
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Lorg/b/c/k;
    .locals 1
    .parameter

    .prologue
    .line 646
    invoke-static {p0}, Lorg/b/c/k;->c(Ljava/lang/String;)Lorg/b/c/k;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lorg/b/c/k;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 656
    const-string v0, "\'mediaType\' must not be empty"

    invoke-static {p0, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v0, ";"

    invoke-static {p0, v0}, Lorg/b/d/j;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 659
    aget-object v0, v3, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 661
    const-string v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    const-string v0, "*/*"

    .line 664
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 665
    if-ne v2, v10, :cond_1

    .line 666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not contain \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_2

    .line 669
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not contain subtype after \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_2
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 672
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 673
    const-string v0, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A wildcard type is legal only in \'*/*\' (all media types)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_3
    const/4 v0, 0x0

    .line 678
    array-length v2, v3

    if-le v2, v1, :cond_6

    .line 679
    new-instance v2, Ljava/util/LinkedHashMap;

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v0, v1

    .line 680
    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 681
    aget-object v1, v3, v0

    .line 682
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 683
    if-eq v6, v10, :cond_4

    .line 684
    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 685
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 691
    :cond_6
    new-instance v1, Lorg/b/c/k;

    invoke-direct {v1, v4, v5, v0}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method static synthetic d(Lorg/b/c/k;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 374
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 375
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 376
    sget-object v2, Lorg/b/c/k;->s:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid token character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in token \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 399
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 403
    if-nez p1, :cond_1

    .line 404
    const/4 p1, 0x0

    .line 406
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/b/c/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/b/c/k;->t:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/b/c/k;)Z
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x2b

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 491
    if-nez p1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 494
    :cond_1
    invoke-virtual {p0}, Lorg/b/c/k;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 496
    goto :goto_0

    .line 497
    :cond_2
    iget-object v2, p0, Lorg/b/c/k;->t:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/c/k;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/b/c/k;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 499
    goto :goto_0

    .line 502
    :cond_4
    iget-object v2, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 503
    iget-object v3, p1, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 504
    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    .line 505
    iget-object v4, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 506
    iget-object v5, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 507
    iget-object v5, p1, Lorg/b/c/k;->u:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 509
    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 420
    const-string v0, "*"

    iget-object v1, p0, Lorg/b/c/k;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lorg/b/c/k;)Z
    .locals 7
    .parameter

    .prologue
    const/16 v5, 0x2b

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 526
    if-nez p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 529
    :cond_1
    invoke-virtual {p0}, Lorg/b/c/k;->b()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/b/c/k;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 530
    goto :goto_0

    .line 531
    :cond_3
    iget-object v2, p0, Lorg/b/c/k;->t:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/c/k;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lorg/b/c/k;->d()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/b/c/k;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 533
    goto :goto_0

    .line 536
    :cond_5
    iget-object v2, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 537
    iget-object v3, p1, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 538
    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    .line 539
    iget-object v4, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 540
    iget-object v5, p1, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 542
    iget-object v6, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 543
    iget-object v6, p1, Lorg/b/c/k;->u:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    .line 546
    goto :goto_0
.end method

.method public c(Lorg/b/c/k;)I
    .locals 5
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lorg/b/c/k;->t:Ljava/lang/String;

    iget-object v1, p1, Lorg/b/c/k;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 560
    if-eqz v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v0

    .line 563
    :cond_1
    iget-object v0, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    iget-object v1, p1, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 564
    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p1, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 568
    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 572
    iget-object v1, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 573
    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 574
    iget-object v2, p1, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 575
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 576
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 577
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 578
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 579
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    .line 581
    if-eqz v2, :cond_3

    move v0, v2

    .line 582
    goto :goto_0

    .line 584
    :cond_3
    iget-object v2, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    iget-object v2, p1, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 586
    if-nez v1, :cond_4

    .line 587
    const-string v1, ""

    .line 589
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 590
    if-eqz v0, :cond_2

    goto :goto_0

    .line 594
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    check-cast p1, Lorg/b/c/k;

    invoke-virtual {p0, p1}, Lorg/b/c/k;->c(Lorg/b/c/k;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 435
    const-string v0, "*"

    iget-object v1, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 452
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lorg/b/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/b/c/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    if-ne p0, p1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    instance-of v2, p1, Lorg/b/c/k;

    if-nez v2, :cond_2

    move v0, v1

    .line 603
    goto :goto_0

    .line 605
    :cond_2
    check-cast p1, Lorg/b/c/k;

    .line 606
    iget-object v2, p0, Lorg/b/c/k;->t:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/c/k;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    iget-object v3, p1, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public f()D
    .locals 2

    .prologue
    .line 461
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lorg/b/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/b/c/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lorg/b/c/k;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 612
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/b/c/k;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 613
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/b/c/k;->v:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 614
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    invoke-direct {p0, v0}, Lorg/b/c/k;->a(Ljava/lang/StringBuilder;)V

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
