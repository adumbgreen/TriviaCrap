.class public Lcom/google/android/gms/internal/cw;
.super Lcom/google/android/gms/internal/dl;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/gms/internal/cz;

.field private c:Landroid/content/Context;

.field private d:Lcom/google/android/gms/internal/du;

.field private e:Lcom/google/android/gms/internal/de;

.field private f:Lcom/google/android/gms/internal/ct;

.field private g:Lcom/google/android/gms/internal/cx;

.field private h:Lcom/google/android/gms/internal/dc;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/dl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cw;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cz;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cw;->b:Lcom/google/android/gms/internal/cz;

    return-void
.end method

.method public static a(Landroid/content/Context;ZLcom/google/android/gms/internal/cr;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.purchase.InAppPurchaseActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cr;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/cr;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZILandroid/content/Intent;)V
    .locals 8

    :try_start_0
    iget-object v7, p0, Lcom/google/android/gms/internal/cw;->d:Lcom/google/android/gms/internal/du;

    new-instance v0, Lcom/google/android/gms/internal/cy;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/cw;->g:Lcom/google/android/gms/internal/cx;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/cy;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/cx;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/dq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Fail to invoke PlayStorePurchaseListener."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->a(Landroid/content/Intent;)Lcom/google/android/gms/internal/cr;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/cr;->b:Lcom/google/android/gms/internal/du;

    iput-object v1, p0, Lcom/google/android/gms/internal/cw;->d:Lcom/google/android/gms/internal/du;

    iget-object v1, v0, Lcom/google/android/gms/internal/cr;->c:Lcom/google/android/gms/internal/dc;

    iput-object v1, p0, Lcom/google/android/gms/internal/cw;->h:Lcom/google/android/gms/internal/dc;

    iget-object v1, v0, Lcom/google/android/gms/internal/cr;->d:Lcom/google/android/gms/internal/de;

    iput-object v1, p0, Lcom/google/android/gms/internal/cw;->e:Lcom/google/android/gms/internal/de;

    new-instance v1, Lcom/google/android/gms/internal/ct;

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ct;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/cw;->f:Lcom/google/android/gms/internal/ct;

    iget-object v0, v0, Lcom/google/android/gms/internal/cr;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/cw;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/internal/db;->a(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->h:Lcom/google/android/gms/internal/dc;

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Lcom/google/android/gms/internal/dc;->a(Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->e:Lcom/google/android/gms/internal/de;

    invoke-interface {v1}, Lcom/google/android/gms/internal/de;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;ZILandroid/content/Intent;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->e:Lcom/google/android/gms/internal/de;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/de;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v3, p0, Lcom/google/android/gms/internal/cw;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->e:Lcom/google/android/gms/internal/de;

    invoke-interface {v1}, Lcom/google/android/gms/internal/de;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;ZILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Fail to process purchase result."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v3, p0, Lcom/google/android/gms/internal/cw;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->b:Lcom/google/android/gms/internal/cz;

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->g:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cz;->a(Lcom/google/android/gms/internal/cx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->e:Lcom/google/android/gms/internal/de;

    invoke-interface {v1}, Lcom/google/android/gms/internal/de;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;ZILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/cw;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->f:Lcom/google/android/gms/internal/ct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ct;->a()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->f:Lcom/google/android/gms/internal/ct;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ct;->a(Landroid/os/IBinder;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->h:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dc;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/cw;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->f:Lcom/google/android/gms/internal/ct;

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cw;->e:Lcom/google/android/gms/internal/de;

    invoke-interface {v3}, Lcom/google/android/gms/internal/de;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/cw;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ct;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v1, "BUY_INTENT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/google/android/gms/internal/db;->a(Landroid/os/Bundle;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->e:Lcom/google/android/gms/internal/de;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/de;->c(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->e:Lcom/google/android/gms/internal/de;

    invoke-interface {v2}, Lcom/google/android/gms/internal/de;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;ZILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/cx;

    iget-object v3, p0, Lcom/google/android/gms/internal/cw;->e:Lcom/google/android/gms/internal/de;

    invoke-interface {v3}, Lcom/google/android/gms/internal/de;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/cw;->i:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/cx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/cw;->g:Lcom/google/android/gms/internal/cx;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->b:Lcom/google/android/gms/internal/cz;

    iget-object v3, p0, Lcom/google/android/gms/internal/cw;->g:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/cz;->b(Lcom/google/android/gms/internal/cx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x3e9

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v2, "Error when connecting in-app billing service"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->f:Lcom/google/android/gms/internal/ct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ct;->a()V

    return-void
.end method
