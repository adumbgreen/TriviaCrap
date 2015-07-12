.class public final Lcom/millennialmedia/a/a/o;
.super Lcom/millennialmedia/a/a/j;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/a/a/o;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/millennialmedia/a/a/j;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/o;->a(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/millennialmedia/a/a/j;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/o;->a(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/millennialmedia/a/a/j;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/o;->a(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private static a(Lcom/millennialmedia/a/a/o;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 389
    instance-of v2, v0, Ljava/math/BigInteger;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_0

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 389
    goto :goto_0

    :cond_2
    move v0, v1

    .line 393
    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 327
    sget-object v4, Lcom/millennialmedia/a/a/o;->a:[Ljava/lang/Class;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 328
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 332
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/a/a/b/i;

    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/b/i;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    goto :goto_0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/millennialmedia/a/a/o;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V

    .line 117
    iput-object p1, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    if-ne p0, p1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 361
    goto :goto_0

    .line 363
    :cond_3
    check-cast p1, Lcom/millennialmedia/a/a/o;

    .line 364
    iget-object v2, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 365
    iget-object v2, p1, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 367
    :cond_4
    invoke-static {p0}, Lcom/millennialmedia/a/a/o;->a(Lcom/millennialmedia/a/a/o;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/millennialmedia/a/a/o;->a(Lcom/millennialmedia/a/a/o;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 368
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 370
    :cond_5
    iget-object v2, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_8

    .line 371
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 375
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 376
    cmpl-double v6, v2, v4

    if-eqz v6, :cond_6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v1, v0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 378
    :cond_8
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    iget-object v1, p1, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v2, 0x20

    .line 338
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 339
    const/16 v0, 0x1f

    .line 351
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/a/a/o;->a(Lcom/millennialmedia/a/a/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 345
    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/o;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 349
    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method n()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/millennialmedia/a/a/o;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method
