.class Ltwitter4j/ResponseListImpl;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Ltwitter4j/ResponseList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Ltwitter4j/ResponseList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7e5ed61656096958L


# instance fields
.field private transient accessLevel:I

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method constructor <init>(ILtwitter4j/HttpResponse;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 37
    invoke-direct {p0, p2}, Ltwitter4j/ResponseListImpl;->init(Ltwitter4j/HttpResponse;)V

    .line 38
    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 32
    invoke-direct {p0, p1}, Ltwitter4j/ResponseListImpl;->init(Ltwitter4j/HttpResponse;)V

    .line 33
    return-void
.end method

.method constructor <init>(Ltwitter4j/RateLimitStatus;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 42
    iput-object p1, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 43
    iput p2, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    .line 44
    return-void
.end method

.method private init(Ltwitter4j/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-static {p1}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 48
    invoke-static {p1}, Ltwitter4j/ParseUtil;->toAccessLevel(Ltwitter4j/HttpResponse;)I

    move-result v0

    iput v0, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    .line 49
    return-void
.end method


# virtual methods
.method public getAccessLevel()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    return v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method
