.class public Lcom/etermax/preguntados/ui/dashboard/b/b;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/widget/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/b/c;",
        ">;",
        "Lcom/etermax/widget/c",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/gamescommon/login/datasource/c;

.field c:Lcom/etermax/tools/nationality/Nationality;

.field private d:Lcom/etermax/widget/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/widget/a",
            "<",
            "Lcom/etermax/preguntados/ui/dashboard/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 44
    return-void
.end method

.method public static a(Lcom/etermax/tools/nationality/Nationality;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/b/d;->d()Lcom/etermax/preguntados/ui/dashboard/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/b/e;->a(Lcom/etermax/tools/nationality/Nationality;)Lcom/etermax/preguntados/ui/dashboard/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/b/e;->a()Lcom/etermax/preguntados/ui/dashboard/b/b;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/etermax/tools/nationality/Nationality;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/b/b$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/dashboard/b/b$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/b/b;Ljava/lang/String;Lcom/etermax/tools/nationality/Nationality;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/b/b$2;->a(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/dashboard/b/c;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/b/b$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/b/b$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/b/b;)V

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/dashboard/b/a;)V
    .locals 3
    .parameter

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/dashboard/b/a;->a()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/b/b;->c:Lcom/etermax/tools/nationality/Nationality;

    .line 138
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->set_country_chosen_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/b/b;->c:Lcom/etermax/tools/nationality/Nationality;

    invoke-static {v1, v2}, Lcom/etermax/tools/nationality/NationalityManager;->getNameResource(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/b/a;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/b/b;->a(Lcom/etermax/preguntados/ui/dashboard/b/a;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/b/b;->d:Lcom/etermax/widget/a;

    invoke-virtual {v0}, Lcom/etermax/widget/a;->a()V

    .line 104
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/b/b;->c:Lcom/etermax/tools/nationality/Nationality;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/b/b;->c:Lcom/etermax/tools/nationality/Nationality;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->b(Lcom/etermax/tools/nationality/Nationality;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->error_select_country:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->a()Lcom/etermax/preguntados/ui/dashboard/b/c;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {}, Lcom/etermax/tools/nationality/Nationality;->values()[Lcom/etermax/tools/nationality/Nationality;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 66
    new-instance v5, Lcom/etermax/preguntados/ui/dashboard/b/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/etermax/tools/nationality/NationalityManager;->getName(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/etermax/preguntados/ui/dashboard/b/a;-><init>(Ljava/lang/String;Lcom/etermax/tools/nationality/Nationality;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lcom/etermax/widget/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, p0, v3}, Lcom/etermax/widget/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/widget/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/b/b;->d:Lcom/etermax/widget/a;

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    sget v0, Lcom/etermax/k;->dashboard_set_country_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    sget v0, Lcom/etermax/i;->set_country_chosen_text_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/b/b;->c:Lcom/etermax/tools/nationality/Nationality;

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/b/b;->c:Lcom/etermax/tools/nationality/Nationality;

    invoke-static {v2, v3}, Lcom/etermax/tools/nationality/NationalityManager;->getNameResource(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    :goto_0
    return-object v1

    .line 95
    :cond_0
    sget v2, Lcom/etermax/o;->set_country:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 82
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->x()V

    .line 85
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y()V

    .line 77
    :cond_0
    return-void
.end method
