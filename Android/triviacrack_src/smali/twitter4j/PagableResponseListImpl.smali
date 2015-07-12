.class Ltwitter4j/PagableResponseListImpl;
.super Ltwitter4j/ResponseListImpl;
.source "SourceFile"

# interfaces
.implements Ltwitter4j/PagableResponseList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltwitter4j/ResponseListImpl;",
        "Ltwitter4j/PagableResponseList;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x776622078d3c326bL


# instance fields
.field private final nextCursor:J

.field private final previousCursor:J


# direct methods
.method constructor <init>(ILtwitter4j/JSONObject;Ltwitter4j/HttpResponse;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p3}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    .line 36
    const-string v0, "previous_cursor"

    invoke-static {v0, p2}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->previousCursor:J

    .line 37
    const-string v0, "next_cursor"

    invoke-static {v0, p2}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->nextCursor:J

    .line 38
    return-void
.end method

.method constructor <init>(Ltwitter4j/RateLimitStatus;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Ltwitter4j/ResponseListImpl;-><init>(Ltwitter4j/RateLimitStatus;I)V

    .line 30
    iput-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->previousCursor:J

    .line 31
    iput-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->nextCursor:J

    .line 32
    return-void
.end method


# virtual methods
.method public getNextCursor()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/PagableResponseListImpl;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/PagableResponseListImpl;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
