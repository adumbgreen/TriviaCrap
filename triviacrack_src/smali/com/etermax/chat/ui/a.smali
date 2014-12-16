.class public Lcom/etermax/chat/ui/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/a/b;
.implements Lcom/etermax/chat/ui/e;
.implements Lcom/etermax/chat/widget/a;


# instance fields
.field protected a:Lcom/etermax/chat/a/a;

.field b:Lcom/etermax/chat/ui/adapter/a;

.field protected c:Lcom/etermax/gamescommon/menu/a/d;

.field d:Landroid/widget/ImageButton;

.field e:Lcom/etermax/tools/widget/CustomFontEditText;

.field f:I

.field public g:Lcom/etermax/chat/ui/b;

.field h:Landroid/widget/AdapterView$OnItemLongClickListener;

.field i:Landroid/widget/AdapterView$OnItemClickListener;

.field private j:Landroid/widget/ListView;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;

.field private n:Z

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ImageButton;

.field private q:Lcom/etermax/chat/ui/d;

.field private r:Landroid/view/View$OnTouchListener;

.field private s:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->k:Ljava/lang/Boolean;

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->l:Ljava/lang/Boolean;

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->m:Ljava/lang/Boolean;

    .line 68
    iput-boolean v1, p0, Lcom/etermax/chat/ui/a;->n:Z

    .line 77
    iput v1, p0, Lcom/etermax/chat/ui/a;->f:I

    .line 215
    new-instance v0, Lcom/etermax/chat/ui/a$5;

    invoke-direct {v0, p0}, Lcom/etermax/chat/ui/a$5;-><init>(Lcom/etermax/chat/ui/a;)V

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->r:Landroid/view/View$OnTouchListener;

    .line 228
    new-instance v0, Lcom/etermax/chat/ui/a$6;

    invoke-direct {v0, p0}, Lcom/etermax/chat/ui/a$6;-><init>(Lcom/etermax/chat/ui/a;)V

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->s:Landroid/view/View$OnClickListener;

    .line 384
    new-instance v0, Lcom/etermax/chat/ui/a$7;

    invoke-direct {v0, p0}, Lcom/etermax/chat/ui/a$7;-><init>(Lcom/etermax/chat/ui/a;)V

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->h:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 397
    new-instance v0, Lcom/etermax/chat/ui/a$8;

    invoke-direct {v0, p0}, Lcom/etermax/chat/ui/a$8;-><init>(Lcom/etermax/chat/ui/a;)V

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->i:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/etermax/chat/ui/a;Lcom/etermax/chat/a/f;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/etermax/chat/ui/a;->c(Lcom/etermax/chat/a/f;I)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/chat/ui/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/etermax/chat/ui/a;->n:Z

    return v0
.end method

.method private c(Lcom/etermax/chat/a/f;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 409
    new-instance v0, Lcom/etermax/chat/a/f;

    sget-object v1, Lcom/etermax/chat/a/i;->a:Lcom/etermax/chat/a/i;

    invoke-direct {v0, v1}, Lcom/etermax/chat/a/f;-><init>(Lcom/etermax/chat/a/i;)V

    .line 410
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->d()Lcom/etermax/chat/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/h;)V

    .line 411
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->a:Lcom/etermax/chat/a/a;

    invoke-virtual {v1}, Lcom/etermax/chat/a/a;->f()Lcom/etermax/chat/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/l;)V

    .line 412
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Ljava/util/Date;)V

    .line 413
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->q:Lcom/etermax/chat/ui/d;

    if-nez v1, :cond_0

    .line 416
    invoke-static {}, Lcom/etermax/chat/ui/d;->a()Lcom/etermax/chat/ui/d;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/chat/ui/a;->q:Lcom/etermax/chat/ui/d;

    .line 417
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->q:Lcom/etermax/chat/ui/d;

    invoke-virtual {v1, p0}, Lcom/etermax/chat/ui/d;->a(Lcom/etermax/chat/ui/e;)V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->q:Lcom/etermax/chat/ui/d;

    invoke-virtual {v1, p2}, Lcom/etermax/chat/ui/d;->a(I)V

    .line 420
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->q:Lcom/etermax/chat/ui/d;

    invoke-virtual {v1, v0}, Lcom/etermax/chat/ui/d;->a(Lcom/etermax/chat/a/f;)V

    .line 421
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->q:Lcom/etermax/chat/ui/d;

    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/chat/ui/d;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 422
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .parameter

    .prologue
    .line 276
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 200
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 201
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->k:Ljava/lang/Boolean;

    .line 202
    return-void
