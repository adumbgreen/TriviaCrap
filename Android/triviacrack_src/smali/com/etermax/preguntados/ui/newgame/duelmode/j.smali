.class public Lcom/etermax/preguntados/ui/newgame/duelmode/j;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;
.implements Lcom/etermax/preguntados/ui/newgame/duelmode/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/k;",
        ">;",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/r;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

.field c:Ljava/lang/String;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

.field private g:Lcom/etermax/preguntados/ui/newgame/duelmode/n;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 55
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->e()Lcom/etermax/preguntados/ui/newgame/duelmode/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/m;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/newgame/duelmode/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/m;->b(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/newgame/duelmode/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/m;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/newgame/duelmode/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/m;->a()Lcom/etermax/preguntados/ui/newgame/duelmode/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/j;)Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->f:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 171
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 173
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIsAppUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/j;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->h:Z

    return p1
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/newgame/duelmode/k;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/j$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j$1;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/j;)V

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 5
    .parameter

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 135
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v3

    if-nez v3, :cond_0

    .line 140
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getDuelModeMaxPlayers()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 141
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->f:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->notifyDataSetChanged()V

    .line 146
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 183
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->f:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a(Ljava/util/List;Z)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->f:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->h:Z

    .line 151
    const-string v0, ""

    .line 153
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->new_duel_mode_search_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 154
    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->h:Z

    if-nez v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->f:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a(Ljava/util/List;Z)V

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    invoke-virtual {v1, p0, v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/preguntados/ui/newgame/duelmode/r;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->f:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/n;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/n;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->g:Lcom/etermax/preguntados/ui/newgame/duelmode/n;

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->d:Ljava/util/ArrayList;

    .line 83
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 85
    new-instance v3, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;

    invoke-direct {v3, v0, v4}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;-><init>(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->d:Ljava/util/ArrayList;

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v2, Lcom/etermax/tools/widget/a/h;

    invoke-direct {v2, v1, v4}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;I)V

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->g:Lcom/etermax/preguntados/ui/newgame/duelmode/n;

    invoke-direct {v1, v2, v0, v3}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;)V

    iput-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->f:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    .line 91
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->new_duel_mode_search_listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->f:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/duelmode/k;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/k;->b()V

    .line 128
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->a()Lcom/etermax/preguntados/ui/newgame/duelmode/k;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    sget v0, Lcom/etermax/k;->new_duel_mode_search_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 97
    sget v0, Lcom/etermax/i;->new_duel_header_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    sget v0, Lcom/etermax/i;->new_duel_mode_search_edittext:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 100
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/j$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j$2;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    sget v1, Lcom/etermax/i;->new_duel_mode_search_clear_button:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lcom/etermax/preguntados/ui/newgame/duelmode/j$3;

    invoke-direct {v3, p0, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j$3;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/j;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v2
.end method
