.class public Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/tools/widget/CustomFontTextView;

.field private b:Lcom/etermax/tools/widget/CustomFontTextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/k;->facebook_simple_item_layout:I

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    sget v0, Lcom/etermax/i;->facebook_simple_item_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 40
    sget v0, Lcom/etermax/i;->facebook_simple_item_description:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->b:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 41
    sget v0, Lcom/etermax/i;->facebook_simple_item_image:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->c:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/etermax/h;->fb_button_background:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->setBackgroundResource(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public setCapitalizedFirstLetterTitle(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-static {p1}, Lcom/etermax/tools/j/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->b:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/suggestedopponent/FacebookSimpleItemView;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
