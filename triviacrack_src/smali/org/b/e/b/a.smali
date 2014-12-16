.class public final Lorg/b/e/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lorg/b/e/b/d;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Lorg/b/e/b/d;

.field private final h:Lorg/b/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "\\{([^/]+?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/b/e/b/a;->b:Ljava/util/regex/Pattern;

    .line 948
    new-instance v0, Lorg/b/e/b/a$1;

    invoke-direct {v0}, Lorg/b/e/b/a$1;-><init>()V

    sput-object v0, Lorg/b/e/b/a;->a:Lorg/b/e/b/d;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/b/e/b/d;Lorg/b/d/h;Ljava/lang/String;ZZ)V
    .locals 1
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lorg/b/e/b/d;",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    .line 98
    iput p4, p0, Lorg/b/e/b/a;->f:I

    .line 99
    if-eqz p5, :cond_1

    :goto_0
    iput-object p5, p0, Lorg/b/e/b/a;->g:Lorg/b/e/b/d;

    .line 100
    if-eqz p6, :cond_2

    :goto_1
    invoke-static {p6}, Lorg/b/d/c;->a(Lorg/b/d/h;)Lorg/b/d/h;

    move-result-object v0

    iput-object v0, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    .line 102
    iput-object p7, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    .line 103
    iput-boolean p8, p0, Lorg/b/e/b/a;->j:Z

    .line 104
    if-eqz p9, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/b/e/b/a;->k()V

    .line 107
    :cond_0
    return-void

    .line 99
    :cond_1
    sget-object p5, Lorg/b/e/b/a;->a:Lorg/b/e/b/d;

    goto :goto_0

    .line 100
    :cond_2
    new-instance p6, Lorg/b/d/g;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lorg/b/d/g;-><init>(I)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 458
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lorg/b/e/b/e;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 290
    :cond_0
    const-string v0, "\'encoding\' must not be empty"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/b/e/b/a;->a([BLorg/b/e/b/e;)[B

    move-result-object v1

    .line 293
    new-instance v0, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/b/e/b/f;)Lorg/b/e/b/a;
    .locals 11
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 408
    iget-boolean v0, p0, Lorg/b/e/b/a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot expand an already encoded UriComponents object"

    invoke-static {v0, v1}, Lorg/b/d/a;->b(ZLjava/lang/String;)V

    .line 410
    iget-object v0, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;

    move-result-object v1

    .line 411
    iget-object v0, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;

    move-result-object v2

    .line 412
    iget-object v0, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;

    move-result-object v3

    .line 413
    iget-object v0, p0, Lorg/b/e/b/a;->g:Lorg/b/e/b/d;

    invoke-interface {v0, p1}, Lorg/b/e/b/d;->a(Lorg/b/e/b/f;)Lorg/b/e/b/d;

    move-result-object v5

    .line 414
    new-instance v6, Lorg/b/d/g;

    iget-object v0, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    invoke-interface {v0}, Lorg/b/d/h;->size()I

    move-result v0

    invoke-direct {v6, v0}, Lorg/b/d/g;-><init>(I)V

    .line 416
    iget-object v0, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    invoke-interface {v0}, Lorg/b/d/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;

    move-result-object v9

    .line 418
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 420
    invoke-static {v0, p1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    move v0, v8

    .line 408
    goto :goto_0

    .line 423
    :cond_1
    invoke-interface {v6, v9, v10}, Lorg/b/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 425
    :cond_2
    iget-object v0, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;

    move-result-object v7

    .line 427
    new-instance v0, Lorg/b/e/b/a;

    iget v4, p0, Lorg/b/e/b/a;->f:I

    move v9, v8

    invoke-direct/range {v0 .. v9}, Lorg/b/e/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/b/e/b/d;Lorg/b/d/h;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/b/e/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/e;)V

    return-void
.end method

.method private static a([BLorg/b/e/b/e;)[B
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x10

    .line 297
    const-string v0, "\'source\' must not be null"

    invoke-static {p0, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    const-string v0, "\'type\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 301
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 302
    aget-byte v1, p0, v0

    .line 303
    if-gez v1, :cond_0

    .line 304
    add-int/lit16 v1, v1, 0x100

    .line 306
    :cond_0
    invoke-virtual {p1, v1}, Lorg/b/e/b/e;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 301
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 313
    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 315
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 319
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 453
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 454
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lorg/b/e/b/f;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 432
    if-nez p0, :cond_1

    .line 433
    const/4 p0, 0x0

    .line 449
    :cond_0
    :goto_0
    return-object p0

    .line 435
    :cond_1
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 438
    sget-object v0, Lorg/b/e/b/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v2}, Lorg/b/e/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-interface {p1, v2}, Lorg/b/e/b/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 444
    invoke-static {v2}, Lorg/b/e/b/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 448
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lorg/b/e/b/e;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, -0x1

    .line 349
    if-nez p0, :cond_1

    .line 377
    :cond_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 355
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 357
    const/16 v3, 0x25

    if-ne v2, v3, :cond_6

    .line 358
    add-int/lit8 v2, v0, 0x2

    if-ge v2, v1, :cond_5

    .line 359
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 360
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 361
    invoke-static {v2, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 362
    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 363
    if-eq v2, v4, :cond_2

    if-ne v3, v4, :cond_3

    .line 364
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoded sequence \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_3
    add-int/lit8 v0, v0, 0x2

    .line 355
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoded sequence \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_6
    invoke-virtual {p1, v2}, Lorg/b/e/b/e;->a(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid character \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/b/e/b/e;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/b/e/b/a;->j:Z

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    sget-object v1, Lorg/b/e/b/e;->a:Lorg/b/e/b/e;

    invoke-static {v0, v1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/e;)V

    .line 335
    iget-object v0, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    sget-object v1, Lorg/b/e/b/e;->c:Lorg/b/e/b/e;

    invoke-static {v0, v1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/e;)V

    .line 336
    iget-object v0, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    sget-object v1, Lorg/b/e/b/e;->d:Lorg/b/e/b/e;

    invoke-static {v0, v1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/e;)V

    .line 337
    iget-object v0, p0, Lorg/b/e/b/a;->g:Lorg/b/e/b/d;

    invoke-interface {v0}, Lorg/b/e/b/d;->b()V

    .line 338
    iget-object v0, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    invoke-interface {v0}, Lorg/b/d/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lorg/b/e/b/e;->i:Lorg/b/e/b/e;

    invoke-static {v1, v3}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/e;)V

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    sget-object v3, Lorg/b/e/b/e;->i:Lorg/b/e/b/e;

    invoke-static {v0, v3}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/e;)V

    goto :goto_1

    .line 344
    :cond_2
    iget-object v0, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    sget-object v1, Lorg/b/e/b/e;->j:Lorg/b/e/b/e;

    invoke-static {v0, v1}, Lorg/b/e/b/a;->b(Ljava/lang/String;Lorg/b/e/b/e;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/b/e/b/a;
    .locals 11
    .parameter

    .prologue
    .line 247
    const-string v0, "\'encoding\' must not be empty"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-boolean v0, p0, Lorg/b/e/b/a;->j:Z

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-object p0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    sget-object v1, Lorg/b/e/b/e;->a:Lorg/b/e/b/e;

    invoke-static {v0, p1, v1}, Lorg/b/e/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/b/e/b/e;)Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v0, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    sget-object v2, Lorg/b/e/b/e;->c:Lorg/b/e/b/e;

    invoke-static {v0, p1, v2}, Lorg/b/e/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/b/e/b/e;)Ljava/lang/String;

    move-result-object v2

    .line 255
    iget-object v0, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    sget-object v3, Lorg/b/e/b/e;->d:Lorg/b/e/b/e;

    invoke-static {v0, p1, v3}, Lorg/b/e/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/b/e/b/e;)Ljava/lang/String;

    move-result-object v3

    .line 256
    iget-object v0, p0, Lorg/b/e/b/a;->g:Lorg/b/e/b/d;

    invoke-interface {v0, p1}, Lorg/b/e/b/d;->a(Ljava/lang/String;)Lorg/b/e/b/d;

    move-result-object v5

    .line 257
    new-instance v6, Lorg/b/d/g;

    iget-object v0, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    invoke-interface {v0}, Lorg/b/d/h;->size()I

    move-result v0

    invoke-direct {v6, v0}, Lorg/b/d/g;-><init>(I)V

    .line 259
    iget-object v0, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    invoke-interface {v0}, Lorg/b/d/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v8, Lorg/b/e/b/e;->i:Lorg/b/e/b/e;

    invoke-static {v4, p1, v8}, Lorg/b/e/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/b/e/b/e;)Ljava/lang/String;

    move-result-object v8

    .line 261
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    sget-object v10, Lorg/b/e/b/e;->i:Lorg/b/e/b/e;

    invoke-static {v0, p1, v10}, Lorg/b/e/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/b/e/b/e;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    :cond_1
    invoke-interface {v6, v8, v9}, Lorg/b/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 268
    :cond_2
    iget-object v0, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    sget-object v4, Lorg/b/e/b/e;->j:Lorg/b/e/b/e;

    invoke-static {v0, p1, v4}, Lorg/b/e/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/b/e/b/e;)Ljava/lang/String;

    move-result-object v7

    .line 270
    new-instance v0, Lorg/b/e/b/a;

    iget v4, p0, Lorg/b/e/b/a;->f:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/b/e/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/b/e/b/d;Lorg/b/d/h;Ljava/lang/String;ZZ)V

    move-object p0, v0

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Map;)Lorg/b/e/b/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/b/e/b/a;"
        }
    .end annotation

    .prologue
    .line 389
    const-string v0, "\'uriVariables\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    new-instance v0, Lorg/b/e/b/c;

    invoke-direct {v0, p1}, Lorg/b/e/b/c;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/b/e/b/a;->a(Lorg/b/e/b/f;)Lorg/b/e/b/a;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/Object;)Lorg/b/e/b/a;
    .locals 1
    .parameter

    .prologue
    .line 402
    const-string v0, "\'uriVariableValues\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    new-instance v0, Lorg/b/e/b/g;

    invoke-direct {v0, p1}, Lorg/b/e/b/g;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/b/e/b/a;->a(Lorg/b/e/b/f;)Lorg/b/e/b/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/b/e/b/a;->f:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/b/e/b/a;->g:Lorg/b/e/b/d;

    invoke-interface {v0}, Lorg/b/e/b/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    if-ne p0, p1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    instance-of v2, p1, Lorg/b/e/b/a;

    if-eqz v2, :cond_f

    .line 553
    check-cast p1, Lorg/b/e/b/a;

    .line 555
    iget-object v2, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/e/b/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v0, v1

    .line 556
    goto :goto_0

    .line 555
    :cond_3
    iget-object v2, p1, Lorg/b/e/b/a;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 558
    :cond_4
    iget-object v2, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/e/b/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    .line 559
    goto :goto_0

    .line 558
    :cond_6
    iget-object v2, p1, Lorg/b/e/b/a;->d:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 561
    :cond_7
    iget-object v2, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/e/b/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    .line 562
    goto :goto_0

    .line 561
    :cond_9
    iget-object v2, p1, Lorg/b/e/b/a;->e:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 564
    :cond_a
    iget v2, p0, Lorg/b/e/b/a;->f:I

    iget v3, p1, Lorg/b/e/b/a;->f:I

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 565
    goto :goto_0

    .line 567
    :cond_b
    iget-object v2, p0, Lorg/b/e/b/a;->g:Lorg/b/e/b/d;

    iget-object v3, p1, Lorg/b/e/b/a;->g:Lorg/b/e/b/d;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 568
    goto :goto_0

    .line 570
    :cond_c
    iget-object v2, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    iget-object v3, p1, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 571
    goto :goto_0

    .line 573
    :cond_d
    iget-object v2, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    iget-object v3, p1, Lorg/b/e/b/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 574
    goto :goto_0

    .line 573
    :cond_e
    iget-object v2, p1, Lorg/b/e/b/a;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_f
    move v0, v1

    .line 579
    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x26

    .line 171
    iget-object v0, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    invoke-interface {v0}, Lorg/b/d/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    iget-object v0, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    invoke-interface {v0}, Lorg/b/d/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 176
    invoke-static {v0}, Lorg/b/d/c;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 185
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    if-eqz v0, :cond_3

    .line 190
    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 196
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_2
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lorg/b/e/b/a;
    .locals 2

    .prologue
    .line 231
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/b/e/b/a;->a(Ljava/lang/String;)Lorg/b/e/b/a;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "\"UTF-8\" not supported"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 585
    iget-object v0, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 586
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 587
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 588
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/b/e/b/a;->f:I

    add-int/2addr v0, v2

    .line 589
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/b/e/b/a;->g:Lorg/b/e/b/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 590
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/b/e/b/a;->h:Lorg/b/d/h;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 591
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 592
    return v0

    :cond_1
    move v0, v1

    .line 585
    goto :goto_0

    :cond_2
    move v0, v1

    .line 586
    goto :goto_1

    :cond_3
    move v0, v1

    .line 587
    goto :goto_2
