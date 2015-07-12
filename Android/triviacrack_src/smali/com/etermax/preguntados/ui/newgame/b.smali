.class public Lcom/etermax/preguntados/ui/newgame/b;
.super Lcom/etermax/gamescommon/h/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/h/a",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/c;",
        ">;"
    }
.end annotation


# instance fields
.field c:Lcom/etermax/preguntados/datasource/d;

.field d:Lcom/etermax/gamescommon/login/datasource/a;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:Landroid/widget/TextView;

.field j:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

.field k:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

.field l:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

.field m:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/gamescommon/h/a;-><init>()V

    .line 65
    return-void
.end method

.method public static g()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/d;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/newgame/d;-><init>()V

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "NewGamePreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "classic_game"

    iget-boolean v3, p0, Lcom/etermax/preguntados/ui/newgame/b;->n:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "friend_mode"

    iget-boolean v2, p0, Lcom/etermax/preguntados/ui/newgame/b;->o:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/etermax/gamescommon/h/b;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b;->f()Lcom/etermax/preguntados/ui/newgame/c;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    invoke-super {p0}, Lcom/etermax/gamescommon/h/a;->b()V

    .line 101
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "NewGamePreferences"

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    const-string v1, "classic_game"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/o;->classic_txt:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->e:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->j:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->a()V

    .line 106
    iput-boolean v5, p0, Lcom/etermax/preguntados/ui/newgame/b;->n:Z

    .line 114
    :goto_0
    const-string v1, "friend_mode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->l:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->a()V

    .line 117
    iput-boolean v5, p0, Lcom/etermax/preguntados/ui/newgame/b;->o:Z

    .line 124
    :goto_1
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/o;->challenge_txt:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->f:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->k:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->a()V

    .line 111
    iput-boolean v4, p0, Lcom/etermax/preguntados/ui/newgame/b;->n:Z

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->m:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->a()V

    .line 120
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iput-boolean v4, p0, Lcom/etermax/preguntados/ui/newgame/b;->o:Z

    goto :goto_1
.end method

.method protected c()[Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getAvailableLanguages()[Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->l:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->b()V

    .line 189
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iput-boolean v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->o:Z

    .line 193
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/b;->k()V

    .line 196
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 169
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->m:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->b()V

    .line 172
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->o:Z

    .line 176
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/b;->k()V

    .line 180
    :cond_0
    return-void
.end method

.method public f()Lcom/etermax/preguntados/ui/newgame/c;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/b$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/b$1;-><init>(Lcom/etermax/preguntados/ui/newgame/b;)V

    return-object v0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b;->f()Lcom/etermax/preguntados/ui/newgame/c;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/newgame/b;->a(Lcom/etermax/gamescommon/language/Language;)V

    .line 130
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->j:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->b()V

    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iput-boolean v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->n:Z

    .line 138
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->challenge_txt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/b;->k()V

    .line 141
    :cond_0
    return-void
.end method

.method protected i()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 148
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->k:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->b()V

    .line 149
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->n:Z

    .line 153
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/b;->k()V

    .line 154
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->classic_txt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    return-void
.end method

.method j()V
    .locals 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->o:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/c;->b(Lcom/etermax/gamescommon/language/Language;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->n:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->o:Z

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/c;->a(Lcom/etermax/gamescommon/language/Language;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->n:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->o:Z

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/c;->c(Lcom/etermax/gamescommon/language/Language;)V

    goto :goto_0

    .line 207
    :cond_3
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->o:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/b;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/c;->d(Lcom/etermax/gamescommon/language/Language;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/h/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 92
    return-object v0
.end method
