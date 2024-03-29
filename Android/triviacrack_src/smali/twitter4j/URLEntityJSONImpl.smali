.class final Ltwitter4j/URLEntityJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "SourceFile"

# interfaces
.implements Ltwitter4j/URLEntity;


# static fields
.field private static final serialVersionUID:J = 0x65c6035c458ad1a4L


# instance fields
.field private displayURL:Ljava/lang/String;

.field private expandedURL:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 49
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Ltwitter4j/URLEntityJSONImpl;->setStart(I)V

    .line 40
    invoke-virtual {p0, p2}, Ltwitter4j/URLEntityJSONImpl;->setEnd(I)V

    .line 41
    iput-object p3, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    .line 44
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Ltwitter4j/URLEntityJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 35
    return-void
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    :try_start_0
    const-string v0, "indices"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ltwitter4j/URLEntityJSONImpl;->setStart(I)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/URLEntityJSONImpl;->setEnd(I)V

    .line 57
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    .line 58
    const-string v0, "expanded_url"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string v0, "expanded_url"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    .line 66
    :goto_0
    const-string v0, "display_url"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string v0, "display_url"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    .line 76
    :goto_1
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    iput-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 71
    :cond_1
    :try_start_1
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    iput-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;
    :try_end_1
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 129
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

    .line 131
    :cond_3
    check-cast p1, Ltwitter4j/URLEntityJSONImpl;

    .line 133
    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 134
    :cond_6
    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 135
    :cond_9
    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getDisplayURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v0

    return v0
.end method

.method public getExpandedURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 143
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 145
    return v0

    :cond_1
    move v0, v1

    .line 142
    goto :goto_0

    :cond_2
    move v0, v1

    .line 143
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLEntityJSONImpl{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expandedURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/URLEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
