.class public Lcom/etermax/gamescommon/profile/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/tools/f/a;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/PopupWindow;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/LayoutInflater;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/etermax/gamescommon/profile/ui/h;

.field private q:Lcom/etermax/gamescommon/profile/ui/m;

.field private r:Lcom/etermax/gamescommon/e;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/etermax/gamescommon/profile/ui/m;Lcom/etermax/tools/f/a;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/etermax/gamescommon/profile/ui/l;->q:Lcom/etermax/gamescommon/profile/ui/m;

    .line 71
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/l;->c:Landroid/view/View;

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->e:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->f:Landroid/view/LayoutInflater;

    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/etermax/k;->profile_options_popup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    sget v1, Lcom/etermax/i;->btn_block:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->g:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    sget v1, Lcom/etermax/i;->btn_add_friend:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->h:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    sget v1, Lcom/etermax/i;->btn_report:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->i:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    sget v1, Lcom/etermax/i;->txt_block:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->m:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    sget v1, Lcom/etermax/i;->txt_add_friend:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->n:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    sget v1, Lcom/etermax/i;->txt_report_user:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->o:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    sget v1, Lcom/etermax/i;->img_block:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->j:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    sget v1, Lcom/etermax/i;->img_add_friend:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->k:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    sget v1, Lcom/etermax/i;->img_report_user:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->l:Landroid/widget/ImageView;

    .line 87
    iput-object p3, p0, Lcom/etermax/gamescommon/profile/ui/l;->a:Lcom/etermax/tools/f/a;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/etermax/gamescommon/profile/ui/m;Lcom/etermax/tools/f/a;Lcom/etermax/gamescommon/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/profile/ui/l;-><init>(Landroid/view/View;Lcom/etermax/gamescommon/profile/ui/m;Lcom/etermax/tools/f/a;)V

    .line 66
    iput-object p4, p0, Lcom/etermax/gamescommon/profile/ui/l;->r:Lcom/etermax/gamescommon/e;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/ui/l;)Lcom/etermax/gamescommon/profile/ui/h;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->p:Lcom/etermax/gamescommon/profile/ui/h;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/ui/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Lcom/etermax/gamescommon/b/al;

    invoke-direct {v0, p2}, Lcom/etermax/gamescommon/b/al;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/al;->a(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/l;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 175
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/profile/ui/l;)Lcom/etermax/gamescommon/profile/ui/m;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->q:Lcom/etermax/gamescommon/profile/ui/m;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 91
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 92
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 93
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->d:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 183
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/profile/ui/h;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 98
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/l;->p:Lcom/etermax/gamescommon/profile/ui/h;

    .line 99
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->p:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/h;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->j:Landroid/widget/ImageView;

    sget v2, Lcom/etermax/h;->friend_unblock:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->m:Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->player_unblock:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->p:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/h;->isFriend()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->k:Landroid/widget/ImageView;

    sget v2, Lcom/etermax/h;->delete_friend_profile:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->n:Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->player_remove:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    :goto_1
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/etermax/gamescommon/profile/ui/l$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/profile/ui/l$1;-><init>(Lcom/etermax/gamescommon/profile/ui/l;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/etermax/gamescommon/profile/ui/l$2;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/profile/ui/l$2;-><init>(Lcom/etermax/gamescommon/profile/ui/l;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->r:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->u:Lcom/etermax/gamescommon/g;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 147
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 148
    invoke-interface {p1}, Lcom/etermax/gamescommon/profile/ui/h;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->j:Landroid/widget/ImageView;

    sget v2, Lcom/etermax/h;->friend_blocked:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->m:Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->player_block:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->k:Landroid/widget/ImageView;

    sget v2, Lcom/etermax/h;->add_friend_profile:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->n:Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->player_add_friend:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 151
    :cond_3
    if-nez v2, :cond_4

    .line 152
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/l$3;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/l$3;-><init>(Lcom/etermax/gamescommon/profile/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->l:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 162
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    :goto_3
    return-void

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->l:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 166
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->grayLighter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method public b()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 179
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/profile/ui/h;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 186
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 187
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 188
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/l;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 190
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/l;->b:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/etermax/gamescommon/profile/ui/l;->d:Landroid/widget/PopupWindow;

    .line 191
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/l;->a()V

    .line 192
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/profile/ui/l;->a(Lcom/etermax/gamescommon/profile/ui/h;)V

    .line 193
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/l;->d:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/l;->c:Landroid/view/View;

    aget v3, v0, v5

    iget-object v4, p0, Lcom/etermax/gamescommon/profile/ui/l;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Lcom/etermax/gamescommon/profile/ui/l;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 194
    return-void
.end method
