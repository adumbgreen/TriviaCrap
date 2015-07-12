.class public Lorg/b/e/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static k:Lorg/b/e/b/j;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lorg/b/e/b/j;

.field private final i:Lorg/b/d/h;
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

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "([^&=]+)=?([^&=]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/b/e/b/h;->a:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "^(([^:/?#]+):)?(//(([^@/]*)@)?([^/?#:]*)(:(\\d*))?)?([^?#]*)(\\?([^#]*))?(#(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/b/e/b/h;->b:Ljava/util/regex/Pattern;

    .line 79
    const-string v0, "^(http|https):(//(([^@/]*)@)?([^/?#:]*)(:(\\d*))?)?([^?#]*)(\\?(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/b/e/b/h;->c:Ljava/util/regex/Pattern;

    .line 577
    new-instance v0, Lorg/b/e/b/h$1;

    invoke-direct {v0}, Lorg/b/e/b/h$1;-><init>()V

    sput-object v0, Lorg/b/e/b/h;->k:Lorg/b/e/b/j;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lorg/b/e/b/h;->g:I

    .line 92
    sget-object v0, Lorg/b/e/b/h;->k:Lorg/b/e/b/j;

    iput-object v0, p0, Lorg/b/e/b/h;->h:Lorg/b/e/b/j;

    .line 94
    new-instance v0, Lorg/b/d/g;

    invoke-direct {v0}, Lorg/b/d/g;-><init>()V

    iput-object v0, p0, Lorg/b/e/b/h;->i:Lorg/b/d/h;

    .line 106
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/b/e/b/h;
    .locals 4
    .parameter

    .prologue
    .line 150
    const-string v0, "\'uri\' must not be empty"

    invoke-static {p0, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lorg/b/e/b/h;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    new-instance v1, Lorg/b/e/b/h;

    invoke-direct {v1}, Lorg/b/e/b/h;-><init>()V

    .line 155
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/e/b/h;->b(Ljava/lang/String;)Lorg/b/e/b/h;

    .line 156
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/e/b/h;->c(Ljava/lang/String;)Lorg/b/e/b/h;

    .line 157
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/e/b/h;->d(Ljava/lang/String;)Lorg/b/e/b/h;

    .line 158
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v2}, Lorg/b/d/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/b/e/b/h;->a(I)Lorg/b/e/b/h;

    .line 162
    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/e/b/h;->e(Ljava/lang/String;)Lorg/b/e/b/h;

    .line 163
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/e/b/h;->f(Ljava/lang/String;)Lorg/b/e/b/h;

    .line 164
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/b/e/b/h;->g(Ljava/lang/String;)Lorg/b/e/b/h;

    .line 166
    return-object v1

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a valid URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lorg/b/e/b/a;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/b/e/b/h;->a(Z)Lorg/b/e/b/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lorg/b/e/b/a;
    .locals 10
    .parameter

    .prologue
    .line 222
    new-instance v0, Lorg/b/e/b/a;

    iget-object v1, p0, Lorg/b/e/b/h;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/b/e/b/h;->e:Ljava/lang/String;

    iget-object v3, p0, Lorg/b/e/b/h;->f:Ljava/lang/String;

    iget v4, p0, Lorg/b/e/b/h;->g:I

    iget-object v5, p0, Lorg/b/e/b/h;->h:Lorg/b/e/b/j;

    invoke-interface {v5}, Lorg/b/e/b/j;->a()Lorg/b/e/b/d;

    move-result-object v5

    iget-object v6, p0, Lorg/b/e/b/h;->i:Lorg/b/d/h;

    iget-object v7, p0, Lorg/b/e/b/h;->j:Ljava/lang/String;

    const/4 v9, 0x1

    move v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/b/e/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/b/e/b/d;Lorg/b/d/h;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public a(I)Lorg/b/e/b/h;
    .locals 2
    .parameter

    .prologue
    .line 328
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "\'port\' must not be < -1"

    invoke-static {v0, v1}, Lorg/b/d/a;->a(ZLjava/lang/String;)V

    .line 329
    iput p1, p0, Lorg/b/e/b/h;->g:I

    .line 330
    return-object p0

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/b/e/b/h;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 417
    const-string v0, "\'name\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-static {p2}, Lorg/b/d/i;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    array-length v3, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p2, v2

    .line 420
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_1
    iget-object v4, p0, Lorg/b/e/b/h;->i:Lorg/b/d/h;

    invoke-interface {v4, p1, v0}, Lorg/b/d/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 420
    goto :goto_1

    .line 425
    :cond_1
    iget-object v0, p0, Lorg/b/e/b/h;->i:Lorg/b/d/h;

    invoke-interface {v0, p1, v1}, Lorg/b/d/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 427
    :cond_2
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lorg/b/e/b/h;
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lorg/b/e/b/h;->d:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lorg/b/e/b/h;
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lorg/b/e/b/h;->e:Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lorg/b/e/b/h;
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lorg/b/e/b/h;->f:Ljava/lang/String;

    .line 318
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lorg/b/e/b/h;
    .locals 1
    .parameter

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p0, Lorg/b/e/b/h;->h:Lorg/b/e/b/j;

    invoke-interface {v0, p1}, Lorg/b/e/b/j;->a(Ljava/lang/String;)Lorg/b/e/b/j;

    move-result-object v0

    iput-object v0, p0, Lorg/b/e/b/h;->h:Lorg/b/e/b/j;

    .line 346
    :goto_0
    return-object p0

    .line 344
    :cond_0
    sget-object v0, Lorg/b/e/b/h;->k:Lorg/b/e/b/j;

    iput-object v0, p0, Lorg/b/e/b/h;->h:Lorg/b/e/b/j;

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lorg/b/e/b/h;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 381
    if-eqz p1, :cond_0

    .line 382
    sget-object v0, Lorg/b/e/b/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 383
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 385
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p0, v1, v3}, Lorg/b/e/b/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/b/e/b/h;

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lorg/b/e/b/h;->i:Lorg/b/d/h;

    invoke-interface {v0}, Lorg/b/d/h;->clear()V

    .line 392
    :cond_1
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lorg/b/e/b/h;
    .locals 1
    .parameter

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    const-string v0, "\'fragment\' must not be empty"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iput-object p1, p0, Lorg/b/e/b/h;->j:Ljava/lang/String;

    .line 462
    :goto_0
    return-object p0

    .line 460
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/e/b/h;->j:Ljava/lang/String;

    goto :goto_0
.end method
