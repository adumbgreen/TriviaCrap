.class public Lcom/inmobi/androidsdk/carb/CarbConfigParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:J

.field e:I

.field f:J

.field g:J

.field h:Lcom/inmobi/commons/uid/UID;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3c

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->a:Z

    .line 29
    const-string v0, "http://dock.inmobi.com/carb/v1/i"

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->b:Ljava/lang/String;

    .line 30
    const-string v0, "http://dock.inmobi.com/carb/v1/o"

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->c:Ljava/lang/String;

    .line 31
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->d:J

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->e:I

    .line 33
    iput-wide v2, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->f:J

    .line 34
    iput-wide v2, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->g:J

    .line 36
    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->h:Lcom/inmobi/commons/uid/UID;

    return-void
.end method


# virtual methods
.method public getCarbEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCarbPostpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRetreiveFrequncy()J
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->d:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->e:I

    return v0
.end method

.method public getRetryInterval()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->f:J

    return-wide v0
.end method

.method public getTimeoutInterval()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->g:J

    return-wide v0
.end method

.method public getUID()Lcom/inmobi/commons/uid/UID;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->h:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method

.method public isCarbEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->a:Z

    return v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x3c

    const/4 v6, 0x0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->h:Lcom/inmobi/commons/uid/UID;

    const-string v0, "ids"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    .line 81
    const-string v0, "enabled"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->a:Z

    .line 82
    const-string v0, "gep"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->b:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->b:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->b:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    const-string v0, "CarbConfigParams"

    const-string v1, "Invalid value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->h:Lcom/inmobi/commons/uid/UID;

    .line 109
    iput-boolean v6, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->a:Z

    .line 110
    const-string v0, "http://dock.inmobi.com/carb/v1/i"

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->b:Ljava/lang/String;

    .line 111
    const-string v0, "http://dock.inmobi.com/carb/v1/o"

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->c:Ljava/lang/String;

    .line 112
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->d:J

    .line 113
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->e:I

    .line 114
    iput-wide v7, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->f:J

    .line 115
    iput-wide v7, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->g:J

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 90
    :cond_0
    :try_start_1
    const-string v0, "pep"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->c:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->c:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->c:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    const-string v1, "fq_s"

    const-wide/16 v2, 0x1

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->d:J

    .line 100
    const-string v0, "mr"

    const/4 v1, 0x0

    const-wide/32 v2, 0x7fffffff

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->e:I

    .line 101
    const-string v1, "ri"

    const-wide/16 v2, 0x1

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->f:J

    .line 102
    const-string v1, "to"

    const-wide/16 v2, 0x1

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->g:J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    return-void
.end method
