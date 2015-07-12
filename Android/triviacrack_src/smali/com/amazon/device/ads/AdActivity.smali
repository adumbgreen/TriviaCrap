.class public Lcom/amazon/device/ads/AdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final ADAPTER_KEY:Ljava/lang/String; = "adapter"

.field private static final LOG_TAG:Ljava/lang/String; = "AdAdapter"


# instance fields
.field private adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "adapter"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 48
    const-string v0, "AdAdapter"

    const-string v2, "Unable to launch the AdActivity due to an internal error."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 105
    :goto_0
    return-object v0

    .line 55
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 82
    const/4 v2, 0x0

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    const-string v0, "AdAdapter"

    const-string v2, "Unable to get the adapter class."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 60
    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 70
    const-string v0, "AdAdapter"

    const-string v2, "Security exception when trying to get the default constructor."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 73
    :catch_2
    move-exception v0

    .line 75
    const-string v0, "AdAdapter"

    const-string v2, "No default constructor exists for the adapter."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 76
    goto :goto_0

    .line 84
    :catch_3
    move-exception v0

    .line 86
    const-string v0, "AdAdapter"

    const-string v2, "Illegal arguments given to the default constructor."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 87
    goto :goto_0

    .line 89
    :catch_4
    move-exception v0

    .line 91
    const-string v0, "AdAdapter"

    const-string v2, "Instantiation exception when instantiating the adapter."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 92
    goto :goto_0

    .line 94
    :catch_5
    move-exception v0

    .line 96
    const-string v0, "AdAdapter"

    const-string v2, "Illegal access exception when instantiating the adapter."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 97
    goto :goto_0

    .line 99
    :catch_6
    move-exception v0

    .line 101
    const-string v0, "AdAdapter"

    const-string v2, "Invocation target exception when instantiating the adapter."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 102
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/IInternalAdRegistration;->contextReceived(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->createAdapter()Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    .line 30
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->finish()V

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0, p0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->setActivity(Landroid/app/Activity;)V

    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->preOnCreate()V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onCreate()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onPause()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onResume()V

    .line 120
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onStop()V

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 127
    return-void
.end method
