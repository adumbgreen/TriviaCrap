.class Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-static {v1}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)Lcom/mobileapptracker/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/mobileapptracker/h;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/g; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 113
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)Lcom/mobileapptracker/h;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)Lcom/mobileapptracker/h;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :catch_2
    move-exception v0

    .line 109
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)Lcom/mobileapptracker/h;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :catch_3
    move-exception v0

    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)Lcom/mobileapptracker/h;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
