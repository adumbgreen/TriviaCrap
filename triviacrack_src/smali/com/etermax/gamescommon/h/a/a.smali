.class public abstract Lcom/etermax/gamescommon/h/a/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/h/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static k:I


# instance fields
.field protected a:Lcom/etermax/gamescommon/social/a;

.field protected b:Lcom/etermax/tools/social/a/b;

.field protected c:Lcom/etermax/tools/f/a;

.field protected d:Lcom/etermax/gamescommon/login/datasource/a;

.field e:Lcom/etermax/gamescommon/h/a/d;

.field f:Lcom/etermax/gamescommon/h/a/c;

.field protected g:Lcom/etermax/gamescommon/language/Language;

.field private h:Landroid/widget/BaseAdapter;

.field private i:Landroid/widget/BaseAdapter;

.field private j:Landroid/widget/BaseAdapter;

.field private l:Landroid/widget/TextView$OnEditorActionListener;

.field private m:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x3

    sput v0, Lcom/etermax/gamescommon/h/a/a;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 63
    new-instance v0, Lcom/etermax/gamescommon/h/a/d;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/h/a/d;-><init>(Lcom/etermax/gamescommon/h/a/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->e:Lcom/etermax/gamescommon/h/a/d;

    .line 64
    new-instance v0, Lcom/etermax/gamescommon/h/a/c;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/h/a/c;-><init>(Lcom/etermax/gamescommon/h/a/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->f:Lcom/etermax/gamescommon/h/a/c;

    .line 118
    new-instance v0, Lcom/etermax/gamescommon/h/a/a$2;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/h/a/a$2;-><init>(Lcom/etermax/gamescommon/h/a/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->l:Landroid/widget/TextView$OnEditorActionListener;

    .line 225
    new-instance v0, Lcom/etermax/gamescommon/h/a/a$3;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/h/a/a$3;-><init>(Lcom/etermax/gamescommon/h/a/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->m:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 461
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/h/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/etermax/gamescommon/h/a/a;->i()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/h/a/a;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/a;->n:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 237
    sget v1, Lcom/etermax/i;->tab_all_button:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->h:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->h:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    sget v1, Lcom/etermax/i;->tab_favorite_button:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->i:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->i:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/etermax/gamescommon/user/a/g;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/user/a/g;->a()V

    .line 243
    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 244
    :cond_2
    sget v0, Lcom/etermax/i;->tab_facebook_button:I

    if-ne p1, v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->h()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/h/a/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/h/a/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/h/a/a;Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/j;)V

    return-void
.end method

.method private a(Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/j;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 311
    sget-object v0, Lcom/etermax/gamescommon/h/a/a$6;->a:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/h/a/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/h/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->g:Lcom/etermax/gamescommon/language/Language;

    invoke-interface {v0, p1, v1, p2}, Lcom/etermax/gamescommon/h/a/b;->a(Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/j;)V

    .line 329
    return-void

    .line 313
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->g:Lcom/etermax/gamescommon/language/Language;

    const-string v1, "facebook_friends"

    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->g:Lcom/etermax/gamescommon/language/Language;

    const-string v1, "recent_opponents"

    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->g:Lcom/etermax/gamescommon/language/Language;

    const-string v1, "user_search"

    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 482
    new-instance v0, Lcom/etermax/gamescommon/b/v;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/v;-><init>()V

    .line 484
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/v;->a(Lcom/etermax/gamescommon/language/Language;)V

    .line 485
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/b/v;->a(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 488
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/h/a/a;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->i:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/h/a/a;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->j:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/gamescommon/h/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/etermax/gamescommon/h/a/a;->j()V

    return-void
.end method

.method static synthetic e(Lcom/etermax/gamescommon/h/a/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/gamescommon/h/a/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private i()I
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->tabs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    return v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/etermax/gamescommon/h/a/a$5;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/h/a/a$5;-><init>(Lcom/etermax/gamescommon/h/a/a;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/h/a/a$5;->a(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/h/a/b;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/etermax/gamescommon/h/a/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/h/a/a$1;-><init>(Lcom/etermax/gamescommon/h/a/a;)V

    return-object v0
.end method

.method protected abstract a(Lcom/etermax/gamescommon/h/a/c;)Lcom/etermax/gamescommon/user/a/a;
.end method

.method protected abstract a(Lcom/etermax/gamescommon/h/a/d;)Lcom/etermax/gamescommon/user/a/a;
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->c()Lcom/etermax/gamescommon/h/a/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/h/a/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->d()Lcom/etermax/gamescommon/h/a/g;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/etermax/gamescommon/h/a/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 159
    new-instance v2, Lcom/etermax/gamescommon/user/a/g;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/etermax/gamescommon/h/a/a;->k:I

    iget-object v5, p0, Lcom/etermax/gamescommon/h/a/a;->e:Lcom/etermax/gamescommon/h/a/d;

    invoke-virtual {p0, v5}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/d;)Lcom/etermax/gamescommon/user/a/a;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/etermax/gamescommon/user/a/g;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/etermax/gamescommon/user/a/a;)V

    iput-object v2, p0, Lcom/etermax/gamescommon/h/a/a;->h:Landroid/widget/BaseAdapter;

    .line 162
    new-instance v0, Lcom/etermax/gamescommon/user/a/g;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/gamescommon/h/a/a;->k:I

    iget-object v4, p0, Lcom/etermax/gamescommon/h/a/a;->e:Lcom/etermax/gamescommon/h/a/d;

    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/d;)Lcom/etermax/gamescommon/user/a/a;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/etermax/gamescommon/user/a/g;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/etermax/gamescommon/user/a/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->i:Landroid/widget/BaseAdapter;

    .line 165
    invoke-direct {p0}, Lcom/etermax/gamescommon/h/a/a;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/h/a/a;->a(I)V

    .line 166
    return-void
.end method

.method protected a(Ljava/lang/Object;Z)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;Z)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->e()Lcom/etermax/gamescommon/h/a/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/h/a/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 172
    new-instance v0, Lcom/etermax/gamescommon/user/a/g;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/gamescommon/h/a/a;->k:I

    iget-object v4, p0, Lcom/etermax/gamescommon/h/a/a;->e:Lcom/etermax/gamescommon/h/a/d;

    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/d;)Lcom/etermax/gamescommon/user/a/a;

    move-result-object v4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/user/a/g;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/etermax/gamescommon/user/a/a;Z)V

    .line 176
    invoke-direct {p0}, Lcom/etermax/gamescommon/h/a/a;->i()I

    move-result v1

    sget v2, Lcom/etermax/i;->tab_all_button:I

    if-ne v1, v2, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->tabs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->m:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->search_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->l:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->g()V

    .line 116
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/etermax/gamescommon/h/a/a;->a(Ljava/lang/Object;Z)V

    .line 185
    return-void
.end method

.method protected abstract c()Lcom/etermax/gamescommon/h/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/etermax/gamescommon/h/a/g",
            "<TV;>;"
        }
    .end annotation
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->f()Lcom/etermax/gamescommon/h/a/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/h/a/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/etermax/gamescommon/user/a/g;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/gamescommon/h/a/a;->k:I

    iget-object v4, p0, Lcom/etermax/gamescommon/h/a/a;->f:Lcom/etermax/gamescommon/h/a/c;

    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/c;)Lcom/etermax/gamescommon/user/a/a;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/etermax/gamescommon/user/a/g;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/etermax/gamescommon/user/a/a;)V

    iput-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->j:Landroid/widget/BaseAdapter;

    .line 195
    invoke-direct {p0}, Lcom/etermax/gamescommon/h/a/a;->i()I

    move-result v0

    sget v1, Lcom/etermax/i;->tab_facebook_button:I

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 198
    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a;->j:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    :cond_0
    return-void
.end method

.method protected abstract d()Lcom/etermax/gamescommon/h/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/etermax/gamescommon/h/a/g",
            "<TV;>;"
        }
    .end annotation
.end method

.method protected abstract e()Lcom/etermax/gamescommon/h/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/etermax/gamescommon/h/a/g",
            "<TV;>;"
        }
    .end annotation
.end method

.method protected abstract f()Lcom/etermax/gamescommon/h/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/etermax/gamescommon/h/a/g",
            "<TV;>;"
        }
    .end annotation
.end method

.method protected abstract g()V
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->a()Lcom/etermax/gamescommon/h/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a;->a:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/etermax/gamescommon/h/a/a$4;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/h/a/a$4;-><init>(Lcom/etermax/gamescommon/h/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 271
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    sget v1, Lcom/etermax/j;->user_grid_column_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/etermax/gamescommon/h/a/a;->k:I

    .line 98
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    sget v0, Lcom/etermax/k;->new_game_friends_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
