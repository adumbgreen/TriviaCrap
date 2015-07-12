.class public abstract Lcom/etermax/gamescommon/dashboard/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/dashboard/a/c/b;
.implements Lcom/etermax/gamescommon/dashboard/a/c/c;
.implements Lcom/etermax/gamescommon/dashboard/a/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallBacks:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etermax/tools/navigation/b",
        "<TCallBacks;>;",
        "Lcom/etermax/gamescommon/dashboard/a/c/b;",
        "Lcom/etermax/gamescommon/dashboard/a/c/c;",
        "Lcom/etermax/gamescommon/dashboard/a/c/d;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/gamescommon/e/a;

.field protected b:Lcom/etermax/gamescommon/promotion/PromotionsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)Landroid/widget/BaseAdapter;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/h",
            "<TT;>;>;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/i",
            "<TT;>;>;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/dashboard/a/a/c",
            "<TT;>;>;ZJ)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/etermax/gamescommon/dashboard/a/a/a;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p5, p6}, Lcom/etermax/gamescommon/dashboard/a;->a(J)Lcom/etermax/gamescommon/dashboard/a/a/b;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/dashboard/a/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/etermax/gamescommon/dashboard/a/a/b;)V

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/dashboard/a/d;J)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/dashboard/a/d",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->m()Lcom/etermax/tools/widget/a/f;

    move-result-object v0

    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getGames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/a/f;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/a/h;

    .line 90
    invoke-virtual {v0}, Lcom/etermax/tools/widget/a/h;->b()I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    const/4 v0, 0x1

    :goto_1
    move v4, v0

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getSuggestedOpponents()Ljava/util/List;

    move-result-object v0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 101
    new-instance v5, Lcom/etermax/tools/widget/a/i;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Lcom/etermax/tools/widget/a/i;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_1
    new-instance v0, Lcom/etermax/gamescommon/dashboard/a/a/c;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/etermax/gamescommon/dashboard/a/c;->a(Landroid/support/v4/app/FragmentActivity;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x6

    invoke-direct {v0, v4, v5}, Lcom/etermax/gamescommon/dashboard/a/a/c;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->b()Z

    move-result v4

    move-object v0, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/dashboard/a;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)Landroid/widget/BaseAdapter;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    return-void

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i()Lcom/etermax/gamescommon/dashboard/a/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/gamescommon/dashboard/a/a/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 121
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/dashboard/a/a/a;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    .line 262
    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a;->b:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->showBuyFragment(Landroid/support/v4/app/FragmentActivity;)V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a;->b:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->getCurrentPromotion()Lcom/etermax/gamescommon/promotion/BasePromotion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/promotion/BasePromotion;->getDashboardView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(J)Lcom/etermax/gamescommon/dashboard/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/etermax/gamescommon/dashboard/a/a/b",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/etermax/gamescommon/dashboard/a;->i()Lcom/etermax/gamescommon/dashboard/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/dashboard/a/a/a;->b()V

    .line 116
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v2, ".pro"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".lite"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 166
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 170
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/etermax/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 178
    :goto_1
    if-eqz v0, :cond_4

    .line 179
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/etermax/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".lite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 183
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/EtermaxGamesApplication;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->b()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".lite"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "FreeGamesHelper"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method protected a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    sget v0, Lcom/etermax/i;->dashboard_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    .line 209
    new-instance v1, Lcom/etermax/gamescommon/dashboard/a$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/dashboard/a$1;-><init>(Lcom/etermax/gamescommon/dashboard/a;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/etermax/tools/widget/pulltorefresh/e;)V

    .line 218
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/dashboard/a/d;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/dashboard/a/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getAppConfig()Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a;->a:Lcom/etermax/gamescommon/e/a;

    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getAppConfig()Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e/a;->a(Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;)V

    .line 72
    :cond_0
    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getNotificationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a;->a:Lcom/etermax/gamescommon/e/a;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    :cond_1
    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getLastChatActivity()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a;->a:Lcom/etermax/gamescommon/e/a;

    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getLastChatActivity()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e/a;->a(J)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a;->a:Lcom/etermax/gamescommon/e/a;

    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getUnreadConversations()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e/a;->a(I)V

    .line 81
    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/d;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/etermax/gamescommon/dashboard/a;->a(Lcom/etermax/gamescommon/dashboard/a/d;J)V

    .line 82
    return-void
.end method

.method protected a(Lcom/etermax/tools/widget/a/g;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/tools/widget/a/g",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Section: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/tools/widget/a/g;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    return-void
.end method

.method protected a(Lcom/etermax/tools/widget/a/i;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/tools/widget/a/i",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuggestedOpponent(ID): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/etermax/tools/widget/a/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image userid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    instance-of v0, p1, Lcom/etermax/tools/widget/a/g;

    if-eqz v0, :cond_1

    .line 136
    check-cast p1, Lcom/etermax/tools/widget/a/g;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/dashboard/a;->a(Lcom/etermax/tools/widget/a/g;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    instance-of v0, p1, Lcom/etermax/tools/widget/a/i;

    if-eqz v0, :cond_2

    .line 138
    check-cast p1, Lcom/etermax/tools/widget/a/i;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/dashboard/a;->a(Lcom/etermax/tools/widget/a/i;)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->c()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/dashboard/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->l()V

    .line 222
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->g()Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->e()V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 230
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->g()Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->d()V

    .line 236
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method protected g()Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;
    .locals 3

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->dashboard_list_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    instance-of v2, v0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v2, :cond_0

    .line 245
    check-cast v0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    .line 248
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a;->b:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->isCurrentPromoActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/etermax/gamescommon/dashboard/a;->n()V

    .line 257
    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a;->b:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->onPromoPopupClose()V

    .line 269
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a;->a()V

    .line 270
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a;->b:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mustShowPromoPopup()Z

    move-result v0

    return v0
.end method

.method protected abstract l()V
.end method

.method protected abstract m()Lcom/etermax/tools/widget/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/tools/widget/a/f",
            "<",
            "Ljava/util/List",
            "<TT;>;TT;>;"
        }
    .end annotation
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    sget v0, Lcom/etermax/k;->dashboard_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/dashboard/a;->a(Landroid/view/View;)V

    .line 64
    return-object v0
.end method
