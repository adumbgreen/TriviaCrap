.class public Lorg/b/c/a;
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
        "Lorg/b/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/b/c/a;

.field public static final b:Lorg/b/c/a;

.field public static final c:Lorg/b/c/a;

.field public static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/b/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/BitSet;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
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

    .line 88
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    .line 89
    :goto_0
    const/16 v3, 0x1f

    if-gt v0, v3, :cond_0

    .line 90
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/16 v0, 0x7f

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 94
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 95
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 96
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 97
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 98
    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 99
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 100
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 101
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 102
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 103
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 104
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 105
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 106
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 107
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 108
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 109
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 110
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 111
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 112
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 113
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 115
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lorg/b/c/a;->e:Ljava/util/BitSet;

    .line 116
    sget-object v3, Lorg/b/c/a;->e:Ljava/util/BitSet;

    invoke-virtual {v3, v1, v4}, Ljava/util/BitSet;->set(II)V

    .line 117
    sget-object v1, Lorg/b/c/a;->e:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 118
    sget-object v1, Lorg/b/c/a;->e:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 120
    const-string v0, "*"

    invoke-static {v0}, Lorg/b/c/a;->b(Ljava/lang/String;)Lorg/b/c/a;

    move-result-object v0

    sput-object v0, Lorg/b/c/a;->a:Lorg/b/c/a;

    .line 121
    const-string v0, "identity"

    invoke-static {v0}, Lorg/b/c/a;->b(Ljava/lang/String;)Lorg/b/c/a;

    move-result-object v0

    sput-object v0, Lorg/b/c/a;->b:Lorg/b/c/a;

    .line 122
    const-string v0, "gzip"

    invoke-static {v0}, Lorg/b/c/a;->b(Ljava/lang/String;)Lorg/b/c/a;

    move-result-object v0

    sput-object v0, Lorg/b/c/a;->c:Lorg/b/c/a;

    .line 461
    new-instance v0, Lorg/b/c/a$1;

    invoke-direct {v0}, Lorg/b/c/a$1;-><init>()V

    sput-object v0, Lorg/b/c/a;->d:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-string v0, "\'type\' must not be empty"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lorg/b/c/a;->e(Ljava/lang/String;)V

    .line 154
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/a;->f:Ljava/lang/String;

    .line 155
    invoke-static {p2}, Lorg/b/d/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    new-instance v2, Lorg/b/d/f;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Lorg/b/d/f;-><init>(ILjava/util/Locale;)V

    .line 157
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-direct {p0, v1, v0}, Lorg/b/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v0}, Lorg/b/c/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/a;->g:Ljava/util/Map;

    .line 167
    :goto_1
    return-void

    .line 165
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/a;->g:Ljava/util/Map;

    goto :goto_1
.end method

.method public static a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/b/c/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/a;

    .line 426
    invoke-direct {v0, v1}, Lorg/b/c/a;->a(Ljava/lang/StringBuilder;)V

    .line 427
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 431
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
    .line 184
    const-string v0, "parameter attribute must not be empty"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "parameter value must not be empty"

    invoke-static {p2, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Lorg/b/c/a;->e(Ljava/lang/String;)V

    .line 187
    const-string v0, "q"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-direct {p0, p2}, Lorg/b/c/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 190
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

    .line 194
    :cond_0
    :goto_1
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0, p2}, Lorg/b/c/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0, p2}, Lorg/b/c/a;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lorg/b/c/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v0, p0, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/b/c/a;->a(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 348
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
    .line 351
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

    .line 352
    const/16 v1, 0x3b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/16 v1, 0x3d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Lorg/b/c/a;
    .locals 1
    .parameter

    .prologue
    .line 364
    invoke-static {p0}, Lorg/b/c/a;->c(Ljava/lang/String;)Lorg/b/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lorg/b/c/a;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 374
    const-string v1, "\'codingType\' must not be empty"

    invoke-static {p0, v1}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, ";"

    invoke-static {p0, v1}, Lorg/b/d/j;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 376
    aget-object v1, v2, v8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 378
    const/4 v1, 0x0

    .line 379
    array-length v4, v2

    if-le v4, v0, :cond_2

    .line 380
    new-instance v1, Ljava/util/LinkedHashMap;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 381
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 382
    aget-object v4, v2, v0

    .line 383
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 384
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 385
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 386
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 392
    :goto_1
    new-instance v1, Lorg/b/c/a;

    invoke-direct {v1, v3, v0}, Lorg/b/c/a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {p0}, Lorg/b/d/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 413
    :cond_0
    return-object v0

    .line 408
    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 411
    invoke-static {v4}, Lorg/b/c/a;->c(Ljava/lang/String;)Lorg/b/c/a;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 177
    sget-object v2, Lorg/b/c/a;->e:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
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

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 197
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

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 201
    if-nez p1, :cond_1

    .line 202
    const/4 p1, 0x0

    .line 204
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/b/c/a;->f(Ljava/lang/String;)Z

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
.method public a(Lorg/b/c/a;)I
    .locals 5
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lorg/b/c/a;->f:Ljava/lang/String;

    iget-object v1, p1, Lorg/b/c/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 286
    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p1, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 290
    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 294
    iget-object v1, p0, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 295
    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 296
    iget-object v2, p1, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 298
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 299
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 300
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    .line 303
    if-eqz v2, :cond_3

    move v0, v2

    .line 304
    goto :goto_0

    .line 306
    :cond_3
    iget-object v2, p0, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    iget-object v2, p1, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    if-nez v1, :cond_4

    .line 309
    const-string v1, ""

    .line 311
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 312
    if-eqz v0, :cond_2

    goto :goto_0

    .line 316
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/b/c/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 218
    const-string v0, "*"

    iget-object v1, p0, Lorg/b/c/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 226
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lorg/b/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    check-cast p1, Lorg/b/c/a;

    invoke-virtual {p0, p1}, Lorg/b/c/a;->a(Lorg/b/c/a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    if-ne p0, p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    instance-of v2, p1, Lorg/b/c/a;

    if-nez v2, :cond_2

    move v0, v1

    .line 325
    goto :goto_0

    .line 327
    :cond_2
    check-cast p1, Lorg/b/c/a;

    .line 328
    iget-object v2, p0, Lorg/b/c/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/c/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/b/c/a;->g:Ljava/util/Map;

    iget-object v3, p1, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/b/c/a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 334
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/b/c/a;->g:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    invoke-direct {p0, v0}, Lorg/b/c/a;->a(Ljava/lang/StringBuilder;)V

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
