.class public Lcom/etermax/tools/widget/b/g;
.super Lcom/etermax/tools/widget/b/i;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "button_3_string"

    sput-object v0, Lcom/etermax/tools/widget/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/i;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Lcom/etermax/tools/widget/b/g;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/etermax/tools/widget/b/g;

    invoke-direct {v0}, Lcom/etermax/tools/widget/b/g;-><init>()V

    .line 23
    invoke-static/range {p0 .. p6}, Lcom/etermax/tools/widget/b/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/g;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v0
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/etermax/tools/widget/b/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/etermax/tools/widget/b/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "layout_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    if-nez v0, :cond_0

    sget v0, Lcom/etermax/k;->etermaxtools_three_vertical_buttons_dialog:I

    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/b/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 58
    sget v0, Lcom/etermax/i;->button_3:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/g;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/etermax/tools/widget/b/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v2, Lcom/etermax/tools/widget/b/g$1;

    invoke-direct {v2, p0}, Lcom/etermax/tools/widget/b/g$1;-><init>(Lcom/etermax/tools/widget/b/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object v1
.end method
