.class public Ltwitter4j/auth/NullAuthorization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/Authorization;


# static fields
.field private static final SINGLETON:Ltwitter4j/auth/NullAuthorization; = null

.field private static final serialVersionUID:J = -0x6aec7b2c6e05cd56L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ltwitter4j/auth/NullAuthorization;

    invoke-direct {v0}, Ltwitter4j/auth/NullAuthorization;-><init>()V

    sput-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Ltwitter4j/auth/NullAuthorization;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    sget-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "NullAuthentication{SINGLETON}"

    return-object v0
.end method
