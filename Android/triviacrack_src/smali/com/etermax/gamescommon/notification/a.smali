.class public Lcom/etermax/gamescommon/notification/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/etermax/gamescommon/notification/a;->a:Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/notification/a;->b:Landroid/content/Intent;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/a;->b:Landroid/content/Intent;

    return-object v0
.end method
