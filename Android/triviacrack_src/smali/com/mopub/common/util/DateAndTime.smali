.class public Lcom/mopub/common/util/DateAndTime;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/common/util/DateAndTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/mopub/common/util/DateAndTime;

    invoke-direct {v0}, Lcom/mopub/common/util/DateAndTime;-><init>()V

    sput-object v0, Lcom/mopub/common/util/DateAndTime;->a:Lcom/mopub/common/util/DateAndTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeZoneOffsetString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->localTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 28
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static localTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/mopub/common/util/DateAndTime;->a:Lcom/mopub/common/util/DateAndTime;

    invoke-virtual {v0}, Lcom/mopub/common/util/DateAndTime;->internalLocalTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static now()Ljava/util/Date;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mopub/common/util/DateAndTime;->a:Lcom/mopub/common/util/DateAndTime;

    invoke-virtual {v0}, Lcom/mopub/common/util/DateAndTime;->internalNow()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/common/util/DateAndTime;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12
    sput-object p0, Lcom/mopub/common/util/DateAndTime;->a:Lcom/mopub/common/util/DateAndTime;

    .line 13
    return-void
.end method


# virtual methods
.method public internalLocalTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public internalNow()Ljava/util/Date;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
