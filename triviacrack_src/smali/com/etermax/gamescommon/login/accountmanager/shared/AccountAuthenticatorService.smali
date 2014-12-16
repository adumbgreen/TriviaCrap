.class public Lcom/etermax/gamescommon/login/accountmanager/shared/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:Lcom/etermax/gamescommon/login/accountmanager/shared/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/login/accountmanager/shared/AccountAuthenticatorService;->a:Lcom/etermax/gamescommon/login/accountmanager/shared/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    return-void
.end method

.method private a()Lcom/etermax/gamescommon/login/accountmanager/shared/a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/etermax/gamescommon/login/accountmanager/shared/AccountAuthenticatorService;->a:Lcom/etermax/gamescommon/login/accountmanager/shared/a;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/etermax/gamescommon/login/accountmanager/shared/a;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/login/accountmanager/shared/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/etermax/gamescommon/login/accountmanager/shared/AccountAuthenticatorService;->a:Lcom/etermax/gamescommon/login/accountmanager/shared/a;

    .line 30
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/login/accountmanager/shared/AccountAuthenticatorService;->a:Lcom/etermax/gamescommon/login/accountmanager/shared/a;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/accountmanager/shared/AccountAuthenticatorService;->a()Lcom/etermax/gamescommon/login/accountmanager/shared/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/accountmanager/shared/a;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 23
    :cond_0
    return-object v0
.end method
