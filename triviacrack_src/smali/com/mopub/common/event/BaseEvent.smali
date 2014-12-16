.class public abstract Lcom/mopub/common/event/BaseEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/mopub/common/ClientMetadata;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method constructor <init>(Lcom/mopub/common/event/BaseEvent$Type;Ljava/lang/String;Lcom/mopub/common/ClientMetadata;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->d:J

    .line 23
    iget-object v0, p1, Lcom/mopub/common/event/BaseEvent$Type;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->b:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/mopub/common/event/BaseEvent;->c:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/mopub/common/event/BaseEvent;->a:Lcom/mopub/common/ClientMetadata;

    .line 26
    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimeUtcMillis()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->d:J

    return-wide v0
.end method

.method public getMetadata()Lcom/mopub/common/ClientMetadata;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->a:Lcom/mopub/common/ClientMetadata;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->c:Ljava/lang/String;

    return-object v0
.end method
