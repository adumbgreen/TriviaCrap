.class Lcom/mopub/nativeads/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private final a:[I

.field private final b:[I

.field private c:I

.field private final d:[I

.field private final e:[I

.field private final f:[Lcom/mopub/nativeads/s;

.field private g:I


# direct methods
.method private constructor <init>([I)V
    .locals 3
    .parameter

    .prologue
    const/16 v1, 0xc8

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/ac;->a:[I

    .line 131
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/ac;->b:[I

    .line 132
    iput v2, p0, Lcom/mopub/nativeads/ac;->c:I

    .line 133
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/ac;->d:[I

    .line 134
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/ac;->e:[I

    .line 135
    new-array v0, v1, [Lcom/mopub/nativeads/s;

    iput-object v0, p0, Lcom/mopub/nativeads/ac;->f:[Lcom/mopub/nativeads/s;

    .line 136
    iput v2, p0, Lcom/mopub/nativeads/ac;->g:I

    .line 142
    array-length v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ac;->c:I

    .line 143
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->b:[I

    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->a:[I

    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    return-void
.end method

.method private static a([III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mopub/nativeads/ac;->a([IIII)I

    move-result v0

    .line 470
    if-gez v0, :cond_0

    .line 471
    xor-int/lit8 v0, v0, -0x1

    .line 479
    :goto_0
    return v0

    .line 474
    :cond_0
    aget v1, p0, v0

    .line 475
    :goto_1
    if-ltz v0, :cond_1

    aget v2, p0, v0

    if-ne v2, v1, :cond_1

    .line 476
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 479
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([IIII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 503
    .line 504
    add-int/lit8 v0, p2, -0x1

    move v1, p1

    .line 506
    :goto_0
    if-gt v1, v0, :cond_2

    .line 507
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 508
    aget v3, p0, v2

    .line 510
    if-ge v3, p3, :cond_0

    .line 511
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 512
    :cond_0
    if-le v3, p3, :cond_1

    .line 513
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 518
    :goto_1
    return v0

    :cond_2
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method static a()Lcom/mopub/nativeads/ac;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/mopub/nativeads/ac;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/ac;-><init>([I)V

    return-object v0
.end method

.method static a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/ac;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->a()Ljava/util/List;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->b()I

    move-result v4

    .line 151
    const v0, 0x7fffffff

    if-ne v4, v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 152
    :goto_0
    new-array v5, v1, [I

    .line 158
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v0, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    .line 160
    add-int/lit8 v3, v2, 0x1

    aput v0, v5, v2

    move v2, v3

    .line 161
    goto :goto_1

    .line 151
    :cond_0
    const/16 v0, 0xc8

    move v1, v0

    goto :goto_0

    .line 164
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_2

    .line 165
    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    .line 166
    add-int/lit8 v3, v2, 0x1

    aput v0, v5, v2

    move v2, v3

    goto :goto_2

    .line 168
    :cond_2
    new-instance v0, Lcom/mopub/nativeads/ac;

    invoke-direct {v0, v5}, Lcom/mopub/nativeads/ac;-><init>([I)V

    return-object v0
.end method

.method private static b([III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mopub/nativeads/ac;->a([IIII)I

    move-result v0

    .line 487
    if-gez v0, :cond_1

    .line 488
    xor-int/lit8 v0, v0, -0x1

    .line 496
    :cond_0
    return v0

    .line 491
    :cond_1
    aget v1, p0, v0

    .line 492
    :goto_0
    if-ge v0, p1, :cond_0

    aget v2, p0, v0

    if-ne v2, v1, :cond_0

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(II)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 341
    iget v0, p0, Lcom/mopub/nativeads/ac;->g:I

    new-array v3, v0, [I

    .line 342
    iget v0, p0, Lcom/mopub/nativeads/ac;->g:I

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 347
    :goto_0
    iget v5, p0, Lcom/mopub/nativeads/ac;->g:I

    if-ge v0, v5, :cond_2

    .line 348
    iget-object v5, p0, Lcom/mopub/nativeads/ac;->d:[I

    aget v5, v5, v0

    .line 349
    iget-object v6, p0, Lcom/mopub/nativeads/ac;->e:[I

    aget v6, v6, v0

    .line 350
    if-gt p1, v6, :cond_1

    if-ge v6, p2, :cond_1

    .line 353
    aput v5, v3, v2

    .line 354
    sub-int v5, v6, v2

    aput v5, v4, v2

    .line 357
    iget-object v5, p0, Lcom/mopub/nativeads/ac;->f:[Lcom/mopub/nativeads/s;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/mopub/nativeads/s;->b()Lcom/mopub/nativeads/NativeResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/nativeads/NativeResponse;->destroy()V

    .line 358
    iget-object v5, p0, Lcom/mopub/nativeads/ac;->f:[Lcom/mopub/nativeads/s;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 359
    add-int/lit8 v2, v2, 0x1

    .line 347
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_1
    if-lez v2, :cond_0

    .line 362
    sub-int v7, v0, v2

    .line 363
    iget-object v8, p0, Lcom/mopub/nativeads/ac;->d:[I

    aput v5, v8, v7

    .line 364
    iget-object v5, p0, Lcom/mopub/nativeads/ac;->e:[I

    sub-int/2addr v6, v2

    aput v6, v5, v7

    .line 365
    iget-object v5, p0, Lcom/mopub/nativeads/ac;->f:[Lcom/mopub/nativeads/s;

    iget-object v6, p0, Lcom/mopub/nativeads/ac;->f:[Lcom/mopub/nativeads/s;

    aget-object v6, v6, v0

    aput-object v6, v5, v7

    goto :goto_1

    .line 370
    :cond_2
    if-nez v2, :cond_3

    .line 394
    :goto_2
    return v1

    .line 377
    :cond_3
    aget v0, v4, v1

    .line 378
    iget-object v5, p0, Lcom/mopub/nativeads/ac;->b:[I

    iget v6, p0, Lcom/mopub/nativeads/ac;->c:I

    invoke-static {v5, v6, v0}, Lcom/mopub/nativeads/ac;->a([III)I

    move-result v5

    .line 380
    iget v0, p0, Lcom/mopub/nativeads/ac;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lt v0, v5, :cond_4

    .line 381
    iget-object v6, p0, Lcom/mopub/nativeads/ac;->a:[I

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/mopub/nativeads/ac;->a:[I

    aget v8, v8, v0

    aput v8, v6, v7

    .line 382
    iget-object v6, p0, Lcom/mopub/nativeads/ac;->b:[I

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/mopub/nativeads/ac;->b:[I

    aget v8, v8, v0

    sub-int/2addr v8, v2

    aput v8, v6, v7

    .line 380
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 386
    :cond_4
    :goto_4
    if-ge v1, v2, :cond_5

    .line 387
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->a:[I

    add-int v6, v5, v1

    aget v7, v3, v1

    aput v7, v0, v6

    .line 388
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->b:[I

    add-int v6, v5, v1

    aget v7, v4, v1

    aput v7, v0, v6

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 392
    :cond_5
    iget v0, p0, Lcom/mopub/nativeads/ac;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/nativeads/ac;->c:I

    .line 393
    iget v0, p0, Lcom/mopub/nativeads/ac;->g:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/nativeads/ac;->g:I

    move v1, v2

    .line 394
    goto :goto_2
.end method

.method a(ILcom/mopub/nativeads/s;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->b:[I

    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/ac;->a([III)I

    move-result v0

    .line 216
    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/mopub/nativeads/ac;->b:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 218
    :cond_0
    const-string v0, "Attempted to insert an ad at an invalid position"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 254
    :cond_1
    return-void

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->a:[I

    aget v1, v1, v0

    .line 224
    iget-object v2, p0, Lcom/mopub/nativeads/ac;->d:[I

    iget v3, p0, Lcom/mopub/nativeads/ac;->g:I

    invoke-static {v2, v3, v1}, Lcom/mopub/nativeads/ac;->b([III)I

    move-result v2

    .line 226
    iget v3, p0, Lcom/mopub/nativeads/ac;->g:I

    if-ge v2, v3, :cond_3

    .line 227
    iget v3, p0, Lcom/mopub/nativeads/ac;->g:I

    sub-int/2addr v3, v2

    .line 228
    iget-object v4, p0, Lcom/mopub/nativeads/ac;->d:[I

    iget-object v5, p0, Lcom/mopub/nativeads/ac;->d:[I

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget-object v4, p0, Lcom/mopub/nativeads/ac;->e:[I

    iget-object v5, p0, Lcom/mopub/nativeads/ac;->e:[I

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget-object v4, p0, Lcom/mopub/nativeads/ac;->f:[Lcom/mopub/nativeads/s;

    iget-object v5, p0, Lcom/mopub/nativeads/ac;->f:[Lcom/mopub/nativeads/s;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    :cond_3
    iget-object v3, p0, Lcom/mopub/nativeads/ac;->d:[I

    aput v1, v3, v2

    .line 235
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->e:[I

    aput p1, v1, v2

    .line 236
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->f:[Lcom/mopub/nativeads/s;

    aput-object p2, v1, v2

    .line 237
    iget v1, p0, Lcom/mopub/nativeads/ac;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/nativeads/ac;->g:I

    .line 240
    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 241
    iget-object v3, p0, Lcom/mopub/nativeads/ac;->b:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/mopub/nativeads/ac;->b:[I

    invoke-static {v3, v4, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v3, p0, Lcom/mopub/nativeads/ac;->a:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/mopub/nativeads/ac;->a:[I

    invoke-static {v3, v4, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mopub/nativeads/ac;->c:I

    .line 248
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    if-ge v0, v1, :cond_4

    .line 249
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->b:[I

    aget v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_4
    add-int/lit8 v0, v2, 0x1

    :goto_1
    iget v1, p0, Lcom/mopub/nativeads/ac;->g:I

    if-ge v0, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method a(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->b:[I

    iget v2, p0, Lcom/mopub/nativeads/ac;->c:I

    invoke-static {v1, v0, v2, p1}, Lcom/mopub/nativeads/ac;->a([IIII)I

    move-result v1

    .line 180
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method b(I)I
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->b:[I

    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/ac;->b([III)I

    move-result v0

    .line 190
    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    if-ne v0, v1, :cond_0

    .line 191
    const/4 v0, -0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->b:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method b(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/ac;->j(I)V

    .line 462
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/ac;->i(I)V

    .line 463
    return-void
.end method

.method b()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget v0, p0, Lcom/mopub/nativeads/ac;->g:I

    new-array v0, v0, [I

    .line 282
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->e:[I

    iget v2, p0, Lcom/mopub/nativeads/ac;->g:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 402
    iget v0, p0, Lcom/mopub/nativeads/ac;->g:I

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mopub/nativeads/ac;->e:[I

    iget v2, p0, Lcom/mopub/nativeads/ac;->g:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/ac;->a(II)I

    goto :goto_0
.end method

.method c(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->e:[I

    iget v2, p0, Lcom/mopub/nativeads/ac;->g:I

    invoke-static {v1, v0, v2, p1}, Lcom/mopub/nativeads/ac;->a([IIII)I

    move-result v1

    .line 261
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method d(I)Lcom/mopub/nativeads/s;
    .locals 3
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->e:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/mopub/nativeads/ac;->g:I

    invoke-static {v0, v1, v2, p1}, Lcom/mopub/nativeads/ac;->a([IIII)I

    move-result v0

    .line 270
    if-gez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->f:[Lcom/mopub/nativeads/s;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method e(I)I
    .locals 3
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->e:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/mopub/nativeads/ac;->g:I

    invoke-static {v0, v1, v2, p1}, Lcom/mopub/nativeads/ac;->a([IIII)I

    move-result v0

    .line 293
    if-gez v0, :cond_0

    .line 294
    xor-int/lit8 v0, v0, -0x1

    sub-int v0, p1, v0

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method f(I)I
    .locals 2
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->d:[I

    iget v1, p0, Lcom/mopub/nativeads/ac;->g:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/ac;->b([III)I

    move-result v0

    .line 307
    add-int/2addr v0, p1

    return v0
.end method

.method g(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 314
    if-nez p1, :cond_1

    .line 315
    const/4 v0, 0x0

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/ac;->e(I)I

    move-result v1

    .line 320
    if-eq v1, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method h(I)I
    .locals 1
    .parameter

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/ac;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method i(I)V
    .locals 3
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->a:[I

    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/ac;->a([III)I

    move-result v0

    .line 417
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    if-ge v0, v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->a:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 419
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->d:[I

    iget v1, p0, Lcom/mopub/nativeads/ac;->g:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/ac;->a([III)I

    move-result v0

    .line 425
    :goto_1
    iget v1, p0, Lcom/mopub/nativeads/ac;->g:I

    if-ge v0, v1, :cond_1

    .line 426
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->d:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 427
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    :cond_1
    return-void
.end method

.method j(I)V
    .locals 3
    .parameter

    .prologue
    .line 439
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->a:[I

    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/ac;->b([III)I

    move-result v0

    .line 443
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/ac;->c:I

    if-ge v0, v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->a:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 445
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/ac;->d:[I

    iget v1, p0, Lcom/mopub/nativeads/ac;->g:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/ac;->b([III)I

    move-result v0

    .line 451
    :goto_1
    iget v1, p0, Lcom/mopub/nativeads/ac;->g:I

    if-ge v0, v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->d:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 453
    iget-object v1, p0, Lcom/mopub/nativeads/ac;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 455
    :cond_1
    return-void
.end method
