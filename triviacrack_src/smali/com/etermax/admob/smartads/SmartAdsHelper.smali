.class public Lcom/etermax/admob/smartads/SmartAdsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private formatId:I

.field private pageId:Ljava/lang/String;

.field private siteId:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Missing sid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Missing pid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    const-string v0, "fid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Missing fid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_2
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/admob/smartads/SmartAdsHelper;->siteId:I

    .line 30
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsHelper;->pageId:Ljava/lang/String;

    .line 31
    const-string v0, "fid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/admob/smartads/SmartAdsHelper;->formatId:I

    .line 33
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartAdsHelper - siteId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/etermax/admob/smartads/SmartAdsHelper;->siteId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/admob/smartads/SmartAdsHelper;->pageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", formatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/etermax/admob/smartads/SmartAdsHelper;->formatId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getFormatId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/etermax/admob/smartads/SmartAdsHelper;->formatId:I

    return v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsHelper;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/etermax/admob/smartads/SmartAdsHelper;->siteId:I

    return v0
.end method
