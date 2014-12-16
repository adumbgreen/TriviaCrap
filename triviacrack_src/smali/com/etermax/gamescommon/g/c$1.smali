.class Lcom/etermax/gamescommon/g/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/g/c;->a(Lcom/etermax/gamescommon/g/g;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/g/g;

.field final synthetic b:Lcom/etermax/gamescommon/g/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/g/c;Lcom/etermax/gamescommon/g/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/g/c$1;->a:Lcom/etermax/gamescommon/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    invoke-static {p2}, Lcom/a/a/a/b;->a(Landroid/os/IBinder;)Lcom/a/a/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/gamescommon/g/c;->i:Lcom/a/a/a/a;

    .line 222
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/g/c;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    iget-object v1, v1, Lcom/etermax/gamescommon/g/c;->i:Lcom/a/a/a/a;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 228
    if-eqz v1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->a:Lcom/etermax/gamescommon/g/g;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->a:Lcom/etermax/gamescommon/g/g;

    new-instance v2, Lcom/etermax/gamescommon/g/i;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/etermax/gamescommon/g/g;->a(Lcom/etermax/gamescommon/g/i;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/etermax/gamescommon/g/c;->e:Z

    .line 261
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    iget-object v1, v1, Lcom/etermax/gamescommon/g/c;->i:Lcom/a/a/a/a;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 241
    if-nez v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/etermax/gamescommon/g/c;->e:Z

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/etermax/gamescommon/g/c;->d:Z

    .line 249
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/etermax/gamescommon/g/c;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->a:Lcom/etermax/gamescommon/g/g;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->a:Lcom/etermax/gamescommon/g/g;

    new-instance v1, Lcom/etermax/gamescommon/g/i;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/g/g;->a(Lcom/etermax/gamescommon/g/i;)V

    goto :goto_0

    .line 245
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$1;->a:Lcom/etermax/gamescommon/g/g;

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$1;->a:Lcom/etermax/gamescommon/g/g;

    new-instance v2, Lcom/etermax/gamescommon/g/i;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/etermax/gamescommon/g/g;->a(Lcom/etermax/gamescommon/g/i;)V

    .line 254
    :cond_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/g/c;->c(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$1;->b:Lcom/etermax/gamescommon/g/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/etermax/gamescommon/g/c;->i:Lcom/a/a/a/a;

    .line 216
    return-void
.end method