.end method

.method public a(Lcom/etermax/chat/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontEditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->a:Lcom/etermax/chat/a/a;

    invoke-virtual {v0, p1}, Lcom/etermax/chat/a/a;->b(Lcom/etermax/chat/a/f;)V

    .line 297
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->g()V

    .line 298
    return-void
.end method

.method public a(Lcom/etermax/chat/a/f;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->h()V

    .line 441
    invoke-virtual {p0, p1}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/a/f;)V

    .line 442
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->a:Lcom/etermax/chat/a/a;

    invoke-virtual {v0, p2}, Lcom/etermax/chat/a/a;->a(I)V

    .line 443
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->b:Lcom/etermax/chat/ui/adapter/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/adapter/a;->notifyDataSetChanged()V

    .line 444
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->p:Landroid/widget/ImageButton;

    sget v1, Lcom/etermax/h;->icon_chat_sticker:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iput-boolean v2, p0, Lcom/etermax/chat/ui/a;->n:Z

    .line 245
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->m:Ljava/lang/Boolean;

    .line 246
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 209
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->k:Ljava/lang/Boolean;

    .line 210
    return-void
.end method

.method public b(Lcom/etermax/chat/a/f;)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 428
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 430
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 433
    const-string v1, "chatMessage"

    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method public b(Lcom/etermax/chat/a/f;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->a:Lcom/etermax/chat/a/a;

    invoke-virtual {v0, p2}, Lcom/etermax/chat/a/a;->a(I)V

    .line 454
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->b:Lcom/etermax/chat/ui/adapter/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/adapter/a;->notifyDataSetChanged()V

    .line 455
    return-void
.end method

.method public c(Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/a/f;)V

    .line 449
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/CustomFontEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/CustomFontEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    new-instance v0, Lcom/etermax/chat/a/f;

    sget-object v1, Lcom/etermax/chat/a/i;->a:Lcom/etermax/chat/a/i;

    invoke-direct {v0, v1}, Lcom/etermax/chat/a/f;-><init>(Lcom/etermax/chat/a/i;)V

    .line 287
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->a:Lcom/etermax/chat/a/a;

    invoke-virtual {v1}, Lcom/etermax/chat/a/a;->f()Lcom/etermax/chat/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/l;)V

    .line 288
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Ljava/util/Date;)V

    .line 289
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    invoke-virtual {v1}, Lcom/etermax/tools/widget/CustomFontEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/a/f;)V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 306
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 307
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 308
    const/16 v1, 0xd2

    invoke-virtual {p0, v1}, Lcom/etermax/chat/ui/a;->a(I)I

    move-result v1

    .line 313
    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 314
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->p:Landroid/widget/ImageButton;

    sget v1, Lcom/etermax/h;->icon_chat_keyboard:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 315
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 316
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->m:Ljava/lang/Boolean;

    .line 318
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->k:Ljava/lang/Boolean;

    .line 319
    return-void

    .line 310
    :cond_1
    const/16 v1, 0xfa

    invoke-virtual {p0, v1}, Lcom/etermax/chat/ui/a;->a(I)I

    move-result v1

    goto :goto_0
.end method

.method public e_()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/CustomFontEditText;->requestFocus()Z

    .line 253
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 254
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 255
    const/16 v0, 0xbe

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/a;->a(I)I

    move-result v0

    move v1, v0

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 261
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 262
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->p:Landroid/widget/ImageButton;

    sget v2, Lcom/etermax/h;->icon_chat_keyboard:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 263
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_0
    iput-boolean v3, p0, Lcom/etermax/chat/ui/a;->n:Z

    .line 271
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->m:Ljava/lang/Boolean;

    .line 272
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/a;->a(Landroid/view/View;)V

    .line 273
    return-void

    .line 257
    :cond_1
    const/16 v0, 0xfa

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/a;->a(I)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public f_()V
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->g()V

    .line 324
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->k:Ljava/lang/Boolean;

    .line 325
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->b()V

    .line 326
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/etermax/chat/ui/a;->a:Lcom/etermax/chat/a/a;

    invoke-virtual {v1}, Lcom/etermax/chat/a/a;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 331
    return-void
.end method

.method public g_()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->b:Lcom/etermax/chat/ui/adapter/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/adapter/a;->b()V

    .line 359
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/chat/ui/a;->f:I

    .line 366
    return-void
