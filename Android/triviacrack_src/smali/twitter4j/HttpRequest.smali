.class public final Ltwitter4j/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_PARAMETERS:[Ltwitter4j/HttpParameter; = null

.field private static final serialVersionUID:J = 0x2eb4a519dbc50ddcL


# instance fields
.field private final authorization:Ltwitter4j/auth/Authorization;

.field private final method:Ltwitter4j/RequestMethod;

.field private final parameters:[Ltwitter4j/HttpParameter;

.field private final requestHeaders:Ljava/util/Map;
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

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    sput-object v0, Ltwitter4j/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

    return-void
.end method

.method public constructor <init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/RequestMethod;",
            "Ljava/lang/String;",
            "[",
            "Ltwitter4j/HttpParameter;",
            "Ltwitter4j/auth/Authorization;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    .line 55
    sget-object v0, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    if-eq p1, v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ltwitter4j/HttpParameter;->encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    .line 57
    sget-object v0, Ltwitter4j/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

    iput-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    .line 62
    :goto_0
    iput-object p4, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    .line 63
    iput-object p5, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    .line 64
    return-void

    .line 59
    :cond_0
    iput-object p2, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 89
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

    .line 91
    :cond_3
    check-cast p1, Ltwitter4j/HttpRequest;

    .line 93
    iget-object v2, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    iget-object v3, p1, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 94
    goto :goto_0

    .line 93
    :cond_5
    iget-object v2, p1, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-nez v2, :cond_4

    .line 95
    :cond_6
    iget-object v2, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    iget-object v3, p1, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 96
    :cond_7
    iget-object v2, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    iget-object v3, p1, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    .line 97
    goto :goto_0

    .line 96
    :cond_9
    iget-object v2, p1, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-nez v2, :cond_8

    .line 98
    :cond_a
    iget-object v2, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    if-eqz v2, :cond_c

    iget-object v2, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    iget-object v3, p1, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    invoke-virtual {v2, v3}, Ltwitter4j/RequestMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    .line 99
    goto :goto_0

    .line 98
    :cond_c
    iget-object v2, p1, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    if-nez v2, :cond_b

    .line 100
    :cond_d
    iget-object v2, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 101
    goto :goto_0

    .line 100
    :cond_e
    iget-object v2, p1, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAuthorization()Ltwitter4j/auth/Authorization;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    return-object v0
.end method

.method public getMethod()Ltwitter4j/RequestMethod;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    return-object v0
.end method

.method public getParameters()[Ltwitter4j/HttpParameter;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
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
    .line 83
    iget-object v0, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    invoke-virtual {v0}, Ltwitter4j/RequestMethod;->hashCode()I

    move-result v0

    .line 109
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 110
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 113
    return v0

    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    :cond_2
    move v0, v1

    .line 109
    goto :goto_1

    :cond_3
    move v0, v1

    .line 110
    goto :goto_2

    :cond_4
    move v0, v1

    .line 111
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequest{requestMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", postParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authentication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
