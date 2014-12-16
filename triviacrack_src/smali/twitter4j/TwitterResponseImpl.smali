.class abstract Ltwitter4j/TwitterResponseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/TwitterResponse;


# static fields
.field private static final serialVersionUID:J = 0x6700d950500789e0L


# instance fields
.field private final transient accessLevel:I

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/TwitterResponseImpl;->accessLevel:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ltwitter4j/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 39
    invoke-static {p1}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 40
    invoke-static {p1}, Ltwitter4j/ParseUtil;->toAccessLevel(Ltwitter4j/HttpResponse;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TwitterResponseImpl;->accessLevel:I

    .line 41
    return-void
.end method


# virtual methods
.method public getAccessLevel()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Ltwitter4j/TwitterResponseImpl;->accessLevel:I

    return v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method
