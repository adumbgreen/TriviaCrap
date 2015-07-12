.class public final Ltwitter4j/Query;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KILOMETERS:Ltwitter4j/Query$Unit; = null

.field public static final MILES:Ltwitter4j/Query$Unit; = null

.field public static final MIXED:Ltwitter4j/Query$ResultType; = null

.field public static final POPULAR:Ltwitter4j/Query$ResultType; = null

.field public static final RECENT:Ltwitter4j/Query$ResultType; = null

.field private static final WITH_TWITTER_USER_ID:Ltwitter4j/HttpParameter; = null

.field private static final serialVersionUID:J = 0x63dec3c8328258c3L


# instance fields
.field private count:I

.field private geocode:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private maxId:J

.field private nextPageQuery:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private resultType:Ltwitter4j/Query$ResultType;

.field private since:Ljava/lang/String;

.field private sinceId:J

.field private until:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 287
    sget-object v0, Ltwitter4j/Query$Unit;->mi:Ltwitter4j/Query$Unit;

    sput-object v0, Ltwitter4j/Query;->MILES:Ltwitter4j/Query$Unit;

    .line 288
    sget-object v0, Ltwitter4j/Query$Unit;->km:Ltwitter4j/Query$Unit;

    sput-object v0, Ltwitter4j/Query;->KILOMETERS:Ltwitter4j/Query$Unit;

    .line 370
    sget-object v0, Ltwitter4j/Query$ResultType;->mixed:Ltwitter4j/Query$ResultType;

    sput-object v0, Ltwitter4j/Query;->MIXED:Ltwitter4j/Query$ResultType;

    .line 374
    sget-object v0, Ltwitter4j/Query$ResultType;->popular:Ltwitter4j/Query$ResultType;

    sput-object v0, Ltwitter4j/Query;->POPULAR:Ltwitter4j/Query$ResultType;

    .line 378
    sget-object v0, Ltwitter4j/Query$ResultType;->recent:Ltwitter4j/Query$ResultType;

    sput-object v0, Ltwitter4j/Query;->RECENT:Ltwitter4j/Query$ResultType;

    .line 416
    new-instance v0, Ltwitter4j/HttpParameter;

    const-string v1, "with_twitter_user_id"

    const-string v2, "true"

    invoke-direct {v0, v1, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/Query;->WITH_TWITTER_USER_ID:Ltwitter4j/HttpParameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 36
    iput-wide v2, p0, Ltwitter4j/Query;->maxId:J

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/Query;->count:I

    .line 38
    iput-object v1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 39
    iput-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    .line 40
    iput-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    .line 43
    iput-object v1, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 36
    iput-wide v2, p0, Ltwitter4j/Query;->maxId:J

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/Query;->count:I

    .line 38
    iput-object v1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 39
    iput-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    .line 40
    iput-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    .line 43
    iput-object v1, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    .line 445
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    return-void
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    if-eqz p2, :cond_0

    .line 439
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    return-void
.end method

.method static createWithNextPageQuery(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 1
    .parameter

    .prologue
    .line 53
    new-instance v0, Ltwitter4j/Query;

    invoke-direct {v0}, Ltwitter4j/Query;-><init>()V

    .line 54
    iput-object p0, v0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    .line 55
    return-object v0
.end method


# virtual methods
.method asHttpParameterArray()[Ltwitter4j/HttpParameter;
    .locals 4

    .prologue
    .line 419
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 420
    const-string v1, "q"

    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 421
    const-string v1, "lang"

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 422
    const-string v1, "locale"

    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 423
    const-string v1, "max_id"

    iget-wide v2, p0, Ltwitter4j/Query;->maxId:J

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 424
    const-string v1, "count"

    iget v2, p0, Ltwitter4j/Query;->count:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 425
    const-string v1, "since"

    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 426
    const-string v1, "since_id"

    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 427
    const-string v1, "geocode"

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 428
    const-string v1, "until"

    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 429
    iget-object v1, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    if-eqz v1, :cond_0

    .line 430
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "result_type"

    iget-object v3, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    invoke-virtual {v3}, Ltwitter4j/Query$ResultType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_0
    sget-object v1, Ltwitter4j/Query;->WITH_TWITTER_USER_ID:Ltwitter4j/HttpParameter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/HttpParameter;

    .line 434
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/HttpParameter;

    return-object v0
.end method

.method public count(I)Ltwitter4j/Query;
    .locals 0
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setCount(I)V

    .line 213
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 455
    if-ne p0, p1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 456
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 458
    :cond_3
    check-cast p1, Ltwitter4j/Query;

    .line 460
    iget-wide v2, p0, Ltwitter4j/Query;->maxId:J

    iget-wide v4, p1, Ltwitter4j/Query;->maxId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 461
    :cond_4
    iget v2, p0, Ltwitter4j/Query;->count:I

    iget v3, p1, Ltwitter4j/Query;->count:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 462
    :cond_5
    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v4, p1, Ltwitter4j/Query;->sinceId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 463
    :cond_6
    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 464
    :cond_9
    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 465
    :cond_c
    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 466
    :cond_f
    iget-object v2, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    .line 467
    goto :goto_0

    .line 466
    :cond_11
    iget-object v2, p1, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 468
    :cond_12
    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 469
    :cond_15
    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    if-eqz v2, :cond_17

    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    iget-object v3, p1, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    invoke-virtual {v2, v3}, Ltwitter4j/Query$ResultType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p1, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    if-nez v2, :cond_16

    .line 470
    :cond_18
    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p1, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 471
    :cond_1b
    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p1, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public geoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-virtual {p0, p1, p2, p3, p4}, Ltwitter4j/Query;->setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V

    .line 332
    return-object p0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Ltwitter4j/Query;->count:I

    return v0
.end method

.method public getGeocode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxId()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Ltwitter4j/Query;->maxId:J

    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()Ltwitter4j/Query$ResultType;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    return-object v0
.end method

.method public getSince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    return-object v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Ltwitter4j/Query;->sinceId:J

    return-wide v0
.end method

.method public getUntil()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 479
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 480
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 481
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Query;->maxId:J

    iget-wide v4, p0, Ltwitter4j/Query;->maxId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 482
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ltwitter4j/Query;->count:I

    add-int/2addr v0, v2

    .line 483
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 484
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v4, p0, Ltwitter4j/Query;->sinceId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 485
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 486
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 487
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    invoke-virtual {v0}, Ltwitter4j/Query$ResultType;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 488
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 489
    return v0

    :cond_1
    move v0, v1

    .line 478
    goto :goto_0

    :cond_2
    move v0, v1

    .line 479
    goto :goto_1

    :cond_3
    move v0, v1

    .line 480
    goto :goto_2

    :cond_4
    move v0, v1

    .line 483
    goto :goto_3

    :cond_5
    move v0, v1

    .line 485
    goto :goto_4

    :cond_6
    move v0, v1

    .line 486
    goto :goto_5

    :cond_7
    move v0, v1

    .line 487
    goto :goto_6
.end method

.method public lang(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setLang(Ljava/lang/String;)V

    .line 119
    return-object p0
.end method

.method public locale(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setLocale(Ljava/lang/String;)V

    .line 151
    return-object p0
.end method

.method public maxId(J)Ltwitter4j/Query;
    .locals 0
    .parameter

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Query;->setMaxId(J)V

    .line 183
    return-object p0
.end method

.method nextPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    return-object v0
.end method

.method public query(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setQuery(Ljava/lang/String;)V

    .line 89
    return-object p0
.end method

.method public resultType(Ltwitter4j/Query$ResultType;)Ltwitter4j/Query;
    .locals 0
    .parameter

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setResultType(Ltwitter4j/Query$ResultType;)V

    .line 413
    return-object p0
.end method

.method public setCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput p1, p0, Ltwitter4j/Query;->count:I

    .line 202
    return-void
.end method

.method public setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setGeoCode(Ltwitter4j/GeoLocation;DLtwitter4j/Query$Unit;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ltwitter4j/Query$Unit;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setMaxId(J)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-wide p1, p0, Ltwitter4j/Query;->maxId:J

    .line 172
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setResultType(Ltwitter4j/Query$ResultType;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    .line 402
    return-void
.end method

.method public setSince(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setSinceId(J)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-wide p1, p0, Ltwitter4j/Query;->sinceId:J

    .line 264
    return-void
.end method

.method public setUntil(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public since(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setSince(Ljava/lang/String;)V

    .line 245
    return-object p0
.end method

.method public sinceId(J)Ltwitter4j/Query;
    .locals 0
    .parameter

    .prologue
    .line 274
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Query;->setSinceId(J)V

    .line 275
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query{query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Query;->maxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Query;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", since=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Query;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geocode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", until=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextPageQuery=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public until(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .parameter

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setUntil(Ljava/lang/String;)V

    .line 364
    return-object p0
.end method
