.class public Lcom/etermax/preguntados/f/b;
.super Lcom/etermax/gamescommon/social/b;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/etermax/tools/widgetv2/CustomLinearButton;

.field private f:Lcom/etermax/tools/widgetv2/CustomLinearButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/b;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/social/a;)Lcom/etermax/preguntados/f/b;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    sput-object p3, Lcom/etermax/preguntados/f/b;->a:Lcom/etermax/gamescommon/social/a;

    .line 90
    new-instance v0, Lcom/etermax/preguntados/f/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/f/b;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string v2, "title_string"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "accept_string"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/f/b;->setArguments(Landroid/os/Bundle;)V

    .line 96
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    sget v0, Lcom/etermax/k;->connect_with_facebook_dialog_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    sget v0, Lcom/etermax/i;->connect_with_facebook_dialog_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/f/b;->b:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/f/b;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/f/b;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title_string"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget v0, Lcom/etermax/i;->connect_with_facebook_dialog_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/f/b;->c:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/etermax/preguntados/f/b;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/f/b;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v0, Lcom/etermax/i;->connect_with_facebook_dialog_close_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widgetv2/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/preguntados/f/b;->d:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    .line 113
    sget v0, Lcom/etermax/i;->fb_login_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widgetv2/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/preguntados/f/b;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    .line 114
    sget v0, Lcom/etermax/i;->button_facebook_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/f/b;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "accept_string"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/etermax/preguntados/f/b;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    new-instance v2, Lcom/etermax/preguntados/f/b$1;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/f/b$1;-><init>(Lcom/etermax/preguntados/f/b;)V

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/etermax/preguntados/f/b;->d:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    new-instance v2, Lcom/etermax/preguntados/f/b$2;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/f/b$2;-><init>(Lcom/etermax/preguntados/f/b;)V

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-object v1
.end method
