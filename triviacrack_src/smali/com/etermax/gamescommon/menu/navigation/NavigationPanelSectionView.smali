.class public Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;->a()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;->a()V

    .line 22
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/k;->navigation_panel_section_layout:I

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    sget v0, Lcom/etermax/i;->title:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_0
    return-void
.end method