.end method

.method public i()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/16 v3, 0x2f

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    iget-object v1, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lorg/b/e/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    iget-object v1, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 487
    :cond_1
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 489
    iget-object v1, p0, Lorg/b/e/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    :cond_2
    iget-object v1, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 493
    iget-object v1, p0, Lorg/b/e/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_3
    iget v1, p0, Lorg/b/e/b/a;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 496
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 497
    iget v1, p0, Lorg/b/e/b/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    :cond_4
    invoke-virtual {p0}, Lorg/b/e/b/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v1}, Lorg/b/d/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_5

    .line 504
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_6
    invoke-virtual {p0}, Lorg/b/e/b/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 510
    if-eqz v1, :cond_7

    .line 511
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_7
    iget-object v1, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 516
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    iget-object v1, p0, Lorg/b/e/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/net/URI;
    .locals 8

    .prologue
    const/16 v1, 0x2f

    .line 530
    :try_start_0
    iget-boolean v0, p0, Lorg/b/e/b/a;->j:Z

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lorg/b/e/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 538
    :goto_0
    return-object v0

    .line 534
    :cond_0
    invoke-virtual {p0}, Lorg/b/e/b/a;->e()Ljava/lang/String;

    move-result-object v5

    .line 535
    invoke-static {v5}, Lorg/b/d/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lorg/b/e/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/b/e/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/b/e/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/b/e/b/a;->d()I

    move-result v4

    invoke-virtual {p0}, Lorg/b/e/b/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/b/e/b/a;->g()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create URI object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lorg/b/e/b/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
