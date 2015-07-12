.class public final Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService_;
.super Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService;-><init>()V

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/notification/a;
    .locals 1
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/etermax/gamescommon/notification/a;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/notification/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService_;->a:Lcom/etermax/gamescommon/datasource/l;

    .line 29
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService_;->a()V

    .line 34
    invoke-super {p0}, Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService;->onCreate()V

    .line 35
    return-void
.end method
