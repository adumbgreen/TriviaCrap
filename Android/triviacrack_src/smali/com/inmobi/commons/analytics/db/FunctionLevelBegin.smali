.class public Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;
.super Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->a:Landroid/content/Context;

    .line 21
    iput-object p4, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->b:Ljava/util/Map;

    .line 22
    iput p2, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->c:I

    .line 23
    iput-object p3, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->d:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    const-string v1, "lb"

    invoke-direct {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 42
    iget v1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelId(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelName(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->b:Ljava/util/Map;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->convertToJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventAttributeMap(Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionId(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionTimeStamp(J)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTimeStamp(J)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->insertInDatabase(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V

    .line 54
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getLbMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->b:Ljava/util/Map;

    return-object v0
.end method

.method protected getLevelId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->c:I

    return v0
.end method

.method protected getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->d:Ljava/lang/String;

    return-object v0
.end method

.method public processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;->a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method
