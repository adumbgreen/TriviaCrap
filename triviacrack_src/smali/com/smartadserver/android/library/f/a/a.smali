.class public abstract Lcom/smartadserver/android/library/f/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:J


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field protected d:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/smartadserver/android/library/f/a/a;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/smartadserver/android/library/f/a/a;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/smartadserver/android/library/f/a/a;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/smartadserver/android/library/f/a/a;->c:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/smartadserver/android/library/f/a/a;->d:Landroid/net/ConnectivityManager;

    .line 36
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    const-string v0, "cell"

    .line 57
    iget-object v1, p0, Lcom/smartadserver/android/library/f/a/a;->d:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/smartadserver/android/library/f/a/a;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 61
    const-string v0, "wifi"

    .line 65
    :cond_0
    return-object v0
.end method

.method public abstract a(ILjava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
.end method

.method protected a(Z)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 44
    if-nez p1, :cond_0

    sget-wide v0, Lcom/smartadserver/android/library/f/a/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/smartadserver/android/library/f/a/a;->e:J

    .line 47
    :cond_1
    sget-wide v0, Lcom/smartadserver/android/library/f/a/a;->e:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/client/methods/HttpPost;
.end method
