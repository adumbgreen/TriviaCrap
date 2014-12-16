.class public abstract Lcom/etermax/gamescommon/profile/ui/c;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/profile/ui/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/gamescommon/dashboard/b;

.field protected b:Lcom/etermax/gamescommon/user/UserGridView;

.field protected c:Lcom/etermax/gamescommon/user/a/b;

.field protected d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/ui/c;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/ui/c;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/profile/ui/c;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/profile/ui/c;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 187
    .line 188
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->c:Lcom/etermax/gamescommon/user/a/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/b;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 189
    const/4 v0, 0x1

    move v1, v0

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->d:Landroid/view/View;

    sget v3, Lcom/etermax/i;->empty_list_textview:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/c;->d:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/c;->b:Lcom/etermax/gamescommon/user/UserGridView;

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/user/UserGridView;->setVisibility(I)V

    .line 196
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_1
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/c;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/c;->b:Lcom/etermax/gamescommon/user/UserGridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/user/UserGridView;->setVisibility(I)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/profile/ui/c;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/profile/ui/d;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/etermax/gamescommon/profile/ui/c$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/profile/ui/c$1;-><init>(Lcom/etermax/gamescommon/profile/ui/c;)V

    return-object v0
.end method

.method protected abstract a(Z)Ljava/lang/String;
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 151
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->c:Lcom/etermax/gamescommon/user/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->c:Lcom/etermax/gamescommon/user/a/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/b;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->c:Lcom/etermax/gamescommon/user/a/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/b;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/c$6;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/c$6;-><init>(Lcom/etermax/gamescommon/profile/ui/c;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 178
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/etermax/gamescommon/user/a/b;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/user/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->c:Lcom/etermax/gamescommon/user/a/b;

    .line 208
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->c:Lcom/etermax/gamescommon/user/a/b;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/user/a/b;->a(Ljava/util/List;)V

    .line 210
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->c:Lcom/etermax/gamescommon/user/a/b;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/c$7;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/c$7;-><init>(Lcom/etermax/gamescommon/profile/ui/c;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/user/a/b;->a(Lcom/etermax/gamescommon/profile/ui/d;)V

    .line 219
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->b:Lcom/etermax/gamescommon/user/UserGridView;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/c;->c:Lcom/etermax/gamescommon/user/a/b;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/user/UserGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/profile/ui/c;->b(Z)V

    .line 222
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->users_list_header_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->search_box:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 98
    new-instance v1, Lcom/etermax/gamescommon/profile/ui/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/c$2;-><init>(Lcom/etermax/gamescommon/profile/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    new-instance v1, Lcom/etermax/gamescommon/profile/ui/c$3;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/c$3;-><init>(Lcom/etermax/gamescommon/profile/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 123
    new-instance v1, Lcom/etermax/gamescommon/profile/ui/c$4;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/c$4;-><init>(Lcom/etermax/gamescommon/profile/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/c;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->search_box_clear_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 135
    new-instance v2, Lcom/etermax/gamescommon/profile/ui/c$5;

    invoke-direct {v2, p0, v0}, Lcom/etermax/gamescommon/profile/ui/c$5;-><init>(Lcom/etermax/gamescommon/profile/ui/c;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c()Z
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/c;->a()Lcom/etermax/gamescommon/profile/ui/d;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->a:Lcom/etermax/gamescommon/dashboard/b;

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    sget v0, Lcom/etermax/k;->user_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/UserGridView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->b:Lcom/etermax/gamescommon/user/UserGridView;

    .line 78
    sget v0, Lcom/etermax/i;->empty_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c;->d:Landroid/view/View;

    .line 80
    return-object v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/c;->b()V

    .line 89
    :cond_0
    return-void
.end method
