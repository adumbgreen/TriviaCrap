.class public Lcom/etermax/tools/bugcatcher/c;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/tools/bugcatcher/i;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/etermax/tools/bugcatcher/h;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/bugcatcher/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/Spinner;

.field private n:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/etermax/tools/bugcatcher/c;->c:Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lcom/etermax/tools/bugcatcher/c;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/etermax/tools/bugcatcher/c;->d:Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/etermax/tools/bugcatcher/c;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/tools/bugcatcher/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/etermax/tools/bugcatcher/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/etermax/tools/bugcatcher/c;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/etermax/tools/bugcatcher/c;->e:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 55
    const-string v0, "JIRA_CONNECTOR"

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->n:Landroid/content/SharedPreferences;

    .line 56
    sget v0, Lcom/etermax/o;->jira_create_issue:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->setTitle(I)V

    .line 57
    sget v0, Lcom/etermax/k;->create_issue_dialog:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->setContentView(I)V

    .line 58
    sget v0, Lcom/etermax/i;->extra_info:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->f:Landroid/widget/EditText;

    .line 59
    sget v0, Lcom/etermax/i;->summary:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->l:Landroid/widget/EditText;

    .line 60
    sget v0, Lcom/etermax/i;->username:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->g:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/etermax/i;->pass:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->j:Landroid/widget/EditText;

    .line 62
    sget v0, Lcom/etermax/i;->user:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->k:Landroid/widget/EditText;

    .line 63
    sget v0, Lcom/etermax/i;->login_container:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->h:Landroid/view/View;

    .line 64
    sget v0, Lcom/etermax/i;->create_container:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->i:Landroid/view/View;

    .line 65
    sget v0, Lcom/etermax/i;->priority:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->m:Landroid/widget/Spinner;

    .line 66
    new-instance v0, Lcom/etermax/tools/bugcatcher/h;

    invoke-direct {v0, p1}, Lcom/etermax/tools/bugcatcher/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->b:Lcom/etermax/tools/bugcatcher/h;

    .line 68
    sget v0, Lcom/etermax/i;->send_button:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget v0, Lcom/etermax/i;->change_user_button:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcom/etermax/i;->login_button:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->m:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/etermax/k;->spinner_item:I

    sget v5, Lcom/etermax/i;->textview:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/etermax/c;->jira_priorities:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->m:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 74
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->b:Lcom/etermax/tools/bugcatcher/h;

    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/etermax/tools/bugcatcher/c;->a()V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/c;->b:Lcom/etermax/tools/bugcatcher/h;

    invoke-virtual {v2}, Lcom/etermax/tools/bugcatcher/h;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v2, Lcom/etermax/tools/bugcatcher/e;

    invoke-direct {v2, p0, v1}, Lcom/etermax/tools/bugcatcher/e;-><init>(Lcom/etermax/tools/bugcatcher/c;Lcom/etermax/tools/bugcatcher/c$1;)V

    new-array v3, v9, [Ljava/lang/Void;

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Lcom/etermax/tools/bugcatcher/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void
.end method

.method static synthetic c(Lcom/etermax/tools/bugcatcher/c;)Lcom/etermax/tools/bugcatcher/h;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->b:Lcom/etermax/tools/bugcatcher/h;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 105
    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/c;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->jira_summary_must_be_filled:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v2, Lcom/etermax/tools/bugcatcher/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/etermax/tools/bugcatcher/d;-><init>(Lcom/etermax/tools/bugcatcher/c;Lcom/etermax/tools/bugcatcher/c$1;)V

    new-array v3, v0, [Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/etermax/tools/bugcatcher/c;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/etermax/tools/bugcatcher/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/tools/bugcatcher/c;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/tools/bugcatcher/c;->b()V

    return-void
.end method

.method static synthetic f(Lcom/etermax/tools/bugcatcher/c;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/etermax/tools/bugcatcher/c;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/tools/bugcatcher/c;->a()V

    return-void
.end method

.method static synthetic h(Lcom/etermax/tools/bugcatcher/c;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->n:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic i(Lcom/etermax/tools/bugcatcher/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->m:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic m(Lcom/etermax/tools/bugcatcher/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/c;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    sget v1, Lcom/etermax/i;->send_button:I

    invoke-virtual {p0, v1}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/etermax/tools/bugcatcher/c;->c()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget v1, Lcom/etermax/i;->login_button:I

    invoke-virtual {p0, v1}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 97
    new-instance v1, Lcom/etermax/tools/bugcatcher/f;

    invoke-direct {v1, p0, v0}, Lcom/etermax/tools/bugcatcher/f;-><init>(Lcom/etermax/tools/bugcatcher/c;Lcom/etermax/tools/bugcatcher/c$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/etermax/tools/bugcatcher/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 98
    :cond_2
    sget v0, Lcom/etermax/i;->change_user_button:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/etermax/tools/bugcatcher/c;->a()V

    goto :goto_0
.end method
