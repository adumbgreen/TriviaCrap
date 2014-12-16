.class public Lcom/millennialmedia/a/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:[I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/a/a/d/a;->a:[C

    .line 1659
    new-instance v0, Lcom/millennialmedia/a/a/d/a$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/d/a$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/h;->a:Lcom/millennialmedia/a/a/b/h;

    .line 1687
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-boolean v1, p0, Lcom/millennialmedia/a/a/d/a;->c:Z

    .line 257
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    .line 258
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 259
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    .line 261
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    .line 262
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    .line 264
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 289
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    .line 290
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/a/a/d/a;->b:Ljava/io/Reader;

    .line 304
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/a/a/d/a;)I
    .locals 1
    .parameter

    .prologue
    .line 208
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/a/a/d/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput p1, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    return p1
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1346
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1347
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1348
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1349
    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    aput p1, v0, v1

    .line 1352
    return-void
.end method

.method private a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 793
    sparse-switch p1, :sswitch_data_0

    .line 813
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 799
    :sswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 811
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 793
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1532
    :goto_0
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1534
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    .line 1535
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    .line 1532
    :cond_1
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1538
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1539
    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1538
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1543
    :cond_3
    const/4 v1, 0x1

    .line 1545
    :cond_4
    return v1
.end method

.method static synthetic b(Lcom/millennialmedia/a/a/d/a;)I
    .locals 1
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    return v0
.end method

.method private b(Z)I
    .locals 5
    .parameter

    .prologue
    .line 1417
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    .line 1418
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1419
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    .line 1421
    :goto_0
    if-ne v1, v0, :cond_1

    .line 1422
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    if-eqz p1, :cond_8

    .line 1492
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of input at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1426
    :cond_0
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1427
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    .line 1430
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 1431
    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 1432
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    .line 1433
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    move v1, v2

    .line 1434
    goto :goto_0

    .line 1435
    :cond_2
    const/16 v4, 0x20

    if-eq v1, v4, :cond_9

    const/16 v4, 0xd

    if-eq v1, v4, :cond_9

    const/16 v4, 0x9

    if-ne v1, v4, :cond_3

    move v1, v2

    .line 1436
    goto :goto_0

    .line 1439
    :cond_3
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_6

    .line 1440
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1441
    if-ne v2, v0, :cond_4

    .line 1442
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1444
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    .line 1445
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1446
    if-nez v0, :cond_4

    move v0, v1

    .line 1495
    :goto_1
    return v0

    .line 1451
    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 1452
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    aget-char v0, v3, v0

    .line 1453
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 1473
    goto :goto_1

    .line 1456
    :sswitch_0
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1457
    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1458
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1460
    :cond_5
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v1, v0, 0x2

    .line 1461
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    goto/16 :goto_0

    .line 1466
    :sswitch_1
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1467
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->x()V

    .line 1468
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1469
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    goto/16 :goto_0

    .line 1475
    :cond_6
    const/16 v0, 0x23

    if-ne v1, v0, :cond_7

    .line 1476
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1482
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 1483
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->x()V

    .line 1484
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1485
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    goto/16 :goto_0

    .line 1487
    :cond_7
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    move v0, v1

    .line 1488
    goto :goto_1

    .line 1495
    :cond_8
    const/4 v0, -0x1

    goto :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_0

    .line 1453
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .parameter

    .prologue
    .line 1630
    new-instance v0, Lcom/millennialmedia/a/a/d/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(C)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 1062
    iget-object v4, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    .line 1063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    :cond_0
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1066
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    move v3, v0

    .line 1069
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1070
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    .line 1072
    if-ne v3, p1, :cond_1

    .line 1073
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1074
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1076
    :cond_1
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_3

    .line 1077
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1078
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1079
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->y()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1080
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1081
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    move v2, v0

    :cond_2
    :goto_1
    move v3, v2

    .line 1087
    goto :goto_0

    .line 1083
    :cond_3
    const/16 v6, 0xa

    if-ne v3, v6, :cond_2

    .line 1084
    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    .line 1085
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    goto :goto_1

    .line 1089
    :cond_4
    sub-int v1, v3, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1090
    iput v3, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1091
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private b(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1360
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    .line 1361
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    .line 1362
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    if-eq v2, v3, :cond_3

    .line 1363
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    .line 1364
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1369
    :goto_0
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1371
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->b:Ljava/io/Reader;

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    array-length v4, v1

    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1372
    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    .line 1376
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-lez v2, :cond_1

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_1

    .line 1378
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1379
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    .line 1380
    add-int/lit8 p1, p1, 0x1

    .line 1383
    :cond_1
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-lt v2, p1, :cond_0

    .line 1384
    const/4 v0, 0x1

    .line 1387
    :cond_2
    return v0

    .line 1366
    :cond_3
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/millennialmedia/a/a/d/a;)I
    .locals 1
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v0

    return v0
.end method

.method private c(C)V
    .locals 5
    .parameter

    .prologue
    .line 1168
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    .line 1170
    :cond_0
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1171
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    move v2, v1

    .line 1173
    :goto_0
    if-ge v2, v0, :cond_4

    .line 1174
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    .line 1175
    if-ne v2, p1, :cond_1

    .line 1176
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1177
    return-void

    .line 1178
    :cond_1
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_3

    .line 1179
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1180
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->y()C

    .line 1181
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1182
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    :cond_2
    :goto_1
    move v2, v1

    .line 1187
    goto :goto_0

    .line 1183
    :cond_3
    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    .line 1184
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    .line 1185
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    goto :goto_1

    .line 1188
    :cond_4
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method static synthetic d(Lcom/millennialmedia/a/a/d/a;)I
    .locals 1
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v0

    return v0
.end method

.method private o()I
    .locals 8

    .prologue
    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 485
    iget-object v4, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    .line 486
    if-ne v4, v2, :cond_3

    .line 487
    iget-object v5, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    .line 574
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v5

    .line 575
    sparse-switch v5, :sswitch_data_0

    .line 605
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 608
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    if-ne v0, v2, :cond_1

    .line 609
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 612
    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->q()I

    move-result v0

    .line 613
    if-eqz v0, :cond_14

    .line 627
    :cond_2
    :goto_1
    return v0

    .line 488
    :cond_3
    if-ne v4, v1, :cond_4

    .line 490
    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v5

    .line 491
    sparse-switch v5, :sswitch_data_1

    .line 499
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 493
    :sswitch_1
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto :goto_1

    .line 495
    :sswitch_2
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    goto :goto_0

    .line 501
    :cond_4
    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    if-ne v4, v7, :cond_9

    .line 503
    :cond_5
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    .line 505
    if-ne v4, v7, :cond_6

    .line 506
    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v0

    .line 507
    sparse-switch v0, :sswitch_data_2

    .line 515
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 509
    :sswitch_3
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    move v0, v1

    goto :goto_1

    .line 511
    :sswitch_4
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 518
    :cond_6
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v0

    .line 519
    sparse-switch v0, :sswitch_data_3

    .line 532
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 533
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 535
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 536
    const/16 v0, 0xe

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto :goto_1

    .line 521
    :sswitch_6
    const/16 v0, 0xd

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto :goto_1

    .line 523
    :sswitch_7
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 524
    const/16 v0, 0xc

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto :goto_1

    .line 526
    :sswitch_8
    if-eq v4, v7, :cond_7

    .line 527
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    move v0, v1

    goto :goto_1

    .line 529
    :cond_7
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 538
    :cond_8
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 541
    :cond_9
    if-ne v4, v0, :cond_b

    .line 542
    iget-object v5, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    .line 544
    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v5

    .line 545
    packed-switch v5, :pswitch_data_0

    .line 555
    :pswitch_1
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 549
    :pswitch_2
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 550
    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-lt v5, v6, :cond_a

    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_a
    iget-object v5, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_0

    .line 551
    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    goto/16 :goto_0

    .line 557
    :cond_b
    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    .line 558
    iget-boolean v5, p0, Lcom/millennialmedia/a/a/d/a;->c:Z

    if-eqz v5, :cond_c

    .line 559
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->z()V

    .line 561
    :cond_c
    iget-object v5, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_0

    .line 562
    :cond_d
    if-ne v4, v3, :cond_f

    .line 563
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    move-result v5

    .line 564
    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    .line 565
    const/16 v0, 0x11

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_1

    .line 567
    :cond_e
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 568
    iget v5, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    goto/16 :goto_0

    .line 570
    :cond_f
    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :sswitch_9
    if-ne v4, v2, :cond_10

    .line 578
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_1

    .line 584
    :cond_10
    :sswitch_a
    if-eq v4, v2, :cond_11

    if-ne v4, v1, :cond_12

    .line 586
    :cond_11
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 587
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 588
    iput v3, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    move v0, v3

    goto/16 :goto_1

    .line 590
    :cond_12
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 593
    :sswitch_b
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 594
    const/16 v0, 0x8

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_1

    .line 596
    :sswitch_c
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    if-ne v0, v2, :cond_13

    .line 597
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 599
    :cond_13
    const/16 v0, 0x9

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_1

    .line 601
    :sswitch_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_1

    .line 603
    :sswitch_e
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    move v0, v2

    goto/16 :goto_1

    .line 617
    :cond_14
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->r()I

    move-result v0

    .line 618
    if-nez v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_15

    .line 623
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 626
    :cond_15
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 627
    const/16 v0, 0xa

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_1

    .line 575
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 491
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 507
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 519
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 545
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private q()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 634
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 638
    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    .line 639
    :cond_0
    const-string v2, "true"

    .line 640
    const-string v1, "TRUE"

    .line 641
    const/4 v0, 0x5

    .line 655
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 656
    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_8

    .line 657
    iget v6, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v0, v3

    .line 674
    :goto_2
    return v0

    .line 642
    :cond_1
    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    .line 643
    :cond_2
    const-string v2, "false"

    .line 644
    const-string v1, "FALSE"

    .line 645
    const/4 v0, 0x6

    goto :goto_0

    .line 646
    :cond_3
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    .line 647
    :cond_4
    const-string v2, "null"

    .line 648
    const-string v1, "NULL"

    .line 649
    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    move v0, v3

    .line 651
    goto :goto_2

    .line 660
    :cond_6
    iget-object v6, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v7, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    .line 661
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    move v0, v3

    .line 662
    goto :goto_2

    .line 656
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 666
    :cond_8
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-lt v1, v2, :cond_9

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/millennialmedia/a/a/d/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v3

    .line 668
    goto :goto_2

    .line 673
    :cond_a
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 674
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto :goto_2
.end method

.method private r()I
    .locals 19

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/a/a/d/a;->d:[C

    .line 682
    move-object/from16 v0, p0

    iget v3, v0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/millennialmedia/a/a/d/a;->f:I

    .line 685
    const-wide/16 v7, 0x0

    .line 686
    const/4 v6, 0x0

    .line 687
    const/4 v5, 0x1

    .line 688
    const/4 v4, 0x0

    .line 690
    const/4 v1, 0x0

    move v11, v1

    move v1, v2

    move v2, v3

    .line 694
    :goto_0
    add-int v3, v2, v11

    if-ne v3, v1, :cond_4

    .line 695
    array-length v1, v12

    if-ne v11, v1, :cond_0

    .line 700
    const/4 v1, 0x0

    .line 787
    :goto_1
    return v1

    .line 702
    :cond_0
    add-int/lit8 v1, v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 776
    :cond_1
    const/4 v1, 0x2

    if-ne v4, v1, :cond_16

    if-eqz v5, :cond_16

    const-wide/high16 v1, -0x8000

    cmp-long v1, v7, v1

    if-nez v1, :cond_2

    if-eqz v6, :cond_16

    .line 778
    :cond_2
    if-eqz v6, :cond_15

    :goto_2
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/millennialmedia/a/a/d/a;->j:J

    .line 779
    move-object/from16 v0, p0

    iget v1, v0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v1, v11

    move-object/from16 v0, p0

    iput v1, v0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 780
    const/16 v1, 0xf

    move-object/from16 v0, p0

    iput v1, v0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto :goto_1

    .line 705
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 706
    move-object/from16 v0, p0

    iget v1, v0, Lcom/millennialmedia/a/a/d/a;->f:I

    .line 709
    :cond_4
    add-int v3, v2, v11

    aget-char v3, v12, v3

    .line 710
    sparse-switch v3, :sswitch_data_0

    .line 746
    const/16 v9, 0x30

    if-lt v3, v9, :cond_5

    const/16 v9, 0x39

    if-le v3, v9, :cond_c

    .line 747
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/millennialmedia/a/a/d/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    const/4 v1, 0x0

    goto :goto_1

    .line 712
    :sswitch_0
    if-nez v4, :cond_6

    .line 713
    const/4 v4, 0x1

    .line 714
    const/4 v3, 0x1

    move v15, v5

    move v5, v4

    move v4, v15

    move-wide/from16 v16, v7

    move-wide/from16 v6, v16

    .line 693
    :goto_3
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    move v15, v4

    move v4, v3

    move/from16 v16, v5

    move v5, v15

    move-wide/from16 v17, v6

    move-wide/from16 v7, v17

    move/from16 v6, v16

    goto :goto_0

    .line 716
    :cond_6
    const/4 v3, 0x5

    if-ne v4, v3, :cond_7

    .line 717
    const/4 v3, 0x6

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    .line 718
    goto :goto_3

    .line 720
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 723
    :sswitch_1
    const/4 v3, 0x5

    if-ne v4, v3, :cond_8

    .line 724
    const/4 v3, 0x6

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    .line 725
    goto :goto_3

    .line 727
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 731
    :sswitch_2
    const/4 v3, 0x2

    if-eq v4, v3, :cond_9

    const/4 v3, 0x4

    if-ne v4, v3, :cond_a

    .line 733
    :cond_9
    const/4 v3, 0x5

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    .line 734
    goto :goto_3

    .line 736
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 739
    :sswitch_3
    const/4 v3, 0x2

    if-ne v4, v3, :cond_b

    .line 740
    const/4 v3, 0x3

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    .line 741
    goto :goto_3

    .line 743
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 752
    :cond_c
    const/4 v9, 0x1

    if-eq v4, v9, :cond_d

    if-nez v4, :cond_e

    .line 753
    :cond_d
    add-int/lit8 v3, v3, -0x30

    neg-int v3, v3

    int-to-long v7, v3

    .line 754
    const/4 v3, 0x2

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto :goto_3

    .line 755
    :cond_e
    const/4 v9, 0x2

    if-ne v4, v9, :cond_12

    .line 756
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_f

    .line 757
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 761
    :cond_f
    const-wide/16 v9, 0xa

    mul-long/2addr v9, v7

    add-int/lit8 v3, v3, -0x30

    int-to-long v13, v3

    sub-long/2addr v9, v13

    .line 762
    const-wide v13, -0xcccccccccccccccL

    cmp-long v3, v7, v13

    if-gtz v3, :cond_10

    const-wide v13, -0xcccccccccccccccL

    cmp-long v3, v7, v13

    if-nez v3, :cond_11

    cmp-long v3, v9, v7

    if-gez v3, :cond_11

    :cond_10
    const/4 v3, 0x1

    :goto_4
    and-int/2addr v3, v5

    move v5, v6

    move-wide v6, v9

    move v15, v4

    move v4, v3

    move v3, v15

    .line 765
    goto :goto_3

    .line 762
    :cond_11
    const/4 v3, 0x0

    goto :goto_4

    .line 765
    :cond_12
    const/4 v3, 0x3

    if-ne v4, v3, :cond_13

    .line 766
    const/4 v3, 0x4

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto/16 :goto_3

    .line 767
    :cond_13
    const/4 v3, 0x5

    if-eq v4, v3, :cond_14

    const/4 v3, 0x6

    if-ne v4, v3, :cond_19

    .line 769
    :cond_14
    const/4 v3, 0x7

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto/16 :goto_3

    .line 778
    :cond_15
    neg-long v7, v7

    goto/16 :goto_2

    .line 781
    :cond_16
    const/4 v1, 0x2

    if-eq v4, v1, :cond_17

    const/4 v1, 0x4

    if-eq v4, v1, :cond_17

    const/4 v1, 0x7

    if-ne v4, v1, :cond_18

    .line 784
    :cond_17
    move-object/from16 v0, p0

    iput v11, v0, Lcom/millennialmedia/a/a/d/a;->k:I

    .line 785
    const/16 v1, 0x10

    move-object/from16 v0, p0

    iput v1, v0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_1

    .line 787
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_19
    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v15, v7

    move-wide v6, v15

    goto/16 :goto_3

    .line 710
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private s()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1103
    const/4 v0, 0x0

    move v1, v2

    .line 1108
    :goto_0
    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-ge v3, v4, :cond_1

    .line 1109
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v4, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1115
    :sswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 1154
    :cond_0
    :goto_1
    :sswitch_1
    if-nez v0, :cond_4

    .line 1155
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1160
    :goto_2
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1161
    return-object v0

    .line 1132
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1133
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1142
    :cond_2
    if-nez v0, :cond_3

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1145
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v4, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1146
    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1148
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 1149
    goto :goto_1

    .line 1157
    :cond_4
    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0

    .line 1109
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private t()V
    .locals 3

    .prologue
    .line 1196
    :cond_0
    const/4 v0, 0x0

    .line 1197
    :goto_0
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-ge v1, v2, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1204
    :sswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->w()V

    .line 1216
    :sswitch_1
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1222
    :goto_1
    return-void

    .line 1220
    :cond_1
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1198
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private u()I
    .locals 1

    .prologue
    .line 1392
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private v()I
    .locals 2

    .prologue
    .line 1397
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/a;->c:Z

    if-nez v0, :cond_0

    .line 1502
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1504
    :cond_0
    return-void
.end method

.method private x()V
    .locals 3

    .prologue
    .line 1513
    :cond_0
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 1515
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1516
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    .line 1517
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    .line 1523
    :cond_2
    :goto_0
    return-void

    .line 1519
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private y()C
    .locals 7

    .prologue
    const/4 v5, 0x4

    .line 1566
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1570
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 1571
    sparse-switch v0, :sswitch_data_0

    .line 1620
    :goto_0
    return v0

    .line 1573
    :sswitch_0
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v5}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1574
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1578
    :cond_1
    const/4 v1, 0x0

    .line 1579
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v2, :cond_5

    .line 1580
    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    aget-char v3, v3, v1

    .line 1581
    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    .line 1582
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    .line 1583
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 1579
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1584
    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-gt v3, v4, :cond_3

    .line 1585
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    .line 1586
    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_4

    .line 1587
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    .line 1589
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v4, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_5
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    goto :goto_0

    .line 1597
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1600
    :sswitch_2
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 1603
    :sswitch_3
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 1606
    :sswitch_4
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1609
    :sswitch_5
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1612
    :sswitch_6
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->g:I

    .line 1613
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->h:I

    goto/16 :goto_0

    .line 1571
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private z()V
    .locals 3

    .prologue
    .line 1640
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(Z)I

    .line 1641
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1643
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    sget-object v1, Lcom/millennialmedia/a/a/d/a;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->f:I

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/millennialmedia/a/a/d/a;->a:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/millennialmedia/a/a/d/a;->a:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1649
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/millennialmedia/a/a/d/a;->a:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 1648
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1655
    :cond_2
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    sget-object v1, Lcom/millennialmedia/a/a/d/a;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 354
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 355
    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 358
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(I)V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 366
    return-void

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/millennialmedia/a/a/d/a;->c:Z

    .line 338
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 374
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 375
    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 378
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 379
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 386
    return-void

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 394
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 395
    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 398
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 399
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->a(I)V

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 406
    return-void

    .line 402
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1297
    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 1298
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->m:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1299
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    .line 1300
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1301
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 414
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 415
    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 418
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 419
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 426
    return-void

    .line 422
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 434
    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 437
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/millennialmedia/a/a/d/b;
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 446
    if-nez v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 450
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 479
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 452
    :pswitch_0
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->c:Lcom/millennialmedia/a/a/d/b;

    .line 477
    :goto_0
    return-object v0

    .line 454
    :pswitch_1
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->d:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 456
    :pswitch_2
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->a:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 458
    :pswitch_3
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->b:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 462
    :pswitch_4
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->e:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 465
    :pswitch_5
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->h:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 467
    :pswitch_6
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 472
    :pswitch_7
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->f:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 475
    :pswitch_8
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->g:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 477
    :pswitch_9
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->j:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 827
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 828
    if-nez v0, :cond_0

    .line 829
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 832
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 833
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    .line 843
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 844
    return-object v0

    .line 834
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 835
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 836
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 837
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 859
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 860
    if-nez v0, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 864
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 865
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    .line 883
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 884
    return-object v0

    .line 866
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 867
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 868
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 869
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 870
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 871
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    .line 872
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    goto :goto_0

    .line 873
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 874
    iget-wide v0, p0, Lcom/millennialmedia/a/a/d/a;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 875
    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 876
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 877
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    goto :goto_0

    .line 879
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 898
    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 899
    if-nez v1, :cond_0

    .line 900
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v1

    .line 902
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 903
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 904
    const/4 v0, 0x1

    .line 907
    :goto_0
    return v0

    .line 905
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 906
    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto :goto_0

    .line 909
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 922
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 923
    if-nez v0, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 926
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 927
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 933
    return-void

    .line 929
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 950
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 951
    if-nez v0, :cond_0

    .line 952
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 955
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 956
    iput v4, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 957
    iget-wide v0, p0, Lcom/millennialmedia/a/a/d/a;->j:J

    long-to-double v0, v0

    .line 984
    :goto_0
    return-wide v0

    .line 960
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 961
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    .line 962
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 974
    :cond_2
    :goto_1
    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 975
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 977
    iget-boolean v2, p0, Lcom/millennialmedia/a/a/d/a;->c:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 978
    :cond_3
    new-instance v2, Lcom/millennialmedia/a/a/d/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/millennialmedia/a/a/d/d;-><init>(Ljava/lang/String;)V

    throw v2

    .line 963
    :cond_4
    if-eq v0, v2, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 964
    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    goto :goto_2

    .line 966
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 967
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    goto :goto_1

    .line 968
    :cond_8
    if-eq v0, v5, :cond_2

    .line 969
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    .line 983
    iput v4, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_0
.end method

.method public l()J
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 1003
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 1004
    if-nez v0, :cond_0

    .line 1005
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 1008
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 1009
    iput v6, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 1010
    iget-wide v0, p0, Lcom/millennialmedia/a/a/d/a;->j:J

    .line 1044
    :goto_0
    return-wide v0

    .line 1013
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 1014
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    .line 1015
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1032
    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 1033
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1035
    double-to-long v0, v2

    .line 1036
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_6

    .line 1038
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_2
    if-eq v0, v2, :cond_3

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 1017
    :cond_3
    if-ne v0, v2, :cond_4

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1021
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1017
    :cond_4
    const/16 v0, 0x22

    goto :goto_2

    .line 1027
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    .line 1043
    iput v6, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_0
.end method

.method public m()I
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 1240
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 1241
    if-nez v0, :cond_0

    .line 1242
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v0

    .line 1246
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 1247
    iget-wide v0, p0, Lcom/millennialmedia/a/a/d/a;->j:J

    long-to-int v0, v0

    .line 1248
    iget-wide v1, p0, Lcom/millennialmedia/a/a/d/a;->j:J

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1250
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/millennialmedia/a/a/d/a;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_1
    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 1289
    :goto_0
    return v0

    .line 1258
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1259
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/a;->d:[C

    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    .line 1260
    iget v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v1, p0, Lcom/millennialmedia/a/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    .line 1277
    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 1278
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 1280
    double-to-int v0, v1

    .line 1281
    int-to-double v3, v0

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_7

    .line 1283
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :cond_3
    if-eq v0, v2, :cond_4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    .line 1262
    :cond_4
    if-ne v0, v2, :cond_5

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    .line 1265
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1266
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1268
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1262
    :cond_5
    const/16 v0, 0x22

    goto :goto_2

    .line 1272
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/a/a/d/a;->l:Ljava/lang/String;

    .line 1288
    iput v5, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    goto/16 :goto_0
.end method

.method public n()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1310
    move v0, v1

    .line 1312
    :cond_0
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 1313
    if-nez v2, :cond_1

    .line 1314
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->o()I

    move-result v2

    .line 1317
    :cond_1
    if-ne v2, v5, :cond_3

    .line 1318
    invoke-direct {p0, v4}, Lcom/millennialmedia/a/a/d/a;->a(I)V

    .line 1319
    add-int/lit8 v0, v0, 0x1

    .line 1340
    :cond_2
    :goto_0
    iput v1, p0, Lcom/millennialmedia/a/a/d/a;->i:I

    .line 1341
    if-nez v0, :cond_0

    .line 1342
    return-void

    .line 1320
    :cond_3
    if-ne v2, v4, :cond_4

    .line 1321
    invoke-direct {p0, v5}, Lcom/millennialmedia/a/a/d/a;->a(I)V

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1323
    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 1324
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    .line 1325
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1326
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1327
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->n:I

    .line 1328
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1329
    :cond_6
    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    .line 1330
    :cond_7
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->t()V

    goto :goto_0

    .line 1331
    :cond_8
    const/16 v3, 0x8

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    .line 1333
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->c(C)V

    goto :goto_0

    .line 1334
    :cond_a
    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 1336
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/d/a;->c(C)V

    goto :goto_0

    .line 1337
    :cond_c
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 1338
    iget v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    iget v3, p0, Lcom/millennialmedia/a/a/d/a;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/a/a/d/a;->e:I

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/a;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/a;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