.end method

.method protected j()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 372
    iget-object v2, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 373
    if-nez v2, :cond_0

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/etermax/chat/ui/a;->b:Lcom/etermax/chat/ui/adapter/a;

    invoke-virtual {v2}, Lcom/etermax/chat/ui/adapter/a;->getCount()I

    move-result v2

    iget v3, p0, Lcom/etermax/chat/ui/a;->f:I

    if-eq v2, v3, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->g()V

    .line 378
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->b:Lcom/etermax/chat/ui/adapter/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/adapter/a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/etermax/chat/ui/a;->f:I

    .line 382
    :goto_1
    return-void

    .line 373
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    sget v0, Lcom/etermax/k;->fragment_chat:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 90
    sget v0, Lcom/etermax/i;->chat_root:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;

    .line 91
    invoke-virtual {v0, p0}, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;->a(Lcom/etermax/chat/widget/a;)V

    .line 93
    sget v0, Lcom/etermax/i;->message_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->a:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->b()Lcom/etermax/chat/ui/adapter/a;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->b:Lcom/etermax/chat/ui/adapter/a;

    .line 96
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/etermax/chat/ui/a;->b:Lcom/etermax/chat/ui/adapter/a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/etermax/chat/ui/a;->h:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/etermax/chat/ui/a;->i:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    sget v0, Lcom/etermax/i;->sticker_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->p:Landroid/widget/ImageButton;

    .line 103
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->p:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/etermax/chat/ui/a;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget v0, Lcom/etermax/i;->sticker_panel_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->o:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->b:Lcom/etermax/chat/ui/adapter/a;

    new-instance v2, Lcom/etermax/chat/ui/a$1;

    invoke-direct {v2, p0}, Lcom/etermax/chat/ui/a$1;-><init>(Lcom/etermax/chat/ui/a;)V

    invoke-virtual {v0, v2}, Lcom/etermax/chat/ui/adapter/a;->a(Lcom/etermax/chat/ui/adapter/b;)V

    .line 122
    iput v3, p0, Lcom/etermax/chat/ui/a;->f:I

    .line 125
    sget v0, Lcom/etermax/i;->input_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontEditText;

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    .line 126
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/CustomFontEditText;->setImeOptions(I)V

    .line 127
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/CustomFontEditText;->setSingleLine()V

    .line 129
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    iget-object v2, p0, Lcom/etermax/chat/ui/a;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/CustomFontEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    new-instance v2, Lcom/etermax/chat/ui/a$2;

    invoke-direct {v2, p0}, Lcom/etermax/chat/ui/a$2;-><init>(Lcom/etermax/chat/ui/a;)V

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/CustomFontEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 144
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    new-instance v2, Lcom/etermax/chat/ui/a$3;

    invoke-direct {v2, p0}, Lcom/etermax/chat/ui/a$3;-><init>(Lcom/etermax/chat/ui/a;)V

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/CustomFontEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 161
    sget v0, Lcom/etermax/i;->btn_right:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->d:Landroid/widget/ImageButton;

    .line 162
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->d:Landroid/widget/ImageButton;

    new-instance v2, Lcom/etermax/chat/ui/a$4;

    invoke-direct {v2, p0}, Lcom/etermax/chat/ui/a$4;-><init>(Lcom/etermax/chat/ui/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    if-eqz p3, :cond_0

    .line 170
    const-string v0, "stickerPanelStateVisible"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iput-boolean v4, p0, Lcom/etermax/chat/ui/a;->n:Z

    .line 172
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/a;->l:Ljava/lang/Boolean;

    .line 175
    :cond_0
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->b:Lcom/etermax/chat/ui/adapter/a;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/ui/adapter/a;->a(Lcom/etermax/chat/ui/adapter/b;)V

    .line 181
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 183
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 352
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->a:Lcom/etermax/chat/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/a;->a(Lcom/etermax/chat/a/b;)V

    .line 353
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 336
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->a:Lcom/etermax/chat/a/a;

    invoke-virtual {v0, p0}, Lcom/etermax/chat/a/a;->a(Lcom/etermax/chat/a/b;)V

    .line 338
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->e_()V

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/etermax/chat/ui/a;->j:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/a;->b(Landroid/view/View;)V

    .line 347
    :cond_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/chat/ui/a;->b()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    const-string v0, "stickerPanelStateVisible"

    iget-boolean v1, p0, Lcom/etermax/chat/ui/a;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    return-void
.end method
