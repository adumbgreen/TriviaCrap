.class public final Lcom/etermax/preguntados/notification/services/CommonNotificationActionService_;
.super Lcom/etermax/preguntados/notification/services/CommonNotificationActionService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService;-><init>()V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/notification/services/a;
    .locals 1
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/etermax/preguntados/notification/services/a;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/notification/services/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService_;->b:Lcom/etermax/gamescommon/datasource/l;

    .line 31
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService_;->a:Lcom/etermax/preguntados/datasource/d;

    .line 32
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService_;->c:Lcom/etermax/gamescommon/login/datasource/a;

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService_;->a()V

    .line 38
    invoke-super {p0}, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService;->onCreate()V

    .line 39
    return-void
.end method
