.class public Lcom/etermax/preguntados/ui/newgame/duelmode/b;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/a;

.field b:Ljava/lang/String;

.field c:Lcom/etermax/preguntados/ui/game/duelmode/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lcom/etermax/preguntados/ui/newgame/duelmode/d;->d()Lcom/etermax/preguntados/ui/newgame/duelmode/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/e;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/newgame/duelmode/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/e;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/newgame/duelmode/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/e;->a()Lcom/etermax/preguntados/ui/newgame/duelmode/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/b;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/b;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->name_group_challenge_alert:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/newgame/duelmode/c;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/b$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/b$1;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/b;)V

    return-object v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->a(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->new_duel_mode_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 123
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/duelmode/c;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/c;->a(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->a()Lcom/etermax/preguntados/ui/newgame/duelmode/c;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    sget v0, Lcom/etermax/k;->new_duel_mode_name_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->c:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v2

    .line 70
    sget v0, Lcom/etermax/i;->new_duel_mode_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/duelmode/h;->g()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v0, Lcom/etermax/i;->new_duel_mode_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/etermax/preguntados/ui/game/duelmode/h;->b(Landroid/content/Context;J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    sget v0, Lcom/etermax/i;->new_duel_mode_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 77
    new-instance v3, Lcom/etermax/preguntados/ui/newgame/duelmode/b$2;

    invoke-direct {v3, p0, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/b$2;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/b;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 93
    iget-object v3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    new-array v3, v7, [Landroid/text/InputFilter;

    .line 98
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 101
    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/duelmode/h;->h()I

    move-result v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v4}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/etermax/preguntados/ui/newgame/duelmode/b;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 104
    return-object v1
.end method
