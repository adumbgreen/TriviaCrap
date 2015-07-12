.class public Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/tools/f/a;

.field private b:Lcom/etermax/gamescommon/menu/navigation/b;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;-><init>(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;-><init>(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;-><init>(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 60
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;[Lcom/etermax/gamescommon/menu/navigation/e;Lcom/etermax/gamescommon/menu/navigation/d;Lcom/etermax/gamescommon/menu/navigation/b;)Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/b;

    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/etermax/tools/a;

    .line 66
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/etermax/tools/j/b;

    .line 68
    invoke-interface {v2}, Lcom/etermax/tools/j/b;->y()Z

    move-result v5

    .line 70
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 72
    array-length v7, p1

    move v4, v3

    :goto_0
    if-ge v4, v7, :cond_5

    aget-object v8, p1, v4

    .line 73
    const/4 v2, 0x1

    .line 75
    sget-object v9, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$2;->a:[I

    invoke-virtual {v8}, Lcom/etermax/gamescommon/menu/navigation/e;->b()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v10

    invoke-virtual {v10}, Lcom/etermax/gamescommon/menu/navigation/f;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 94
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 95
    new-instance v2, Lcom/etermax/gamescommon/menu/navigation/c;

    invoke-direct {v2, p0, v8, p2}, Lcom/etermax/gamescommon/menu/navigation/c;-><init>(Landroid/content/Context;Lcom/etermax/gamescommon/menu/navigation/e;Lcom/etermax/gamescommon/menu/navigation/d;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 77
    :pswitch_0
    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/etermax/tools/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v1, v9}, Lcom/etermax/tools/j/e;->a(Lcom/etermax/tools/b;Lcom/etermax/tools/a;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_2
    move v2, v3

    .line 78
    goto :goto_1

    .line 82
    :pswitch_1
    invoke-virtual {v8}, Lcom/etermax/gamescommon/menu/navigation/e;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavigationPanel: Falta configurar el game package prefix para el item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/etermax/gamescommon/menu/navigation/e;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3
    invoke-virtual {v8}, Lcom/etermax/gamescommon/menu/navigation/e;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/etermax/tools/j/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Lcom/etermax/gamescommon/menu/navigation/e;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/etermax/tools/j/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v1, v9}, Lcom/etermax/tools/j/e;->a(Lcom/etermax/tools/b;Lcom/etermax/tools/a;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_4
    move v2, v3

    .line 87
    goto :goto_1

    .line 99
    :cond_5
    invoke-static {v6}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->a(Ljava/util/List;)V

    .line 101
    invoke-static {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel_;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v6, p3}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->a(Ljava/util/List;Lcom/etermax/gamescommon/menu/navigation/b;)V

    .line 103
    return-object v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;)Lcom/etermax/gamescommon/menu/navigation/b;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->b:Lcom/etermax/gamescommon/menu/navigation/b;

    return-object v0
.end method

.method private static a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/menu/navigation/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 107
    .line 108
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v1, v2

    :goto_0
    if-ltz v3, :cond_2

    .line 109
    if-eqz v1, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/navigation/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/c;->c()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    sget-object v4, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    if-ne v0, v4, :cond_0

    .line 110
    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 108
    :goto_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/navigation/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/c;->c()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 112
    goto :goto_1

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 117
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/navigation/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/a;->notifyDataSetChanged()V

    .line 151
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    :goto_0
    return-void

    .line 213
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

    .line 214
    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 215
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pro"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etermax/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 227
    :goto_1
    if-eqz v0, :cond_4

    .line 228
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :cond_3
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lite"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etermax/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 224
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

    .line 232
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/EtermaxGamesApplication;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->b()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
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

    .line 235
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const-string v1, "SlidingMenu"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/etermax/gamescommon/menu/navigation/c;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    new-instance v0, Lcom/etermax/gamescommon/b/n;

    sget-object v1, Lcom/etermax/gamescommon/b/n;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/n;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->g()Lcom/etermax/gamescommon/menu/navigation/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/navigation/e;->g()Ljava/lang/String;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/n;->a(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 206
    return-void
.end method

.method public a(Ljava/util/List;Lcom/etermax/gamescommon/menu/navigation/b;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/menu/navigation/c;",
            ">;",
            "Lcom/etermax/gamescommon/menu/navigation/b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->b:Lcom/etermax/gamescommon/menu/navigation/b;

    .line 128
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/etermax/gamescommon/menu/navigation/a;-><init>(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;Ljava/util/List;Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->setHeaderDividersEnabled(Z)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->setFastScrollEnabled(Z)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->setCacheColorHint(I)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->setDividerHeight(I)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->setVerticalFadingEdgeEnabled(Z)V

    .line 135
    sget v0, Lcom/etermax/f;->navigation_panel_background:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->setBackgroundResource(I)V

    .line 136
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
