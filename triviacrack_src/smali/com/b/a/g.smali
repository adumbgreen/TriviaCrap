.class Lcom/b/a/g;
.super Lcom/b/a/d;
.source "SourceFile"


# static fields
.field private static final p:Landroid/content/UriMatcher;


# instance fields
.field final o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/b/a/g;->p:Landroid/content/UriMatcher;

    .line 52
    sget-object v0, Lcom/b/a/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/b/a/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/b/a/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/photo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/b/a/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/b/a/g;->p:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "display_photo/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/b/a/d;-><init>(Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    .line 64
    iput-object p1, p0, Lcom/b/a/g;->o:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-static {p2}, Lcom/b/a/g;->c(Lcom/b/a/ai;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 110
    invoke-static {v1}, Lcom/b/a/g;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/b/a/g;->n()Ljava/io/InputStream;

    move-result-object v2

    .line 113
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {v2}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    .line 117
    iget v2, p2, Lcom/b/a/ai;->f:I

    iget v3, p2, Lcom/b/a/ai;->g:I

    invoke-static {v2, v3, v1}, Lcom/b/a/g;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 119
    :cond_1
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method private n()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/b/a/g;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/b/a/g;->i()Lcom/b/a/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/b/a/ai;->c:Landroid/net/Uri;

    .line 84
    sget-object v2, Lcom/b/a/g;->p:Landroid/content/UriMatcher;

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :pswitch_0
    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 92
    :cond_0
    :pswitch_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 93
    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {v1, v0}, Lcom/b/a/h;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/b/a/g;->n()Ljava/io/InputStream;

    move-result-object v1

    .line 71
    invoke-direct {p0, v1, p1}, Lcom/b/a/g;->a(Ljava/io/InputStream;Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 73
    invoke-static {v1}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method a()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/b/a/ae;->b:Lcom/b/a/ae;

    return-object v0
.end method
