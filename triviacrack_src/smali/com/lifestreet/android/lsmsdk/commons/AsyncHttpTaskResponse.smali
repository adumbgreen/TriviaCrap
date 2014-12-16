.class public final Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContentType:Ljava/lang/String;

.field private final mResponseBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->mResponseBody:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->mContentType:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->mResponseBody:Ljava/lang/String;

    return-object v0
.end method
