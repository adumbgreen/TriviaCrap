.class public Lcom/etermax/preguntados/ui/withoutcoins/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/g;->b:Landroid/content/SharedPreferences;

    const-string v1, "show_without_coins"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/g;->a:Landroid/content/Context;

    const-string v1, "without_coins_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/g;->b:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_no_coins"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 46
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 48
    :cond_1
    return-void
.end method

.method public a(Lcom/etermax/tools/navigation/BaseFragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/withoutcoins/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 34
    invoke-static {}, Lcom/etermax/preguntados/ui/withoutcoins/a;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "fragment_no_coins"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/withoutcoins/g;->a(Z)V

    .line 37
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_without_coins"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method
