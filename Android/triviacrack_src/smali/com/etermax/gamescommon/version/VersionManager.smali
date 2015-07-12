.class public Lcom/etermax/gamescommon/version/VersionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mPreferences:Lcom/etermax/gamescommon/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static forceUpdate(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/etermax/gamescommon/login/ui/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/login/ui/k;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 58
    return-void
.end method

.method private suggestUpdate(Landroid/support/v4/app/FragmentActivity;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    .line 62
    iget-object v0, p0, Lcom/etermax/gamescommon/version/VersionManager;->mPreferences:Lcom/etermax/gamescommon/e;

    const-string v1, "suggest_time"

    invoke-virtual {v0, v1, v8, v9}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    sub-long v4, v2, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    :cond_0
    cmp-long v0, v0, v8

    if-nez v0, :cond_2

    .line 66
    :cond_1
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/u;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/login/ui/u;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/login/ui/u;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/version/VersionManager;->mPreferences:Lcom/etermax/gamescommon/e;

    const-string v1, "suggest_time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 71
    :cond_2
    return-void
.end method


# virtual methods
.method public checkVersionUpdate(Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;Landroid/support/v4/app/FragmentActivity;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    sget-object v1, Lcom/etermax/gamescommon/version/VersionManager$1;->$SwitchMap$com$etermax$gamescommon$version$VersionManager$VersionStatusType:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/version/VersionManager$VersionStatusType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 36
    :pswitch_0
    invoke-static {p2}, Lcom/etermax/gamescommon/version/VersionManager;->forceUpdate(Landroid/support/v4/app/FragmentActivity;)V

    .line 37
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/etermax/gamescommon/version/VersionManager;->suggestUpdate(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
