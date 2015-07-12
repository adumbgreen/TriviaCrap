.class public final Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;
.super Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final n:Lorg/a/a/b/c;

.field private o:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;-><init>()V

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->n:Lorg/a/a/b/c;

    .line 206
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 60
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->m()V

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->b:Lcom/etermax/preguntados/g/a;

    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->c:Lcom/etermax/preguntados/c/a/b;

    .line 63
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->a:Lcom/etermax/preguntados/datasource/d;

    .line 64
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/e/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->e:Lcom/etermax/preguntados/e/c;

    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 66
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->b(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v0, "mHasAnswered"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->g:Z

    .line 200
    const-string v0, "mSelectedLanguage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->i:Lcom/etermax/gamescommon/language/Language;

    .line 201
    const-string v0, "mQuestion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 202
    const-string v0, "mSelectedCountry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/Country;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 203
    const-string v0, "mReportedQuestion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->k:Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;

    goto :goto_0
.end method

.method public static l()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$1;)V

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const-string v1, "mConfig"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "mConfig"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->f:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    const v0, 0x7f0a0438

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->m:Landroid/view/View;

    .line 82
    const v0, 0x7f0a0437

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->l:Landroid/widget/ViewSwitcher;

    .line 84
    const v0, 0x7f0a03fd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    const v0, 0x7f0a0441

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_1
    const v0, 0x7f0a0444

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_2
    const v0, 0x7f0a0440

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$4;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_3
    const v0, 0x7f0a03fc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_4

    .line 146
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$5;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_4
    const v0, 0x7f0a043f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_5

    .line 161
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$6;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$6;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_5
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->e()V

    .line 174
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->o:Landroid/view/View;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->n:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 40
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->a(Landroid/os/Bundle;)V

    .line 41
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->o:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->o:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    const-string v0, "mHasAnswered"

    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    const-string v0, "mSelectedLanguage"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->i:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 190
    const-string v0, "mQuestion"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 191
    const-string v0, "mSelectedCountry"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 192
    const-string v0, "mReportedQuestion"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->k:Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 193
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->n:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 73
    return-void
.end method
