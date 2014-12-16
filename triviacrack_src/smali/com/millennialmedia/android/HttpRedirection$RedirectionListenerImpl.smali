.class Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/HttpRedirection$Listener;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/net/Uri;

.field d:Ljava/lang/String;

.field e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method


# virtual methods
.method public canOpenOverlay()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getOverlaySettings()Lcom/millennialmedia/android/OverlaySettings;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public isActivityStartable(Landroid/net/Uri;)Z
    .locals 1
    .parameter

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public isExpandingToUrl()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isHandlingMMVideo(Landroid/net/Uri;)Z
    .locals 1
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public startingActivity(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    .line 144
    const-string v0, "HttpRedirection"

    const-string v1, "Starting activity for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public startingVideo()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public updateLastVideoViewedTime()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
