.class public final Ltwitter4j/HttpResponseEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final request:Ltwitter4j/HttpRequest;

.field private final response:Ltwitter4j/HttpResponse;

.field private final twitterException:Ltwitter4j/TwitterException;


# direct methods
.method constructor <init>(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponse;Ltwitter4j/TwitterException;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    .line 33
    iput-object p2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    .line 34
    iput-object p3, p0, Ltwitter4j/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 71
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

    .line 73
    :cond_3
    check-cast p1, Ltwitter4j/HttpResponseEvent;

    .line 75
    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    iget-object v3, p1, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v2, v3}, Ltwitter4j/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 76
    goto :goto_0

    .line 75
    :cond_5
    iget-object v2, p1, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-nez v2, :cond_4

    .line 77
    :cond_6
    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    iget-object v3, p1, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 78
    goto :goto_0

    .line 77
    :cond_7
    iget-object v2, p1, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getRequest()Ltwitter4j/HttpRequest;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    return-object v0
.end method

.method public getResponse()Ltwitter4j/HttpResponse;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    return-object v0
.end method

.method public getTwitterException()Ltwitter4j/TwitterException;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/HttpRequest;->hashCode()I

    move-result v0

    .line 86
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 87
    return v0

    :cond_1
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponseEvent{request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
