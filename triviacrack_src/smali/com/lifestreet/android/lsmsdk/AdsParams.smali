.class public final Lcom/lifestreet/android/lsmsdk/AdsParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROPERTY_REQUEST_ID:Ljava/lang/String; = "requestId"


# instance fields
.field private final mRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdsParams;->mRequestId:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdsParams;->mRequestId:Ljava/lang/String;

    return-object v0
.end method
