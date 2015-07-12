.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 32
    return-void
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/c;->d()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/d;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/m;->characters_limit:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p0, v4}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 112
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "question_min_length"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/b;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;)V

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->rate_question_report_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 99
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->d()V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/b;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 49
    sget v0, Lcom/etermax/k;->report_question_write_comment_fragment:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 50
    sget v0, Lcom/etermax/i;->questions_factory_ok_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 51
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->report:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget v0, Lcom/etermax/i;->rate_question_report_edit_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 54
    sget v1, Lcom/etermax/i;->rate_question_report_remaining_characters:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 56
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x96

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    .line 58
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v4

    rsub-int v4, v4, 0x96

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 60
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 61
    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$4;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->a(Landroid/content/Context;)V

    .line 93
    return-object v2
.end method
