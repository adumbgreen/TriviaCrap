.class public Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;
.super Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;
.source "SourceFile"


# instance fields
.field private a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    .line 18
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->b:Landroid/content/Context;

    .line 19
    iput-object p4, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    .line 20
    return-void
.end method

.method private a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 5

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    const-string v1, "le"

    invoke-direct {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->getLevelId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->getLbMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->getLbMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->convertToJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventAttributeMap(Ljava/lang/String;)V

    .line 36
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelStatus(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionId(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionTimeStamp(J)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTimeStamp(J)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->insertInDatabase(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V

    .line 45
    :goto_0
    return-object v0

    .line 43
    :cond_1
    const-string v0, "Please call startSession before calling levelEnd"

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->printWarning(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getLevelStatus()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    return-object v0
.end method

.method public processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;->a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method
