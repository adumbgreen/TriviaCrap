.class public Lcom/millennialmedia/a/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Ljava/io/Writer;

.field private d:[I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 155
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    move v0, v1

    .line 156
    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    .line 157
    sget-object v2, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 160
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 161
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    .line 162
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 163
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 164
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 165
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 166
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/millennialmedia/a/a/d/c;->b:[Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    .line 168
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    .line 169
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    .line 170
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    .line 171
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/c;->d:[I

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    .line 180
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->a(I)V

    .line 192
    const-string v0, ":"

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/c;->g:Ljava/lang/String;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/a/a/d/c;->k:Z

    .line 209
    if-nez p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    .line 213
    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->d:[I

    iget v1, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private a(IILjava/lang/String;)Lcom/millennialmedia/a/a/d/c;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->a()I

    move-result v0

    .line 363
    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/c;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dangling name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/a/a/d/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_1
    iget v1, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    .line 371
    if-ne v0, p2, :cond_2

    .line 372
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->k()V

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    return-object p0
.end method

.method private a(ILjava/lang/String;)Lcom/millennialmedia/a/a/d/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->e(Z)V

    .line 350
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/d/c;->a(I)V

    .line 351
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 352
    return-object p0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 380
    iget v0, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/c;->d:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 381
    iget v0, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 382
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/c;->d:[I

    iget v2, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iput-object v0, p0, Lcom/millennialmedia/a/a/d/c;->d:[I

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->d:[I

    iget v1, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    aput p1, v0, v1

    .line 386
    return-void
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->d:[I

    iget v1, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 405
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 580
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/c;->i:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/a/a/d/c;->b:[Ljava/lang/String;

    .line 582
    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    .line 585
    :goto_1
    if-ge v3, v4, :cond_6

    .line 586
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 588
    const/16 v5, 0x80

    if-ge v2, v5, :cond_2

    .line 589
    aget-object v2, v0, v2

    .line 590
    if-nez v2, :cond_3

    .line 585
    :cond_0
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 580
    :cond_1
    sget-object v0, Lcom/millennialmedia/a/a/d/c;->a:[Ljava/lang/String;

    goto :goto_0

    .line 593
    :cond_2
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_5

    .line 594
    const-string v2, "\\u2028"

    .line 600
    :cond_3
    :goto_3
    if-ge v1, v3, :cond_4

    .line 601
    iget-object v5, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 603
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 604
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    .line 595
    :cond_5
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_0

    .line 596
    const-string v2, "\\u2029"

    goto :goto_3

    .line 606
    :cond_6
    if-ge v1, v4, :cond_7

    .line 607
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 609
    :cond_7
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method private e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 683
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :pswitch_1
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/c;->h:Z

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/c;->h:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->b(I)V

    .line 685
    :goto_0
    return-void

    .line 668
    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->b(I)V

    .line 669
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->k()V

    goto :goto_0

    .line 673
    :pswitch_4
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 674
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->k()V

    goto :goto_0

    .line 678
    :pswitch_5
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 679
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->b(I)V

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private j()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->l()V

    .line 433
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->d(Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/c;->j:Ljava/lang/String;

    .line 436
    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 614
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 622
    :cond_0
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x1

    iget v1, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 620
    iget-object v2, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    iget-object v3, p0, Lcom/millennialmedia/a/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->a()I

    move-result v0

    .line 631
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->k()V

    .line 637
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->b(I)V

    .line 638
    return-void

    .line 633
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 634
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(J)Lcom/millennialmedia/a/a/d/c;
    .locals 2
    .parameter

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->j()V

    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->e(Z)V

    .line 518
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 519
    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/millennialmedia/a/a/d/c;
    .locals 3
    .parameter

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object p0

    .line 546
    :goto_0
    return-object p0

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->j()V

    .line 537
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-boolean v1, p0, Lcom/millennialmedia/a/a/d/c;->h:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 541
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/millennialmedia/a/a/d/c;->e(Z)V

    .line 545
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;
    .locals 2
    .parameter

    .prologue
    .line 416
    if-nez p1, :cond_0

    .line 417
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 422
    :cond_1
    iget v0, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    if-nez v0, :cond_2

    .line 423
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_2
    iput-object p1, p0, Lcom/millennialmedia/a/a/d/c;->j:Ljava/lang/String;

    .line 426
    return-object p0
.end method

.method public a(Z)Lcom/millennialmedia/a/a/d/c;
    .locals 2
    .parameter

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->j()V

    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->e(Z)V

    .line 485
    iget-object v1, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 486
    return-object p0

    .line 485
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public b()Lcom/millennialmedia/a/a/d/c;
    .locals 2

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->j()V

    .line 308
    const/4 v0, 0x1

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/d/c;->a(ILjava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;
    .locals 1
    .parameter

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object p0

    .line 453
    :goto_0
    return-object p0

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->j()V

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->e(Z)V

    .line 452
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/d/c;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/millennialmedia/a/a/d/c;->h:Z

    .line 250
    return-void
.end method

.method public c()Lcom/millennialmedia/a/a/d/c;
    .locals 3

    .prologue
    .line 318
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/millennialmedia/a/a/d/c;->a(IILjava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/c;->f:Ljava/lang/String;

    .line 228
    const-string v0, ":"

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/c;->g:Ljava/lang/String;

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/a/a/d/c;->f:Ljava/lang/String;

    .line 231
    const-string v0, ": "

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/c;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/millennialmedia/a/a/d/c;->i:Z

    .line 270
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 569
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 571
    iget v0, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    .line 572
    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/a/a/d/c;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 573
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    .line 576
    return-void
.end method

.method public d()Lcom/millennialmedia/a/a/d/c;
    .locals 2

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->j()V

    .line 330
    const/4 v0, 0x3

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/d/c;->a(ILjava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/millennialmedia/a/a/d/c;->k:Z

    .line 288
    return-void
.end method

.method public e()Lcom/millennialmedia/a/a/d/c;
    .locals 3

    .prologue
    .line 340
    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/millennialmedia/a/a/d/c;->a(IILjava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/millennialmedia/a/a/d/c;
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 464
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/c;->k:Z

    if-eqz v0, :cond_1

    .line 465
    invoke-direct {p0}, Lcom/millennialmedia/a/a/d/c;->j()V

    .line 471
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;->e(Z)V

    .line 472
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 473
    :goto_0
    return-object p0

    .line 467
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/d/c;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 555
    iget v0, p0, Lcom/millennialmedia/a/a/d/c;->e:I

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/d/c;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 559
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/c;->h:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/c;->i:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/d/c;->k:Z

    return v0
.end method
