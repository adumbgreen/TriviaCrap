.class public Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;
.super Lcom/etermax/tools/widget/CustomFontTextView;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field protected a:Lcom/etermax/gamescommon/dashboard/tabs/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/tools/widget/CustomFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setNotificationKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BadgeView necesita el notificationKey con el cual obtener las notificaciones del BadgeNotificationManager."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    new-instance v0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;-><init>(Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method
